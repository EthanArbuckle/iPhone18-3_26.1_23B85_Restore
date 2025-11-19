@interface ARSceneReconstructionHandler
- (ARSceneReconstructionDelegate)delegate;
- (ARSceneReconstructionHandler)initWithSceneReconstruction:(unint64_t)a3 options:(id)a4 slamSessionHandle:(CV3DSLAMSession *)a5;
- (BOOL)_canReconfigureExistingSessionForSceneReconstruction:(unint64_t)a3 options:(id)a4;
- (BOOL)_configureMeshingConfiguration:(CV3DReconMeshingConfiguration *)a3 error:(id *)a4;
- (BOOL)_lockAndExecuteBlock:(id)a3;
- (BOOL)_lockAndExecuteCFErrorBlockWithErrorMessage:(id)a3 cfErrorBlock:(id)a4 failSession:(BOOL)a5;
- (BOOL)_lockAndExecuteNSErrorBlock:(id)a3;
- (BOOL)_reconfigureSession:(CV3DReconSession *)a3 error:(id *)a4;
- (BOOL)_recreateReconstructionSessionWithError:(id *)a3;
- (BOOL)queryOccupancyWithPoints:(id)a3 callback:(id)a4;
- (__CVBuffer)postProcessConfidenceBuffer:(__CVBuffer *)a3 fromSegmentationData:(id)a4;
- (id).cxx_construct;
- (int64_t)_reconfigureSessionAndHandleError;
- (int64_t)_recreateSessionAndHandleError;
- (int64_t)reconfigureSceneReconstruction:(unint64_t)a3 options:(id)a4;
- (uint64_t)bufferSlamState:(uint64_t)a1;
- (void)_didReceiveKeyframeListUpdateCallbackWithKeyframeList:(CV3DReconKeyframeList *)a3 timestamp:(double)a4 error:(__CFError *)a5;
- (void)_didReceiveMeshListUpdateCallbackWithMeshList:(CV3DReconMeshList *)a3 timestamp:(double)a4 error:(__CFError *)a5;
- (void)_setupSLAMStateBuffering;
- (void)bufferSlamState:(CV3DSLAMStateContext *)a3;
- (void)bufferSlamState:(std::__shared_weak_count *)a1;
- (void)dealloc;
- (void)failWithError:(id)a3;
- (void)handleCFError:(__CFError *)a3 withErrorMessage:(id)a4 failSession:(BOOL)a5;
- (void)meshPlaneHarmonizationShouldEnable:(BOOL)a3;
- (void)pause;
- (void)processPlaneList:(CV3DPlaneDetectionPlaneList *)a3;
- (void)pushDepth:(id)a3 semanticSegmentation:(id)a4 personSegmentation:(id)a5 pose:(id)a6;
- (void)reset;
- (void)start;
- (void)swapSlamStateBuffers;
@end

@implementation ARSceneReconstructionHandler

- (ARSceneReconstructionHandler)initWithSceneReconstruction:(unint64_t)a3 options:(id)a4 slamSessionHandle:(CV3DSLAMSession *)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ARSceneReconstructionHandler;
  v10 = [(ARSceneReconstructionHandler *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_sessionActivated = 0;
    v10->_sceneReconstruction = a3;
    objc_storeStrong(&v10->_options, a4);
    v11->_slamSessionHandle = a5;
    CV3DSLAMSessionRetain();
    v11->_slamStateBufferBackLock._os_unfair_lock_opaque = 0;
    v11->_reconstructionSessionLock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (void)bufferSlamState:(CV3DSLAMStateContext *)a3
{
  CV3DSLAMStateRetain();
  v4 = a3;
  operator new();
}

- (void)swapSlamStateBuffers
{
  v17 = *MEMORY[0x1E69E9840];
  p_slamStateBufferFront = &self->_slamStateBufferFront;
  if (self->_slamStateBufferFront.__begin_ != self->_slamStateBufferFront.__end_)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v4 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v5 = _ARLogTechnique();
    v6 = v5;
    if (v4 == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v13 = 138543618;
        v14 = v8;
        v15 = 2048;
        v16 = self;
        _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unexpected non-empty slam state buffer; discarding...", &v13, 0x16u);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unexpected non-empty slam state buffer; discarding...", &v13, 0x16u);
    }

    std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](p_slamStateBufferFront);
  }

  os_unfair_lock_lock_with_options();
  v11 = *&self->_slamStateBufferFront.__begin_;
  *&self->_slamStateBufferFront.__begin_ = *&self->_slamStateBufferBack.__begin_;
  *&self->_slamStateBufferBack.__begin_ = v11;
  cap = self->_slamStateBufferFront.__cap_;
  self->_slamStateBufferFront.__cap_ = self->_slamStateBufferBack.__cap_;
  self->_slamStateBufferBack.__cap_ = cap;
  os_unfair_lock_unlock(&self->_slamStateBufferBackLock);
}

- (BOOL)_recreateReconstructionSessionWithError:(id *)a3
{
  v98 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  CV3DReconSessionRelease();
  self->_reconstructionSession = 0;
  v91 = 0;
  sceneReconstruction = self->_sceneReconstruction;
  if ((sceneReconstruction & 0x80) != 0)
  {
    v6 = CV3DReconSessionConfigurationCreateWithPrivatePreset();
    if (sceneReconstruction & 1 | ((sceneReconstruction & 8) != 0))
    {
      [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
    }
  }

  else
  {
    v6 = CV3DReconSessionConfigurationCreateWithPrivatePreset();
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v88 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke;
  v89 = &__block_descriptor_40_e5_v8__0l;
  v90 = v6;
  if (~self->_sceneReconstruction & 0x11) != 0 && (sceneReconstruction & 0x80) == 0 && (self->_sceneReconstruction & 0x18) != 0x18 || (CV3DReconSessionConfigurationAddPrivateMappingAttribute())
  {
    v8 = CV3DReconSlamAdapterCreate();
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v84 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_2;
    v85 = &__block_descriptor_40_e5_v8__0l;
    v86 = v8;
    objc_initWeak(&location, self);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_3;
    v80[3] = &unk_1E817C9F8;
    objc_copyWeak(&v81, &location);
    v63 = MEMORY[0x1C691B4C0](v80);
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_4;
    v78[3] = &unk_1E817CA20;
    objc_copyWeak(&v79, &location);
    v62 = MEMORY[0x1C691B4C0](v78);
    if (CV3DReconSlamAdapterSetAnchoringCallbacks())
    {
      if (CV3DReconSessionConfigurationSetSlamAdapter())
      {
        if (CV3DReconSessionConfigurationAddMappingAttribute())
        {
          [(ARSceneReconstructionOptions *)self->_options lowQosSchedulingEnabled];
          if (CV3DReconSessionConfigurationEnableLowQosScheduling())
          {
            [(ARSceneReconstructionOptions *)self->_options minDepthUncertaintyThreshold];
            GetConfidenceFromUncertainty(v9);
            v11 = v10;
            if ((CV3DReconSessionConfigurationSetMinDepthConfidence() & 1) == 0)
            {
              v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error setting reconstruction session minimum depth confidence to %f", v11];
              ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, v19);
              goto LABEL_35;
            }

            if ((sceneReconstruction & 1) == 0)
            {
LABEL_60:
              if ((sceneReconstruction & 0x80) == 0)
              {
                goto LABEL_78;
              }

              v35 = CV3DReconMeshingConfigurationCreateWithPrivatePreset();
              if (!v35)
              {
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error creating meshing configuration");
                goto LABEL_31;
              }

              v70[0] = MEMORY[0x1E69E9820];
              v70[1] = 3221225472;
              v71 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_38;
              v72 = &__block_descriptor_40_e5_v8__0l;
              v73 = v35;
              if ([(ARSceneReconstructionHandler *)self _configureMeshingConfiguration:v35 error:a3])
              {
                if (CV3DReconMeshingConfigurationAddPrivateMeshIntegrationAttribute())
                {
                  if (CV3DReconSessionConfigurationSetMeshingConfiguration())
                  {
                    v36 = 1;
                    goto LABEL_77;
                  }

                  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error setting meshing configuration");
                }

                else
                {
                  if (ARShouldUseLogTypeError(void)::onceToken != -1)
                  {
                    [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
                  }

                  v37 = ARShouldUseLogTypeError(void)::internalOSVersion;
                  v38 = _ARLogGeneral();
                  if (v37 == 1)
                  {
                    v39 = v38;
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      v40 = objc_opt_class();
                      v41 = NSStringFromClass(v40);
                      *buf = 138543874;
                      v93 = v41;
                      v94 = 2048;
                      v95 = self;
                      v96 = 2112;
                      v97 = v91;
                      loga = v41;
                      _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v39 = v38;
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      v42 = objc_opt_class();
                      v43 = NSStringFromClass(v42);
                      *buf = 138543874;
                      v93 = v43;
                      v94 = 2048;
                      v95 = self;
                      v96 = 2112;
                      v97 = v91;
                      logb = v43;
                      _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                    }
                  }
                }
              }

              v36 = 0;
LABEL_77:
              v71(v70);
              if ((v36 & 1) == 0)
              {
                goto LABEL_31;
              }

LABEL_78:
              if ((CV3DReconSessionConfigurationEnableSynchronousScheduling() & 1) == 0)
              {
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error setting scheduling mode in reconstruction session configuration");
                goto LABEL_31;
              }

              [(ARSceneReconstructionOptions *)self->_options deterministicMode];
              if (CV3DReconSessionConfigurationEnableDeterministicBehavior())
              {
                v44 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.sceneReconstruction.waitTillVIOIsStable"];
                if (CV3DReconSessionConfigurationEnableConsumeVIOMetadata())
                {
                  v45 = CV3DReconSessionCreateWithConfiguration();
                  v46 = v45;
                  if (v45)
                  {
                    v66[0] = MEMORY[0x1E69E9820];
                    v66[1] = 3221225472;
                    v67 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_54;
                    v68 = &__block_descriptor_40_e5_v8__0l;
                    v69 = v45;
                    if ((sceneReconstruction & 0x81) != 0 && CV3DReconSessionHasMeshingCapability())
                    {
                      v64[1] = MEMORY[0x1E69E9820];
                      v64[2] = 3221225472;
                      v64[3] = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_2_55;
                      v64[4] = &unk_1E817CA48;
                      objc_copyWeak(&v65, &location);
                      if ((CV3DReconSessionAddOnMeshListUpdateCallback() & 1) == 0)
                      {
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error setting meshing list update callback");
                        objc_destroyWeak(&v65);
                        goto LABEL_110;
                      }

                      objc_destroyWeak(&v65);
                    }

                    if ((sceneReconstruction & 8) != 0 && CV3DReconSessionHasKeyframingCapability())
                    {
                      objc_copyWeak(v64, &location);
                      if ((CV3DReconSessionAddOnKeyframeListUpdateCallback() & 1) == 0)
                      {
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error setting keyframe list update callback");
                        objc_destroyWeak(v64);
                        goto LABEL_110;
                      }

                      objc_destroyWeak(v64);
                    }

                    if ([(ARSceneReconstructionHandler *)self _reconfigureSession:v46 error:a3])
                    {
                      if ((sceneReconstruction & 0x80) != 0 && (CV3DReconSessionEnablePerFrameMeshColor() & 1) == 0)
                      {
                        v54 = v91;
                        v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error enabling per-frame mesh color"];
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v54, v55);
                      }

                      else
                      {
                        if (sceneReconstruction & 1) == 0 || (v47 = self->_sceneReconstruction & 0x11, (CV3DReconSessionEnablePerFrameMeshColor()))
                        {
                          CV3DReconSessionRetain();
                          self->_reconstructionSession = v46;
                          v7 = 1;
LABEL_111:
                          (v67)(v66);
                          goto LABEL_32;
                        }

                        v56 = v91;
                        v57 = @"disabling";
                        if (v47 == 17)
                        {
                          v57 = @"enabling";
                        }

                        v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@ per-frame mesh color", v57];
                        ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v56, v58);
                      }
                    }

LABEL_110:
                    v7 = 0;
                    goto LABEL_111;
                  }

                  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error creating reconstruction session");
LABEL_31:
                  v7 = 0;
LABEL_32:

                  objc_destroyWeak(&v79);
                  objc_destroyWeak(&v81);
                  objc_destroyWeak(&location);
                  v84(v83);
                  goto LABEL_33;
                }

                v52 = v91;
                v53 = "disabling";
                if (v44)
                {
                  v53 = "enabling";
                }

                v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %s consume VIO metadata in reconstruction session configuration", v53];
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v52, v19);
              }

              else
              {
                v48 = v91;
                v49 = MEMORY[0x1E696AEC0];
                v50 = [(ARSceneReconstructionOptions *)self->_options deterministicMode];
                v51 = "disabling";
                if (v50)
                {
                  v51 = "enabling";
                }

                v19 = [v49 stringWithFormat:@"Error %s deterministic mode in reconstruction session configuration", v51];
                ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v48, v19);
              }

LABEL_35:

              goto LABEL_31;
            }

            v12 = CV3DReconMeshingConfigurationCreateWithPrivatePreset();
            if (!v12)
            {
              ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error creating meshing configuration");
              goto LABEL_31;
            }

            v74[0] = MEMORY[0x1E69E9820];
            v74[1] = 3221225472;
            v75 = __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_5;
            v76 = &__block_descriptor_40_e5_v8__0l;
            v77 = v12;
            if (![(ARSceneReconstructionHandler *)self _configureMeshingConfiguration:v12 error:a3])
            {
              goto LABEL_58;
            }

            if ((CV3DReconMeshingConfigurationAddMeshIntegrationAttribute() & 1) == 0)
            {
              if (ARShouldUseLogTypeError(void)::onceToken != -1)
              {
                [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
              }

              v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
              v21 = _ARLogGeneral();
              log = v21;
              if (v20 == 1)
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = objc_opt_class();
                  v23 = NSStringFromClass(v22);
                  *buf = 138543874;
                  v93 = v23;
                  v94 = 2048;
                  v95 = self;
                  v96 = 2112;
                  v97 = v91;
                  _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding semantics to reconstruction session meshing configuration: %@", buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                *buf = 138543874;
                v93 = v26;
                v94 = 2048;
                v95 = self;
                v96 = 2112;
                v97 = v91;
                _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding semantics to reconstruction session meshing configuration: %@", buf, 0x20u);
              }

              goto LABEL_57;
            }

            if ((~self->_sceneReconstruction & 0x11) != 0)
            {
              if ((CV3DReconMeshingConfigurationRemoveMeshIntegrationAttribute() & 1) == 0)
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
                }

                v27 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v28 = _ARLogGeneral();
                log = v28;
                if (v27 == 1)
                {
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    v29 = objc_opt_class();
                    v30 = NSStringFromClass(v29);
                    *buf = 138543874;
                    v93 = v30;
                    v94 = 2048;
                    v95 = self;
                    v96 = 2112;
                    v97 = v91;
                    _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error removing color to reconstruction session meshing configuration: %@", buf, 0x20u);
                  }
                }

                else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  v33 = objc_opt_class();
                  v34 = NSStringFromClass(v33);
                  *buf = 138543874;
                  v93 = v34;
                  v94 = 2048;
                  v95 = self;
                  v96 = 2112;
                  v97 = v91;
                  _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error removing color to reconstruction session meshing configuration: %@", buf, 0x20u);
                }

                goto LABEL_57;
              }
            }

            else if ((CV3DReconMeshingConfigurationAddPrivateMeshIntegrationAttribute() & 1) == 0)
            {
              if (ARShouldUseLogTypeError(void)::onceToken != -1)
              {
                [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
              }

              v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
              v14 = _ARLogGeneral();
              log = v14;
              if (v13 == 1)
              {
                if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                {
                  v15 = objc_opt_class();
                  v16 = NSStringFromClass(v15);
                  *buf = 138543874;
                  v93 = v16;
                  v94 = 2048;
                  v95 = self;
                  v96 = 2112;
                  v97 = v91;
                  _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                *buf = 138543874;
                v93 = v32;
                v94 = 2048;
                v95 = self;
                v96 = 2112;
                v97 = v91;
                _os_log_impl(&dword_1C241C000, log, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding color to reconstruction session meshing configuration: %@", buf, 0x20u);
              }

LABEL_57:

              goto LABEL_58;
            }

            if (CV3DReconSessionConfigurationSetMeshingConfiguration())
            {
              v24 = 1;
              goto LABEL_59;
            }

            ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error setting meshing configuration");
LABEL_58:
            v24 = 0;
LABEL_59:
            v75(v74);
            if ((v24 & 1) == 0)
            {
              goto LABEL_31;
            }

            goto LABEL_60;
          }

          v17 = @"Error setting reconstruction session QoS scheduling mode";
        }

        else
        {
          v17 = @"Error adding reconstruction session configuration mapping attribute: semantic";
        }
      }

      else
      {
        v17 = @"Error setting reconstruction session configuration slam adapter";
      }
    }

    else
    {
      v17 = @"Error setting reconstruction session configuration slam adapter callbacks";
    }

    ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, v17);
    goto LABEL_31;
  }

  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a3, v91, @"Error enabling color attribute");
  v7 = 0;
LABEL_33:
  v88(v87);
  return v7;
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (CV3DSLAMSessionAddAnchor() & 1) == 0)
  {
    [WeakRetained handleCFError:0 withErrorMessage:@"Error adding anchor"];
  }
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (CV3DSLAMSessionRemoveAnchor() & 1) == 0)
  {
    [WeakRetained handleCFError:0 withErrorMessage:@"Error removing anchor"];
  }
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_2_55(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveMeshListUpdateCallbackWithMeshList:a2 timestamp:a3 error:a4];
}

void __72__ARSceneReconstructionHandler__recreateReconstructionSessionWithError___block_invoke_3_60(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didReceiveKeyframeListUpdateCallbackWithKeyframeList:a2 timestamp:a3 error:a4];
}

- (void)_setupSLAMStateBuffering
{
  if (!self->_slamStateCbID.__engaged_)
  {
    objc_initWeak(&location, self);
    v5 = 0;
    objc_copyWeak(&v4, &location);
    v3 = CV3DSLAMSessionRegisterNewStateBlock();
    if (v3)
    {
      self->_slamStateCbID.var0.__val_ = v3;
      self->_slamStateCbID.__engaged_ = 1;
    }

    else
    {
      [(ARSceneReconstructionHandler *)self handleCFError:v5 withErrorMessage:@"Error setting slam state callback"];
    }

    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __56__ARSceneReconstructionHandler__setupSLAMStateBuffering__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bufferSlamState:a2];
}

- (BOOL)_canReconfigureExistingSessionForSceneReconstruction:(unint64_t)a3 options:(id)a4
{
  v6 = a4;
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  v7 = self->_reconstructionSession && [(ARSceneReconstructionOptions *)self->_options isEqual:v6]&& (self->_sceneReconstruction ^ a3) == 2;

  return v7;
}

- (BOOL)_reconfigureSession:(CV3DReconSession *)a3 error:(id *)a4
{
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  if ((self->_sceneReconstruction & 1) == 0)
  {
    return 1;
  }

  v7 = self->_sceneReconstruction & 3;
  if (CV3DReconSessionEnablePerFrameMeshSemantics())
  {
    if (CV3DReconSessionEnablePerFrameMeshColor())
    {
      return 1;
    }

    v8 = @"disabling";
    if (v7 == 3)
    {
      v8 = @"enabling";
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@ per-frame mesh color", v8];
    ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a4, 0, v9);
  }

  else
  {
    v10 = @"disabling";
    if (v7 == 3)
    {
      v10 = @"enabling";
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %@ per-frame mesh semantics", v10];
    ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a4, 0, v9);
  }

  return 0;
}

- (BOOL)_configureMeshingConfiguration:(CV3DReconMeshingConfiguration *)a3 error:(id *)a4
{
  os_unfair_lock_assert_owner(&self->_reconstructionSessionLock);
  ARVoxelSizeForSceneReconstructionOptions(self->_options);
  if (CV3DReconMeshingConfigurationSetVoxelSize())
  {
    ARBucketsOrderOfMagnitudeForSceneReconstructionOptions(self->_options);
    if (CV3DReconMeshingConfigurationSetBucketsOrderOfMagnitude())
    {
      if (ARDeviceIsiPad() && (CV3DReconMeshingConfigurationSetMinMeshingPeriod() & 1) == 0)
      {
        v6 = @"Error setting meshing configuration minimum meshing period on iPad";
      }

      else
      {
        [(ARSceneReconstructionOptions *)self->_options enableOccupancyMapping];
        if (CV3DReconMeshingConfigurationEnableOccupancyMapping())
        {
          self->_occupancyMappingEnabled = CV3DReconMeshingConfigurationHasOccupancyMapping();
          return 1;
        }

        v6 = @"Error enabling occupancy mapping";
      }
    }

    else
    {
      v6 = @"Error setting meshing configuration buckets order of magnitude";
    }
  }

  else
  {
    v6 = @"Error setting meshing configuration voxel size";
  }

  ARSetNSErrorByWrappingCFErrorWithFailureReasonMessage(a4, 0, v6);
  return 0;
}

- (void)_didReceiveMeshListUpdateCallbackWithMeshList:(CV3DReconMeshList *)a3 timestamp:(double)a4 error:(__CFError *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v10 = _ARLogTechnique();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = [(__CFError *)a5 localizedFailureReason];
        v20 = 138543874;
        v21 = v13;
        v22 = 2048;
        v23 = self;
        v24 = 2112;
        v25 = v14;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error received in mesh list update callback: %@", &v20, 0x20u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [(__CFError *)a5 localizedFailureReason];
      v20 = 138543874;
      v21 = v18;
      v22 = 2048;
      v23 = self;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error received in mesh list update callback: %@", &v20, 0x20u);
    }

    kdebug_trace();
    CV3DReconMeshListRelease();
  }

  else
  {
    CV3DReconMeshListGetCount();
    kdebug_trace();
    v15 = [(ARSceneReconstructionHandler *)self delegate];

    if (v15)
    {
      v16 = [(ARSceneReconstructionHandler *)self delegate];
      [v16 sceneReconstructionHandler:self didOutputMeshList:a3 withTimestamp:a4];
    }

    else
    {
      CV3DReconMeshListRelease();
    }
  }
}

- (void)_didReceiveKeyframeListUpdateCallbackWithKeyframeList:(CV3DReconKeyframeList *)a3 timestamp:(double)a4 error:(__CFError *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogTechnique();
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [(__CFError *)a5 localizedFailureReason];
        v20 = 138543874;
        v21 = v12;
        v22 = 2048;
        v23 = self;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error received in keyframe list update callback: %@", &v20, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = [(__CFError *)a5 localizedFailureReason];
      v20 = 138543874;
      v21 = v18;
      v22 = 2048;
      v23 = self;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error received in keyframe list update callback: %@", &v20, 0x20u);
    }

    goto LABEL_12;
  }

  v15 = [(ARSceneReconstructionHandler *)self delegate];

  if (!v15)
  {
LABEL_12:
    CV3DReconKeyframeListRelease();
    goto LABEL_13;
  }

  v16 = [(ARSceneReconstructionHandler *)self delegate];
  [v16 sceneReconstructionHandler:self didOutputKeyframeList:a3 withTimestamp:a4];

LABEL_13:
}

- (void)start
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__ARSceneReconstructionHandler_start__block_invoke;
  v5[3] = &unk_1E817CA98;
  v5[4] = self;
  if (![(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:v5]|| ([(ARSceneReconstructionHandler *)self _setupSLAMStateBuffering], v4[0] = MEMORY[0x1E69E9820], v4[1] = 3221225472, v4[2] = __37__ARSceneReconstructionHandler_start__block_invoke_2, v4[3] = &unk_1E817CAC0, v4[4] = self, [(ARSceneReconstructionHandler *)self _lockAndExecuteNSErrorBlock:v4]))
  {
    if (!self->_sessionActivated)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __37__ARSceneReconstructionHandler_start__block_invoke_3;
      v3[3] = &unk_1E817CAE8;
      v3[4] = self;
      self->_sessionActivated = [(ARSceneReconstructionHandler *)self _lockAndExecuteCFErrorBlockWithErrorMessage:@"Error enabling reconstruction session" cfErrorBlock:v3];
    }
  }
}

- (int64_t)reconfigureSceneReconstruction:(unint64_t)a3 options:(id)a4
{
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_sceneReconstruction == a3 && [(ARSceneReconstructionOptions *)self->_options isEqual:v7])
  {
    v8 = 1;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__ARSceneReconstructionHandler_reconfigureSceneReconstruction_options___block_invoke;
    v12[3] = &unk_1E817CB10;
    v12[4] = self;
    v14 = a3;
    v13 = v7;
    v9 = [(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:v12];
    self->_sceneReconstruction = a3;
    objc_storeStrong(&self->_options, a4);
    if (v9)
    {
      v10 = [(ARSceneReconstructionHandler *)self _reconfigureSessionAndHandleError];
    }

    else
    {
      v10 = [(ARSceneReconstructionHandler *)self _recreateSessionAndHandleError];
    }

    v8 = v10;
  }

  return v8;
}

- (int64_t)_reconfigureSessionAndHandleError
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__ARSceneReconstructionHandler__reconfigureSessionAndHandleError__block_invoke;
  v4[3] = &unk_1E817CAC0;
  v4[4] = self;
  if ([(ARSceneReconstructionHandler *)self _lockAndExecuteNSErrorBlock:v4])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_recreateSessionAndHandleError
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_sessionActivated)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__ARSceneReconstructionHandler__recreateSessionAndHandleError__block_invoke;
    v6[3] = &unk_1E817CAE8;
    v6[4] = self;
    if (![(ARSceneReconstructionHandler *)self _lockAndExecuteCFErrorBlockWithErrorMessage:@"Error disabling reconstruction session" cfErrorBlock:v6])
    {
      return 0;
    }

    self->_sessionActivated = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __62__ARSceneReconstructionHandler__recreateSessionAndHandleError__block_invoke_2;
    v5[3] = &unk_1E817CAE8;
    v5[4] = self;
    if (![(ARSceneReconstructionHandler *)self _lockAndExecuteCFErrorBlockWithErrorMessage:@"Error waiting on reconstruction session" cfErrorBlock:v5 failSession:0])
    {
      return 0;
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__ARSceneReconstructionHandler__recreateSessionAndHandleError__block_invoke_3;
  v4[3] = &unk_1E817CAC0;
  v4[4] = self;
  if ([(ARSceneReconstructionHandler *)self _lockAndExecuteNSErrorBlock:v4])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)pause
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_sessionActivated)
  {
    os_unfair_lock_lock(&self->_reconstructionSessionLock);
    v3 = CV3DReconSessionDisable();
    os_unfair_lock_unlock(&self->_reconstructionSessionLock);
    if (v3)
    {
      self->_sessionActivated = 0;
    }

    else
    {
      [(ARSceneReconstructionHandler *)self handleCFError:0 withErrorMessage:@"Error disabling reconstruction session"];
    }
  }
}

- (void)reset
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  kdebug_trace();
  v3 = CV3DReconSessionReset();
  kdebug_trace();
  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  if ((v3 & 1) == 0)
  {
    [(ARSceneReconstructionHandler *)self handleCFError:0 withErrorMessage:@"Error resetting reconstruction session"];
  }
}

- (void)meshPlaneHarmonizationShouldEnable:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  v5 = CV3DReconSessionEnableMeshPlaneHarmony();
  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  if (v5)
  {
    v6 = _ARLogTechnique();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = "disabled";
      *buf = 138543874;
      v11 = v8;
      if (v3)
      {
        v9 = "enabled";
      }

      v12 = 2048;
      v13 = self;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Scene reconstruction plane harmonization is %s", buf, 0x20u);
    }
  }

  else
  {
    [(ARSceneReconstructionHandler *)self handleCFError:0 withErrorMessage:@"Error updating plane harmonization" failSession:0];
  }
}

- (void)pushDepth:(id)a3 semanticSegmentation:(id)a4 personSegmentation:(id)a5 pose:(id)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v54 = a4;
  v52 = a5;
  v53 = a6;
  v11 = [v53 worldTrackingState];
  v12 = [v11 state];

  if (v12 == 2)
  {
    if ([v54 maskedSemanticsSampledForDepth])
    {
      v13 = [v10 sourceImageData];
      [v13 timestamp];
      kdebug_trace();

      v14 = [v10 sourceImageData];
      [v14 cameraIntrinsics];
      v50 = v16;
      v51 = v15;
      v49 = v17;
      v18 = [v10 sourceImageData];
      [v18 imageResolution];
      v20 = v19;
      v22 = v21;
      [v10 depthBufferSize];
      ARAdjustIntrinsicsForViewportSize(v51, v50, v49, v20, v22, v23, v24);
      v48 = v25;

      [v53 visionCameraTransform];
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
      kdebug_trace();
      v26 = [v54 sourceImageData];
      [v26 timestamp];
      [v10 depthBufferSize];
      [v10 depthBufferSize];
      v27 = CV3DReconFrameBundleCreate();

      if (v27)
      {
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v64 = __87__ARSceneReconstructionHandler_pushDepth_semanticSegmentation_personSegmentation_pose___block_invoke;
        v65 = &__block_descriptor_40_e5_v8__0l;
        v66 = v27;
        *buf = 0;
        v28 = [v53 slamState];
        -[ARSceneReconstructionHandler bufferSlamState:](self, "bufferSlamState:", [v28 slamState]);

        [(ARSceneReconstructionHandler *)self swapSlamStateBuffers];
        begin = self->_slamStateBufferFront.__begin_;
        end = self->_slamStateBufferFront.__end_;
        if (begin != end)
        {
          while (1)
          {
            if (!*begin)
            {
              [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Error: unexpected null slam state" failSession:0];
              goto LABEL_35;
            }

            v31 = CV3DReconSlamMetadataCreateFromSlamState();
            if (!v31)
            {
              break;
            }

            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v60 = __87__ARSceneReconstructionHandler_pushDepth_semanticSegmentation_personSegmentation_pose___block_invoke_2;
            v61 = &__block_descriptor_40_e5_v8__0l;
            v62 = v31;
            v32 = CV3DReconFrameBundleAddSlamMetadata();
            if ((v32 & 1) == 0)
            {
              [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Error adding SLAM state to frame bundle" failSession:0];
            }

            v60(v59);
            if ((v32 & 1) == 0)
            {
              goto LABEL_35;
            }

            begin += 2;
            if (begin == end)
            {
              goto LABEL_11;
            }
          }

          [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Error: failed to convert slam state to recon slam metadata" failSession:0];
          goto LABEL_35;
        }

LABEL_11:
        std::vector<std::shared_ptr<CV3DSLAMStateContext const>>::clear[abi:ne200100](&self->_slamStateBufferFront);
        [v10 singleFrameDepthBuffer];
        if ((CV3DReconFrameBundleSetDepthImage() & 1) == 0)
        {
          [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Error setting depth image to frame bundle" failSession:0];
LABEL_35:
          v64(v63);
          goto LABEL_26;
        }

        v33 = -[ARSceneReconstructionHandler postProcessConfidenceBuffer:fromSegmentationData:](self, "postProcessConfidenceBuffer:fromSegmentationData:", [v10 singleFrameConfidenceBuffer], v52);
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v56 = __87__ARSceneReconstructionHandler_pushDepth_semanticSegmentation_personSegmentation_pose___block_invoke_3;
        v57 = &__block_descriptor_40_e5_v8__0l;
        v58 = v33;
        if ([v10 normalsBuffer] && (objc_msgSend(v10, "normalsBuffer"), (CV3DReconFrameBundleSetNormalsImage() & 1) == 0))
        {
          v45 = @"Error setting normals image to frame bundle";
        }

        else if (CV3DReconFrameBundleSetDepthConfidenceImage())
        {
          [v54 maskedSemanticsSampledForDepth];
          if (CV3DReconFrameBundleSetSemanticsImage())
          {
            sceneReconstruction = self->_sceneReconstruction;
            if (~sceneReconstruction & 0x11) != 0 && (~sceneReconstruction & 0x18) != 0 && (sceneReconstruction & 0x80) == 0 || ([v10 sourceImageData], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "pixelBuffer"), v36 = CV3DReconFrameBundleSetColorImage(), v35, (v36))
            {
              CVPixelBufferGetWidth([v10 singleFrameDepthBuffer]);
              CVPixelBufferGetHeight([v10 singleFrameDepthBuffer]);
              CVPixelBufferGetWidth([v54 maskedSemanticsSampledForDepth]);
              CVPixelBufferGetHeight([v54 maskedSemanticsSampledForDepth]);
              kdebug_trace();
              kdebug_trace();
              os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
              os_unfair_lock_lock(&self->_reconstructionSessionLock);
              [v10 timestamp];
              v46 = [v54 sourceImageData];
              [v46 timestamp];
              kdebug_trace();

              v47 = CV3DReconSessionProcessFrameBundle();
              os_unfair_lock_unlock(&self->_reconstructionSessionLock);
              kdebug_trace();
              if ((v47 & 1) == 0)
              {
                [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Error processing frame bundle" failSession:0];
              }
            }

            else
            {
              [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Error setting color image to frame bundle" failSession:0];
            }

            goto LABEL_34;
          }

          v45 = @"Error setting semantics image to frame bundle";
        }

        else
        {
          v45 = @"Error setting depth confidence image to frame bundle";
        }

        [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:v45 failSession:0, v48];
LABEL_34:
        v56(v55);
        goto LABEL_35;
      }

      v37 = _ARLogTechnique();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *buf = 138543618;
        *&buf[4] = v44;
        v68 = 2048;
        v69 = self;
        _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Error creating frame bundle, skipping pushing to spatial mapping", buf, 0x16u);
      }
    }

    else
    {
      v37 = _ARLogTechnique();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        *buf = 138543618;
        *&buf[4] = v42;
        v68 = 2048;
        v69 = self;
        _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping pushing to spatial mapping since masked semantics sampled for depth is not available", buf, 0x16u);
      }
    }
  }

  else
  {
    v37 = _ARLogTechnique();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [v53 worldTrackingState];
      *buf = 138543874;
      *&buf[4] = v39;
      v68 = 2048;
      v69 = self;
      v70 = 2048;
      v71 = [v40 state];
      _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Skipping pushing to spatial mapping since world tracking state is not normal: %ld", buf, 0x20u);
    }
  }

LABEL_26:
}

- (__CVBuffer)postProcessConfidenceBuffer:(__CVBuffer *)a3 fromSegmentationData:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (!v6 || ![v6 segmentationBuffer])
  {
    goto LABEL_32;
  }

  if (a3)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v10 = [v7 segmentationBuffer];
  v11 = v10;
  if (v10)
  {
    v12 = CVPixelBufferGetWidth(v10);
    v13 = CVPixelBufferGetHeight(v11);
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v12 != Width || v13 != Height)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v15 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v16 = _ARLogTechnique();
    v17 = v16;
    if (v15 == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v37 = 138544642;
        v38 = v19;
        v39 = 2048;
        v40 = self;
        v41 = 1024;
        v42 = v12;
        v43 = 1024;
        v44 = v13;
        v45 = 1024;
        v46 = Width;
        v47 = 1024;
        v48 = Height;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Confidence buffer and person segmentation buffer do not match size. (%d,%d) vs. (%d,%d).", &v37, 0x2Eu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v37 = 138544642;
      v38 = v34;
      v39 = 2048;
      v40 = self;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      v44 = v13;
      v45 = 1024;
      v46 = Width;
      v47 = 1024;
      v48 = Height;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Confidence buffer and person segmentation buffer do not match size. (%d,%d) vs. (%d,%d).", &v37, 0x2Eu);
    }

    v35 = CVPixelBufferRetain(a3);
    goto LABEL_33;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v21 = ARCreateCVPixelBufferFromPool(&self->_postProcessedDepthConfidencePool, PixelFormatType, self, @"Post processed confidence buffer", Width, Height);
  if (!v21)
  {
LABEL_32:
    v35 = CVPixelBufferRetain(a3);
LABEL_33:
    v21 = v35;
    goto LABEL_34;
  }

  CVPixelBufferLockBaseAddress([v7 segmentationBuffer], 1uLL);
  CVPixelBufferLockBaseAddress(v21, 0);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v21);
  v23 = CVPixelBufferGetBaseAddress(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  memcpy(BaseAddress, v23, (Height * BytesPerRow));
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  v25 = CVPixelBufferGetBytesPerRow([v7 segmentationBuffer]);
  v26 = CVPixelBufferGetBytesPerRow(v21);
  v27 = 0;
  v28 = 0;
  for (i = 0; i < CVPixelBufferGetHeight(v21); ++i)
  {
    v30 = 0;
    v31 = CVPixelBufferGetBaseAddress([v7 segmentationBuffer]) + v28;
    v32 = CVPixelBufferGetBaseAddress(v21) + v27;
    while (CVPixelBufferGetWidth(v21) > v30)
    {
      if (v31[v30])
      {
        *&v32[4 * v30] = 0;
      }

      ++v30;
    }

    v28 += v25;
    v27 += v26;
  }

  CVPixelBufferUnlockBaseAddress([v7 segmentationBuffer], 1uLL);
  CVPixelBufferUnlockBaseAddress(v21, 0);
LABEL_34:

  return v21;
}

- (void)processPlaneList:(CV3DPlaneDetectionPlaneList *)a3
{
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  v4 = CV3DReconSessionProcessPlaneList();
  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  if ((v4 & 1) == 0)
  {
    [(ARSceneReconstructionHandler *)self handleCFError:0 withErrorMessage:@"Error processing plane list" failSession:0];
  }
}

- (BOOL)queryOccupancyWithPoints:(id)a3 callback:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (self->_occupancyMappingEnabled)
  {
    *buf = 0;
    v8 = MEMORY[0x1C6919230](v6);
    os_unfair_lock_lock(&self->_reconstructionSessionLock);
    OccupancyAsync = CV3DReconSessionQueryOccupancyAsync();
    os_unfair_lock_unlock(&self->_reconstructionSessionLock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v10 = __66__ARSceneReconstructionHandler_queryOccupancyWithPoints_callback___block_invoke;
    v20 = __66__ARSceneReconstructionHandler_queryOccupancyWithPoints_callback___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0l;
    v22 = v8;
    if ((OccupancyAsync & 1) == 0)
    {
      [(ARSceneReconstructionHandler *)self handleCFError:*buf withErrorMessage:@"Failed to query occupancy map" failSession:0];
      v10 = v20;
    }

    v10(v19);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler swapSlamStateBuffers];
    }

    v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v12 = _ARLogTechnique();
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138543618;
        *&buf[4] = v15;
        v24 = 2048;
        v25 = self;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Occupancy mapping is not enabled.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543618;
      *&buf[4] = v17;
      v24 = 2048;
      v25 = self;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Occupancy mapping is not enabled.", buf, 0x16u);
    }

    OccupancyAsync = 0;
  }

  return OccupancyAsync;
}

- (void)failWithError:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v4 = [(ARSceneReconstructionHandler *)self delegate];
  [v4 sceneReconstructionHandler:self didFailWithError:v5];
}

- (void)handleCFError:(__CFError *)a3 withErrorMessage:(id)a4 failSession:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  if (a3)
  {
    v9 = _ARLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(__CFError *)a3 localizedFailureReason];
      v13 = 138544130;
      v14 = v11;
      v15 = 2048;
      v16 = self;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@: %@", &v13, 0x2Au);
    }

    if (v5)
    {
      [(ARSceneReconstructionHandler *)self failWithError:a3];
    }
  }
}

- (BOOL)_lockAndExecuteBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  os_unfair_lock_lock(&self->_reconstructionSessionLock);
  v5 = v4[2](v4);

  os_unfair_lock_unlock(&self->_reconstructionSessionLock);
  return v5;
}

- (BOOL)_lockAndExecuteNSErrorBlock:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__1;
  v35 = __Block_byref_object_dispose__1;
  v36 = 0;
  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __60__ARSceneReconstructionHandler__lockAndExecuteNSErrorBlock___block_invoke;
  v28 = &unk_1E817CB38;
  v5 = v4;
  v29 = v5;
  v30 = &v31;
  v6 = [(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:&v25];
  if (!v6)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSceneReconstructionHandler _recreateReconstructionSessionWithError:];
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v32[5] localizedFailureReason];
        v13 = [v32[5] underlyingErrors];
        v14 = [v13 firstObject];
        v15 = [v14 localizedFailureReason];
        *buf = 138544130;
        v38 = v11;
        v39 = 2048;
        v40 = self;
        v41 = 2112;
        v42 = v12;
        v43 = 2112;
        v44 = v15;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@: %@", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v32[5] localizedFailureReason];
      v19 = [v32[5] underlyingErrors];
      v20 = [v19 firstObject];
      v21 = [v20 localizedFailureReason];
      *buf = 138544130;
      v38 = v17;
      v39 = 2048;
      v40 = self;
      v41 = 2112;
      v42 = v18;
      v43 = 2112;
      v44 = v21;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@: %@", buf, 0x2Au);
    }

    v22 = [v32[5] underlyingErrors];
    v23 = [v22 firstObject];
    [(ARSceneReconstructionHandler *)self failWithError:v23];
  }

  _Block_object_dispose(&v31, 8);
  return v6;
}

uint64_t __60__ARSceneReconstructionHandler__lockAndExecuteNSErrorBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 8);
  obj = *(v2 + 40);
  v3 = (*(v1 + 16))(v1, &obj);
  objc_storeStrong((v2 + 40), obj);
  return v3;
}

- (BOOL)_lockAndExecuteCFErrorBlockWithErrorMessage:(id)a3 cfErrorBlock:(id)a4 failSession:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_not_owner(&self->_reconstructionSessionLock);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __101__ARSceneReconstructionHandler__lockAndExecuteCFErrorBlockWithErrorMessage_cfErrorBlock_failSession___block_invoke;
  v16 = &unk_1E817CB38;
  v10 = v9;
  v17 = v10;
  v18 = &v19;
  v11 = [(ARSceneReconstructionHandler *)self _lockAndExecuteBlock:&v13];
  if (!v11)
  {
    [(ARSceneReconstructionHandler *)self handleCFError:v20[3] withErrorMessage:v8 failSession:v5, v13, v14, v15, v16];
  }

  _Block_object_dispose(&v19, 8);
  return v11;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_postProcessedDepthConfidencePool);
  v4 = 0;
  if (self->_slamStateCbID.__engaged_ && (CV3DSLAMSessionDeregisterNewStateBlock() & 1) == 0)
  {
    [(ARSceneReconstructionHandler *)self handleCFError:v4 withErrorMessage:@"Error deregistering slam state callback" failSession:0];
  }

  if (self->_reconstructionSession)
  {
    if ((CV3DReconSessionDisable() & 1) == 0)
    {
      [(ARSceneReconstructionHandler *)self handleCFError:v4 withErrorMessage:@"Error disabling reconstruction session" failSession:0];
    }

    if ((CV3DReconSessionWait() & 1) == 0)
    {
      [(ARSceneReconstructionHandler *)self handleCFError:v4 withErrorMessage:@"Error waiting on reconstruction session" failSession:0];
    }
  }

  CV3DReconSessionRelease();
  CV3DSLAMSessionRelease();
  v3.receiver = self;
  v3.super_class = ARSceneReconstructionHandler;
  [(ARSceneReconstructionHandler *)&v3 dealloc];
}

- (ARSceneReconstructionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 112) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0;
  return self;
}

- (void)bufferSlamState:(std::__shared_weak_count *)a1
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691A790);
}

- (uint64_t)bufferSlamState:(uint64_t)a1
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

@end