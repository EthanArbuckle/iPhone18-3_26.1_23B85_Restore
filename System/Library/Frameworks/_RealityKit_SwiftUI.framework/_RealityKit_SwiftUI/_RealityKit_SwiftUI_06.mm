void DataModel.startFreeformPulseIfNeeded(at:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2)
  {
    return;
  }

  v2 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  if (v2)
  {
    v10 = one-time initialization token for logger;

    if (v10 == -1)
    {
LABEL_5:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = a1;
        _os_log_impl(&dword_23B824000, v12, v13, "Starting a new area cloud pulse animation at %f ... advancing the mesh manager state.", v14, 0xCu);
        MEMORY[0x23EEB0B70](v14, -1, -1);
      }

      os_unfair_lock_lock((*(v2 + 72) + 16));
      FreeformMeshManager.advanceWithRemoval()();
      os_unfair_lock_unlock((*(v2 + 72) + 16));

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23B824000, v16, v17, "Expected to start a new area cloud pulse animation, but mesh manager wasn't found!", v18, 2u);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }
}

void DataModel.computeFreeformBoundingBoxWorld()(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  if (v3 && (v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator)) != 0)
  {
    v5 = *(v4 + 18);
    v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);

    if (v5 == 1)
    {
      DataModel.computeGravityAlignedBoxWorld()(&v55);
    }

    else
    {
      DataModel.computeAxisAlignedBoxWorld()(&v55);
    }

    v7 = v57;
    v8 = v58;
    if (v59)
    {
      v47 = v56;
      v51 = v55;

      v11 = v47;
      v9 = v51;
      v10 = 1;
    }

    else
    {
      v48 = v56;
      v52 = v55;
      if (*(v3 + 64))
      {

        v11 = v48;
        v9 = v52;
        v10 = 0;
      }

      else
      {
        v12 = *(v3 + 36);
        v36 = v57;
        *v13.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v57, v56);
        v39 = v13;
        v40 = v14;
        v42 = v15;
        v44 = v16;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(outlined read-only object #0 of DataModel.computeFreeformBoundingBoxWorld());
        v37 = v17;
        v19 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23B91A6E0;
        *(inited + 32) = vcvt_f32_f64(v37);
        *(inited + 40) = v19;
        *(inited + 44) = 1065353216;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(inited);
        v38 = v21;
        swift_setDeallocating();
        v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v38.f32[0]), v40, *v38.f32, 1), v42, v38, 2), v44, v38, 3);
        if (v22.f32[1] >= v12)
        {

          v10 = 0;
          v11 = v48;
          v9 = v52;
        }

        else
        {
          v23 = v12 - v22.f32[1];
          v24 = specialized simd_float4x4.init(translation:rotation:scale:)(v36, v48);
          v49 = v25;
          v53 = v24;
          v43 = v27;
          v45 = v26;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DataModel.computeFreeformBoundingBoxWorld());
          specialized static BoundingBoxHelpers.stretchedBoundingBox(box:axis:delta:)(v53, v49, v45, v43, v28, -v23);
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySdG_SaySdGTt1g5Tf4g_n(outlined read-only object #2 of DataModel.computeFreeformBoundingBoxWorld());
          v41 = v29;
          v31 = v30;
          v32 = swift_initStackObject();
          *(v32 + 16) = xmmword_23B91A6E0;
          *(v32 + 32) = vcvt_f32_f64(v41);
          *(v32 + 40) = v31;
          *(v32 + 44) = 1065353216;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v32);
          swift_setDeallocating();
          Transform.init(matrix:)();
          v50 = v34;
          v54 = v33;
          v46 = v35;

          v11 = v50;
          v9 = v54;
          v10 = 0;
          v8 = *(&v46 + 1);
          v7 = *&v46;
        }
      }
    }
  }

  else
  {
    v7 = 0.0;
    v8 = 0;
    v9 = 0uLL;
    v10 = 1;
    v11 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v11;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
}

uint64_t DataModel.computeAxisAlignedBoxWorld()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  v3 = 0uLL;
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
      if (v4 && (*(v4 + 160) & 1) == 0)
      {
        v5 = a1;
        v20 = *(v4 + 48);
        v21 = *(v4 + 64);
        v22 = *(v4 + 80);
        v23 = *(v4 + 96);
        v24 = *(v4 + 112);
        v25 = *(v4 + 128);
        v26 = *(v4 + 144);
        v27 = *(v4 + 152);

        Ellipsoid.computeAABB()();
LABEL_9:
        specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v6, v7);
        Transform.init(matrix:)();
        v17 = v12;
        v19 = v11;
        v15 = v13;

        v10 = v15;
        v9 = v17;
        v3 = v19;
        v8 = 0;
        a1 = v5;
        goto LABEL_10;
      }
    }

    else if ((v2[4].i8[0] & 1) == 0)
    {
      v5 = a1;
      v18 = v2[2];
      v16 = v2[3];

      v7 = v16;
      v6 = v18;
      goto LABEL_9;
    }
  }

  v8 = 1;
  v9 = 0uLL;
  v10 = 0uLL;
LABEL_10:
  *a1 = v3;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  *(a1 + 48) = v8;
  return result;
}

void DataModel.computeGravityAlignedBoxWorld()(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  v3 = 0uLL;
  if (v2)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1)
    {
      v4 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_dynamicScanVolumeEstimator);
      if (v4 && (*(v4 + 160) & 1) == 0)
      {
        v18 = *(v4 + 48);
        v19 = *(v4 + 64);
        v20 = *(v4 + 80);
        v21 = *(v4 + 96);
        v22 = *(v4 + 112);
        v23 = *(v4 + 128);
        v24 = *(v4 + 144);
        v25 = *(v4 + 152);
        v5 = a1;
        v3 = Ellipsoid.gravityAlignedBox.getter();
        a1 = v5;
LABEL_9:
        v8 = 0;
        goto LABEL_10;
      }
    }

    else if ((v2[4].i8[0] & 1) == 0)
    {
      v16 = v2[2];
      v14 = v2[3];
      v9 = a1;

      specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v16, v14);
      Transform.init(matrix:)();
      v15 = v11;
      v17 = v10;
      v13 = v12;

      v7 = v13;
      v6 = v15;
      v3 = v17;
      a1 = v9;
      goto LABEL_9;
    }
  }

  v8 = 1;
  v6 = 0uLL;
  v7 = 0uLL;
LABEL_10:
  *a1 = v3;
  a1[1] = v6;
  a1[2] = v7;
  a1[3].n128_u8[0] = v8;
}

void DataModel.onFrameUpdateInFreeformMode(frame:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v6 = static OS_dispatch_queue.main.getter();
  v8 = *MEMORY[0x277D85200];
  v9 = v3[13];
  v9(v6, v8, v2);
  v10 = _dispatchPreconditionTest(_:)();
  v11 = v3[1];
  v11(v6, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *&v68 = v9;
  v12 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
  if (!v12)
  {
    return;
  }

  v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  DataModel.computeFreeformBoundingBoxWorld()(v70);
  if ((v72 & 1) == 0)
  {
    *v14.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v71, v70[1]);
    v64 = v14;
    v63 = v15;
    v62 = v16;
    v61 = v17;
    specialized static BoundingBoxHelpers.paddedBoundingBox(box:scale:padBottomFace:)(0, v14, v15, v16, v17, 1.25);
    Transform.init(matrix:)();
    v67 = v18;
    v66 = v19;
    v65 = v20;
    swift_beginAccess();
    v21 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume) == 1;
    v56 = *(v12 + 16);
    if (v21 && (v22 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession)) != 0)
    {

      v23 = v22;
      dispatch thunk of ObjectCaptureSession.updateFreeformScanVolume(boundingBox:)();
    }

    else
    {
    }

    v60 = v7;
    v24.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(*&v65, v66);
    v64 = v24;
    v63 = v25;
    v62 = v26;
    v61 = v27;
    v28 = *(v1 + 16);
    if (!v28)
    {
      goto LABEL_29;
    }

    v29 = v28;
    dispatch thunk of ARView.cameraTransform.getter();
    v59 = v30;
    v58 = v31;
    v57 = v32;

    *v75.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v57, v58);
    __invert_f4(v75);
    v33 = specialized static MathHelpers.computeClippingPlanes(boxWorld:worldToCamera:flipZ:)(1);
    v35 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);
    if (!v35)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v36 = v33;
    v37 = v34;
    v38 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_depthHazeStartPercent);
    v39 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_postProcessRenderer);

    *v6 = static OS_dispatch_queue.main.getter();
    (v68)(v6, v8, v2);
    v40 = _dispatchPreconditionTest(_:)();
    v11(v6, v2);
    if (v40)
    {
      *(v35 + 120) = v36 + (v38 * (v37 - v36));
      *(v35 + 124) = v37;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*&v73[0])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v41 = *&v73[0];
        if (*&v73[0])
        {
          v42 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
          *&v43 = specialized simd_float4x4.init(translation:rotation:scale:)(*&v65, v66);
          v68 = v43;
          v67 = v44;
          v66 = v45;
          v65 = v46;
          v47 = *(v1 + 16);
          if (v47)
          {
            v48 = v47;
            dispatch thunk of ARView.cameraTransform.getter();
            v64 = v49;
            v63 = v50;
            v62 = v51;

            v53 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
            v54 = 1.0;
            if (v53)
            {
              v54 = *(v53 + 136);
            }

            if (v54 <= 0.3)
            {
              v54 = 0.3;
            }

            if (v54 <= 1.0)
            {
              v52.n128_f32[0] = v54;
            }

            else
            {
              v52.n128_f32[0] = 1.0;
            }

            v69 = 0;
            v73[0] = v68;
            v73[1] = v67;
            v73[2] = v66;
            v73[3] = v65;
            v74 = 0;
            FreeformCloudRenderer.update(time:boundingBoxWorld:meshAnchors:arCameraTransform:motionScore:lastShotTime:pulseAnimationDuration:)(v73, v56, v42, v64, v63, v62, v52, *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastShotTime), *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_sphericalPulseDuration));

            goto LABEL_24;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
}

uint64_t DataModel.updateFeedback(frameFeedback:arCameraFeedback:)(uint64_t a1, uint64_t a2)
{
  v134 = type metadata accessor for ARCamera.TrackingState();
  v128 = *(v134 - 8);
  v5 = *(v128 + 64);
  v6 = MEMORY[0x28223BE20](v134);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v131 = &v115 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v117 = &v115 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v115 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v126 = &v115 - v15;
  MEMORY[0x28223BE20](v14);
  v119 = &v115 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v120 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v118 = &v115 - v22;
  MEMORY[0x28223BE20](v21);
  v127 = &v115 - v23;
  v24 = type metadata accessor for DataModel.State(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v125 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v115 - v29;
  MEMORY[0x28223BE20](v28);
  v135 = &v115 - v31;
  v133 = v2;
  v32 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback);
  if (v32)
  {
    v33 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_onFeedback + 8);

    v32(a1, a2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v32);
  }

  v136 = a2;
  v137 = a1;
  v34 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v132 = &v115;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
  v129 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v115 - v40;
  v42 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastFeedback;
  v43 = v133;
  swift_beginAccess();
  v130 = v42;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v43 + v42, v41, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
  if ((*(v35 + 48))(v41, 1, v34) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v41, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
  }

  else
  {
    (*(v35 + 32))(v38, v41, v34);
    DataModel.updateAutoCaptureState(oldFeedback:newFeedback:)(v38, v137);
    (*(v35 + 8))(v38, v34);
  }

  v44 = v135;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = type metadata accessor for DataModel.Error(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 56);
  v132 = v45;
  v124 = v47;
  v123 = v46 + 56;
  v47(v30, 3, 8);
  v48 = specialized static DataModel.State.== infix(_:_:)(v44, v30);
  outlined destroy of DataModel.Error(v30, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v44, type metadata accessor for DataModel.State);
  v49 = v136;
  if (v48)
  {
LABEL_22:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v74 = v131;
    if (v138 != 1 || (v75 = MEMORY[0x277D82DB0], v76 = v126, outlined init with copy of DataModel.Error(v49, v126, MEMORY[0x277D82DB0]), v77 = type metadata accessor for ARCamera.TrackingState.Reason(), v78 = (*(*(v77 - 8) + 48))(v76, 2, v77), outlined destroy of DataModel.Error(v76, v75), v78 == 2))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v138 & 1) != 0 || (v80 = MEMORY[0x277D82DB0], v81 = v121, outlined init with copy of DataModel.Error(v49, v121, MEMORY[0x277D82DB0]), v82 = type metadata accessor for ARCamera.TrackingState.Reason(), v83 = (*(*(v82 - 8) + 48))(v81, 2, v82), v79 = outlined destroy of DataModel.Error(v81, v80), v83 != 2))
      {
LABEL_41:
        MEMORY[0x28223BE20](v79);
        v113 = &v115 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v35 + 16))(v113, v137, v34);
        (*(v35 + 56))(v113, 0, 1, v34);
        v114 = v130;
        swift_beginAccess();
        outlined assign with take of Cancellable?(v113, v43 + v114, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
        return swift_endAccess();
      }
    }

    v84 = v74;
    swift_getKeyPath();
    swift_getKeyPath();
    v85 = v125;
    static Published.subscript.getter();

    v86 = v135;
    v87 = v132;
    v88 = v124;
    v124(v135, 6, 8, v132);
    v89 = specialized static DataModel.State.== infix(_:_:)(v85, v86);
    outlined destroy of DataModel.Error(v86, type metadata accessor for DataModel.State);
    if (v89)
    {
      outlined destroy of DataModel.Error(v85, type metadata accessor for DataModel.State);
    }

    else
    {
      v88(v86, 4, 8, v87);
      v90 = specialized static DataModel.State.== infix(_:_:)(v85, v86);
      outlined destroy of DataModel.Error(v86, type metadata accessor for DataModel.State);
      outlined destroy of DataModel.Error(v85, type metadata accessor for DataModel.State);
      if ((v90 & 1) == 0)
      {
        v92 = 0;
        v91 = v84;
        goto LABEL_33;
      }
    }

    v91 = v84;
    if (*(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2)
    {
      v93 = MEMORY[0x277D82DB0];
      v94 = v136;
      v95 = v117;
      outlined init with copy of DataModel.Error(v136, v117, MEMORY[0x277D82DB0]);
      v96 = type metadata accessor for ARCamera.TrackingState.Reason();
      v92 = (*(*(v96 - 8) + 48))(v95, 2, v96) == 2;
      outlined destroy of DataModel.Error(v95, v93);
      goto LABEL_34;
    }

    v92 = 0;
LABEL_33:
    v94 = v136;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v92 != v138)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v97 = type metadata accessor for Logger();
      __swift_project_value_buffer(v97, logger);
      outlined init with copy of DataModel.Error(v94, v91, MEMORY[0x277D82DB0]);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v138 = v101;
        *v100 = 67240450;
        *(v100 + 4) = v92;
        *(v100 + 8) = 2082;
        v102 = v34;
        v103 = MEMORY[0x277D82DB0];
        v104 = v35;
        outlined init with copy of DataModel.Error(v91, v116, MEMORY[0x277D82DB0]);
        v105 = String.init<A>(describing:)();
        v106 = v91;
        v108 = v107;
        outlined destroy of DataModel.Error(v106, v103);
        v109 = v105;
        v35 = v104;
        v43 = v133;
        v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v108, &v138);

        *(v100 + 10) = v110;
        v34 = v102;
        _os_log_impl(&dword_23B824000, v98, v99, "Changing showCenterReticle to %{BOOL,public}d based on the ARCamera tracking state: %{public}s", v100, 0x12u);
        __swift_destroy_boxed_opaque_existential_0Tm(v101);
        MEMORY[0x23EEB0B70](v101, -1, -1);
        MEMORY[0x23EEB0B70](v100, -1, -1);
      }

      else
      {

        v111 = outlined destroy of DataModel.Error(v91, MEMORY[0x277D82DB0]);
      }

      MEMORY[0x28223BE20](v111);
      *(&v115 - 2) = v43;
      *(&v115 - 8) = v92;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    goto LABEL_41;
  }

  v50 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastCameraFeedback;
  swift_beginAccess();
  v51 = v127;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v43 + v50, v127, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v52 = *(v128 + 48);
  v53 = v52(v51, 1, v134);
  v122 = v34;
  v54 = v53;
  outlined destroy of PerspectiveCameraComponent?(v51, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  v55 = v54 == 1;
  v34 = v122;
  if (v55)
  {
LABEL_10:
    v59 = v35;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, logger);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_23B824000, v61, v62, "ARCamera feedback changed! Poking the overlay...", v63, 2u);
      MEMORY[0x23EEB0B70](v63, -1, -1);
    }

    v64 = MEMORY[0x277D82DB0];
    v65 = v119;
    outlined init with copy of DataModel.Error(v49, v119, MEMORY[0x277D82DB0]);
    v66 = type metadata accessor for ARCamera.TrackingState.Reason();
    v67 = (*(*(v66 - 8) + 48))(v65, 2, v66);
    outlined destroy of DataModel.Error(v65, v64);
    v68 = *(v43 + 24);
    if (v68)
    {
      [v68 setActive:v67 != 2 animated:1];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v138) = v67 != 2;

    static Published.subscript.setter();

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 67109120;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v71 + 4) = v138;

      _os_log_impl(&dword_23B824000, v69, v70, "shouldShowARKitCoachingView = %{BOOL}d", v71, 8u);
      MEMORY[0x23EEB0B70](v71, -1, -1);
    }

    else
    {
    }

    v34 = v122;
    if (*(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
    {
      v72 = *(v43 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

      DetectModeBoxModel.setVisible(_:)(v67 == 2);
    }

    v73 = v120;
    outlined init with copy of DataModel.Error(v49, v120, MEMORY[0x277D82DB0]);
    (*(v128 + 56))(v73, 0, 1, v134);
    swift_beginAccess();
    outlined assign with take of Cancellable?(v73, v43 + v50, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
    swift_endAccess();
    v35 = v59;
    goto LABEL_22;
  }

  v56 = v118;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v43 + v50, v118, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMd, &_sSo8ARCameraC5ARKitE13TrackingStateOSgMR);
  result = v52(v56, 1, v134);
  if (result != 1)
  {
    v58 = static ARCamera.TrackingState.== infix(_:_:)();
    outlined destroy of DataModel.Error(v56, MEMORY[0x277D82DB0]);
    if (v58)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void DataModel.updateAutoCaptureState(oldFeedback:newFeedback:)(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v2 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640]);
  v6 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v7 = *(v3 + 8);
  v8 = v7(v13 - v5, v2);
  if (v6)
  {
    MEMORY[0x28223BE20](v8);
    static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
    v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v8 = v7(v13 - v5, v2);
    if ((v9 & 1) == 0)
    {
      DataModel.resumeAutoCapture()();
    }
  }

  MEMORY[0x28223BE20](v8);
  static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = v7(v13 - v5, v2);
  if ((v10 & 1) == 0)
  {
    MEMORY[0x28223BE20](v11);
    static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
    v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v7(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    if (v12)
    {
      DataModel.pauseAutoCapture()();
    }
  }
}

void DataModel.pauseAutoCapture()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Pausing auto-capture...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v6)
  {
    v7 = v6;
    if (dispatch thunk of ObjectCaptureSession.spi.getter())
    {
      dispatch thunk of ObjectCaptureSessionSPI.setAutoCapture(_:for:)();

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, oslog, v8, "Can't pause auto-capture, no internal session connection!", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }
}

void DataModel.resumeAutoCapture()()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isAutoCaptureEnabled) != 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v9))
    {
      goto LABEL_19;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Ignoring the request to resume auto-capture because auto-capture is disabled!";
    goto LABEL_18;
  }

  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Resuming auto-capture...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v6)
  {
    v7 = v6;
    if (dispatch thunk of ObjectCaptureSession.spi.getter())
    {
      dispatch thunk of ObjectCaptureSessionSPI.setAutoCapture(_:for:)();

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Can't resume auto-capture, no internal session connection!";
LABEL_18:
    _os_log_impl(&dword_23B824000, oslog, v9, v11, v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

LABEL_19:
}

void DataModel.updateDebugState(frame:)()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = [v1 session];
  v3 = [v2 configuration];

  if (v3)
  {
    v4 = [v3 videoFormat];

    v5 = [v4 device];
    [v5 ISO];

LABEL_4:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    return;
  }

  __break(1u);
}

uint64_t DataModel.getDeviceOrientationCorrectedReticleAimVector()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v11.a == INFINITY || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(&v11.a + 1) == INFINITY))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    CGAffineTransformMakeRotation(&v11, v11.a);
    CGAffineTransformInvert(&v10, &v11);
    tx = v10.tx;
    ty = v10.ty;
    v8 = *&v10.c;
    v9 = *&v10.a;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v3 = *&v11.a;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12.y = *(&v11.a + 1);
    *&v11.a = v9;
    *&v11.c = v8;
    v11.tx = tx;
    v11.ty = ty;
    v12.x = v3;
    v4 = CGPointApplyAffineTransform(v12, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91BFD0;
    x = v4.x;
    y = v4.y;
    *(inited + 32) = x;
    *(inited + 36) = y;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
    return swift_setDeallocating();
  }
}

uint64_t DataModel.getCurrentlySelectedBoundingBox()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DataModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = type metadata accessor for DataModel.Error(0);
  result = (*(*(v8 - 8) + 48))(v7, 8, v8);
  if (result != 6)
  {
    if (result != 5)
    {
      LOBYTE(v19[0]) = 1;
      result = outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
      v9 = v19[0];
      v12 = 0uLL;
      v13 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      goto LABEL_9;
    }

    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
    {

      DetectModeBoxModel.currentCaptureBox.getter(v19);
      v17 = v19[1];
      v18 = v19[0];
      v15 = v19[3];
      v16 = v19[2];
      v9 = v20;

      v11 = v15;
      v10 = v16;
      v13 = v17;
      v12 = v18;
LABEL_9:
      *a1 = v12;
      *(a1 + 16) = v13;
      *(a1 + 32) = v10;
      *(a1 + 48) = v11;
      *(a1 + 64) = v9;
      return result;
    }

    goto LABEL_11;
  }

  v14 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
  if (v14)
  {
    v12 = *(v14 + 144);
    v13 = *(v14 + 160);
    v10 = *(v14 + 176);
    v11 = *(v14 + 192);
    v9 = *(v14 + 208);
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t DataModel.filterFrameFeedback(feedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ObjectCaptureSession.Frame.Feedback();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v64 = v6 + 16;
  v65 = v7;
  result = (v7)(a2, a1, v5);
  v9 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_deviceMotionEstimator);
  v66 = a2;
  if (v9)
  {
    v63 = v2;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
    v61 = &v57;
    v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v12 = MEMORY[0x28223BE20](v10 - 8);
    v14 = &v57 - v13;
    v60 = &v57;
    v15 = *(v6 + 64);
    MEMORY[0x28223BE20](v12);
    v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = v9;

    v17 = static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
    v59 = &v57;
    v18 = MEMORY[0x28223BE20](v17);
    MEMORY[0x28223BE20](v18);
    v65(v16, a2, v5);
    lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640]);
    v19 = v6;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v20 = *(v6 + 8);
      v20(v16, v5);
      v20(v16, v5);
      v21 = 1;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v20 = *(v6 + 8);
      v20(v16, v5);
      (*(v6 + 32))(v14, v16, v5);
      v21 = 0;
    }

    (*(v6 + 56))(v14, v21, 1, v5);
    v22 = outlined destroy of PerspectiveCameraComponent?(v14, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
    if (*(v62 + 140) == 1)
    {
      v23 = MEMORY[0x28223BE20](v22);
      v24 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x28223BE20](v23);
      v26 = &v57 - v25;
      static ObjectCaptureSession.Frame.Feedback.tooFast.getter();
      specialized OptionSet<>.insert(_:)(v24, v26);

      v20(v26, v5);
      v27 = v24;
      v6 = v19;
      result = (v20)(v27, v5);
    }

    else
    {
    }

    v2 = v63;
  }

  if (*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 2)
  {
    v28 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_rangefinderManager);
    if (v28)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
      v61 = &v57;
      v30 = *(*(v29 - 8) + 64);
      v31 = MEMORY[0x28223BE20](v29 - 8);
      v33 = &v57 - v32;
      v60 = &v57;
      v34 = *(v6 + 64);
      MEMORY[0x28223BE20](v31);
      v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v63 = v28;

      v36 = static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
      v58 = &v57;
      v37 = MEMORY[0x28223BE20](v36);
      MEMORY[0x28223BE20](v37);
      (v65)(v35);
      lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(&lazy protocol witness table cache variable for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback, MEMORY[0x282217640]);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v38 = *(v6 + 8);
        v38(v35, v5);
        v62 = v38;
        v38(v35, v5);
        v39 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v62 = *(v6 + 8);
        v62(v35, v5);
        (*(v6 + 32))(v33, v35, v5);
        v39 = 0;
      }

      v59 = *(v6 + 56);
      (v59)(v33, v39, 1, v5);
      v40 = outlined destroy of PerspectiveCameraComponent?(v33, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
      v61 = &v57;
      v41 = MEMORY[0x28223BE20](v40);
      v42 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      v60 = &v57;
      MEMORY[0x28223BE20](v41);
      v43 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
      v58 = &v57;
      v45 = MEMORY[0x28223BE20](v44);
      MEMORY[0x28223BE20](v45);
      v65(v43, v66, v5);
      dispatch thunk of SetAlgebra.intersection(_:)();
      if (dispatch thunk of SetAlgebra.isEmpty.getter())
      {
        v46 = v62;
        v62(v43, v5);
        v46(v43, v5);
        v47 = 1;
      }

      else
      {
        dispatch thunk of SetAlgebra.subtract(_:)();
        v62(v43, v5);
        (*(v6 + 32))(v42, v43, v5);
        v47 = 0;
      }

      (v59)(v42, v47, 1, v5);
      v48 = outlined destroy of PerspectiveCameraComponent?(v42, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackVSgMR);
      v49 = *(v63 + 64);
      if (v49 == 3)
      {
        v54 = MEMORY[0x28223BE20](v48);
        v51 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v54);
        v53 = &v57 - v55;
        static ObjectCaptureSession.Frame.Feedback.tooFar.getter();
        goto LABEL_21;
      }

      if (v49 == 1)
      {
        v50 = MEMORY[0x28223BE20](v48);
        v51 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v50);
        v53 = &v57 - v52;
        static ObjectCaptureSession.Frame.Feedback.tooClose.getter();
LABEL_21:
        specialized OptionSet<>.insert(_:)(v51, v53);

        v56 = v62;
        v62(v53, v5);
        return v56(v51, v5);
      }
    }
  }

  return result;
}

void DataModel.onShot(shot:shotMetadata:)()
{
  v1 = v0;
  if (DataModel.inCapturingMetaState.getter())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = static Published.subscript.modify();
    if (!__OFADD__(*v3, 1))
    {
      ++*v3;
      v2(v41, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v4 = static Published.subscript.modify();
      if (__OFADD__(*v5, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v5;
        v4(v41, 0);

        if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle))
        {
          v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);

          ObjectCaptureSession.Metadata.Shot.timestamp.getter();
          v8 = v7;
          v9 = type metadata accessor for ObjectCaptureSession.Metadata.Shot.Camera();
          v10 = *(v9 - 8);
          v11 = *(v10 + 64);
          MEMORY[0x28223BE20](v9);
          v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
          ObjectCaptureSession.Metadata.Shot.camera.getter();
          ObjectCaptureSession.Metadata.Shot.Camera.transform.getter();
          v39 = v15;
          v40 = v14;
          v37 = v17;
          v38 = v16;
          v18 = (*(v10 + 8))(v13, v9);
          CaptureCircle.onShotTaken(at:cameraTransformWorld:)(v8, v18);
        }

        v19 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_cameraPathManager);
        v20 = type metadata accessor for ObjectCaptureSession.Metadata.Shot.Camera();
        v21 = *(v20 - 8);
        v22 = *(v21 + 64);
        MEMORY[0x28223BE20](v20);
        v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = v19;
        ObjectCaptureSession.Metadata.Shot.camera.getter();
        ObjectCaptureSession.Metadata.Shot.Camera.transform.getter();
        v39 = v27;
        v40 = v26;
        v37 = v29;
        v38 = v28;
        v30 = (*(v21 + 8))(v24, v20);
        v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime;
        v32 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_localTime);
        CameraPathManager.addShot(_:t:)(v30, *&v40);

        v33 = *(v1 + v31);
        *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_lastShotTime) = v33;
        DataModel.startFreeformPulseIfNeeded(at:)(v33);
        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_soundManager))
        {
          SoundManager.playShutterSound(volume:)(0.3);
        }

        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_hapticManager))
        {
          HapticManager.playShotHaptic()();
        }

        if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) == 1)
        {
          DataModel.updateObjectFlippabilityFeedback()();
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_20:
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, logger);
  *&v40 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23B824000, v40, v35, "onShot() called when not in .capturing  meta state!  Assuming this is a late callback and ignoring...", v36, 2u);
    MEMORY[0x23EEB0B70](v36, -1, -1);
  }
}

void DataModel.updateObjectFlippabilityFeedback()()
{
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanPassID))
  {
    if (one-time initialization token for logger != -1)
    {
LABEL_47:
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_25;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Not first scan pass, not updating flippability.";
    goto LABEL_24;
  }

  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable;
  if (*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isObjectFlippable) != 2)
  {
LABEL_20:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_25;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "isObjectFlippable has already been set -- not updating.";
LABEL_24:
    _os_log_impl(&dword_23B824000, oslog, v2, v4, v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
LABEL_25:

    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v6 + 72);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v31 = *(v6 + 72);
      }

      v8 = __CocoaSet.count.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = 0;
    while (v8 != v9)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23EEAFC40](v9, v7);
        if (__OFADD__(v9, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v11 = *(v7 + 8 * v9 + 32);

        if (__OFADD__(v9, 1))
        {
          goto LABEL_19;
        }
      }

      v13 = *(v12 + 36);

      ++v9;
      v14 = __OFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_46;
      }
    }

    v16 = *(v6 + 72);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v32 = *(v6 + 72);
      }

      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = v10 / v17;
    if (v18 >= 0.75)
    {
      v19 = v0;
      v20 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
      if (v20)
      {
        v21 = v20;
        v22 = dispatch thunk of ObjectCaptureSession.objectFlippable.getter();
      }

      else
      {
        v22 = 1;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        *(v30 + 4) = v18;
        *(v30 + 12) = 1024;
        *(v30 + 14) = v22 & 1;
        _os_log_impl(&dword_23B824000, v28, v29, "Setting the object flippability: current capture dial fill percent: %f  flippable=%{BOOL}d", v30, 0x12u);
        MEMORY[0x23EEB0B70](v30, -1, -1);
      }

      *(v19 + v5) = v22 & 1;
      return;
    }
  }

  else
  {
    v18 = -1.0;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, logger);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134218240;
    *(v26 + 4) = v18;
    *(v26 + 12) = 2048;
    *(v26 + 14) = 0x3FE8000000000000;
    _os_log_impl(&dword_23B824000, v24, v25, "Not enough capture percent to update flippability: %f < %f", v26, 0x16u);
    MEMORY[0x23EEB0B70](v26, -1, -1);
  }
}

uint64_t DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DataModel.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  outlined init with copy of DataModel.Error(a1, v12, type metadata accessor for DataModel.State);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136446466;
    v29 = a1;
    outlined init with copy of DataModel.Error(v12, v10, type metadata accessor for DataModel.State);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.State);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

    *(v17 + 4) = v22;
    a1 = v29;
    *(v17 + 12) = 2050;
    *(v17 + 14) = a2;
    _os_log_impl(&dword_23B824000, v14, v15, "updateShowMiniViewState was called!  state=%{public}s  numShots: %{public}ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x23EEB0B70](v18, -1, -1);
    v23 = v17;
    v3 = v30;
    MEMORY[0x23EEB0B70](v23, -1, -1);
  }

  else
  {

    outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.State);
  }

  v24 = type metadata accessor for DataModel.Error(0);
  (*(*(v24 - 8) + 56))(v10, 6, 8, v24);
  v25 = specialized static DataModel.State.== infix(_:_:)(a1, v10);
  outlined destroy of DataModel.Error(v10, type metadata accessor for DataModel.State);
  v26 = v25 & (a2 > 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26 != v31)
  {
    v28 = static Animation.easeInOut(duration:)();
    MEMORY[0x28223BE20](v28);
    *(&v29 - 16) = v26;
    *(&v29 - 1) = v3;
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #1 in DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(char a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_23B824000, v3, v4, "Setting showMiniView to %{BOOL,public}d", v5, 8u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t DataModel.updateShowCenterReticleState(newState:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DataModel.Error(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 6, 8, v8);
  v10 = specialized static DataModel.State.== infix(_:_:)(a1, v7);
  outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State);
  v12 = ((v10 & 1) != 0 || (v9(v7, 4, 8, v8), v11 = specialized static DataModel.State.== infix(_:_:)(a1, v7), outlined destroy of DataModel.Error(v7, type metadata accessor for DataModel.State), (v11 & 1) != 0)) && *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) != 2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12 != v19[15])
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67240192;
      *(v17 + 4) = v12;
      _os_log_impl(&dword_23B824000, v15, v16, "Setting showCenterReticle to %{BOOL,public}d", v17, 8u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }

    MEMORY[0x28223BE20](v18);
    *&v19[-16] = v2;
    v19[-8] = v12;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t closure #1 in DataModel.updateFeedback(frameFeedback:arCameraFeedback:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void DataModel.onDebugTapWorld(pointWorld:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v6 = SIMD.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B824000, v2, v3, "onDebugTapWorld: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x23EEB0B70](v5, -1, -1);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
  if (v9)
  {
    if (*(v9 + 200) == 1)
    {
      if (swift_weakLoadStrong())
      {
        v10 = *(v9 + 40);

        DataModel.addToScene(entity:)();
      }

      else
      {
      }

      v11 = *(v9 + 40);
      type metadata accessor for ModelEntity();
      HasTransform.setPosition(_:relativeTo:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t DataModel.onInternalSessionStateChange(newInternalState:)(uint64_t a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v21 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for DataModel.Error(0);
  v21 = *(*(v12 - 8) + 56);
  v21(v11, 1, 8, v12);
  v13 = type metadata accessor for ObjectCaptureSession.State();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = *(v14 + 16);
  v22 = a1;
  v16(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  DataModel.State.init(from:)(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
  outlined init with take of DataModel.State(v9, v11, type metadata accessor for DataModel.State);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v23;
  static Published.subscript.getter();

  DataModel.performStateTransition(from:to:)(v6, v11);
  v18 = outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  MEMORY[0x28223BE20](v18);
  (*(v14 + 104))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D00498], v13);
  v19 = MEMORY[0x23EEAE410](v22, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 8))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  if (v19)
  {
    *(v17 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isInternalSessionCompleted) = 1;
    DataModel.switchToCompletedIfFinishingComplete()();
  }

  return outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
}

BOOL DataModel.addCaptureSubscriptions()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v74 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v85 = v0;
  v86 = &v74 - v13;
  v14 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v14)
  {
    v82 = v2;
    v83 = v1;
    v15 = one-time initialization token for logger;
    v84 = v14;
    v94 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v77 = v10;
    v78 = v7;
    v79 = v6;
    v81 = v5;
    v16 = type metadata accessor for Logger();
    v80 = __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v17, v18, "Adding capture subscriptions...", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMR);
    v88 = &v74;
    v20 = *(v87 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v87);
    v23 = &v74 - v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMR);
    v93 = &v74;
    v25 = *(v24 - 8);
    v26 = *(v25 + 64);
    MEMORY[0x28223BE20](v24);
    v28 = &v74 - v27;
    dispatch thunk of ObjectCaptureSession.$state.getter();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v29 = static OS_dispatch_queue.main.getter();
    v96 = v29;
    v92 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v30 = *(v92 - 8);
    v31 = *(v30 + 56);
    v90 = v30 + 56;
    v91 = v31;
    v32 = v86;
    v31(v86, 1, 1, v92);
    v76 = MEMORY[0x277CBCEC8];
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<ObjectCaptureSession.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GMR);
    v89 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v32, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    (*(v25 + 8))(v28, v24);
    swift_allocObject();
    swift_weakInit();
    v93 = MEMORY[0x277CBCD60];
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<ObjectCaptureSession.State>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy6CoreOC20ObjectCaptureSessionC5StateO_GSo17OS_dispatch_queueCGMR);
    v33 = v87;
    Publisher<>.sink(receiveValue:)();

    (*(v20 + 8))(v23, v33);
    v88 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v75 = &v74;
    v34 = *(v74 - 8);
    v35 = *(v34 + 64);
    MEMORY[0x28223BE20](v74);
    v37 = &v74 - v36;
    ObjectCaptureSession.observingPublishers.getter();
    v38 = dispatch thunk of ObjectCaptureSessionObservingPublishers.framePublisher.getter();

    v96 = v38;
    v39 = static OS_dispatch_queue.main.getter();
    v95 = v39;
    v40 = v86;
    v91(v86, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMR);
    v87 = MEMORY[0x277CBCD90];
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<ObjectCaptureSession.Frame, ObjectCaptureSession.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAF5ErrorOGMR);
    Publisher.receive<A>(on:options:)();
    v41 = v40;
    outlined destroy of PerspectiveCameraComponent?(v40, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ObjectCaptureSession.Frame, ObjectCaptureSession.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC5FrameVAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v42 = v74;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v34 + 8))(v37, v42);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMR);
    v75 = &v74;
    v43 = *(v74 - 8);
    v44 = *(v43 + 64);
    MEMORY[0x28223BE20](v74);
    v46 = &v74 - v45;
    ObjectCaptureSession.observingPublishers.getter();
    v47 = dispatch thunk of ObjectCaptureSessionObservingPublishers.meshPublisher.getter();

    v96 = v47;
    v48 = static OS_dispatch_queue.main.getter();
    v95 = v48;
    v91(v41, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<ObjectCaptureSession.Mesh, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGMR);
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v41, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ObjectCaptureSession.Mesh, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4MeshVs5NeverOGSo17OS_dispatch_queueCGMR);
    v49 = v74;
    Publisher<>.sink(receiveValue:)();

    (*(v43 + 8))(v46, v49);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v75 = &v74;
    v50 = *(v74 - 8);
    v51 = *(v50 + 64);
    MEMORY[0x28223BE20](v74);
    v53 = &v74 - v52;
    ObjectCaptureSession.writingPublishers.getter();
    v54 = dispatch thunk of ObjectCaptureSessionWritingPublishers.shotPublisher.getter();

    v96 = v54;
    v55 = static OS_dispatch_queue.main.getter();
    v95 = v55;
    v91(v41, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<(ObjectCaptureSession.Shot, ObjectCaptureSession.Metadata.Shot), ObjectCaptureSession.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AF8MetadataOAGVtAF5ErrorOGMR);
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v41, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for closure #6 in DataModel.addCaptureSubscriptions();
    *(v57 + 24) = v56;
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<(ObjectCaptureSession.Shot, ObjectCaptureSession.Metadata.Shot), ObjectCaptureSession.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC4ShotV_AJ8MetadataOAKVtAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v58 = v74;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v50 + 8))(v53, v58);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v75 = &v74;
    v59 = *(v74 - 8);
    v60 = *(v59 + 64);
    MEMORY[0x28223BE20](v74);
    v62 = &v74 - v61;
    ObjectCaptureSession.writingPublishers.getter();
    v63 = dispatch thunk of ObjectCaptureSessionWritingPublishers.shotMetadataPublisher.getter();

    v96 = v63;
    v64 = static OS_dispatch_queue.main.getter();
    v95 = v64;
    v91(v41, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<ObjectCaptureSession.Metadata.Shot, ObjectCaptureSession.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMd, &_s7Combine12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAF5ErrorOGMR);
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v41, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<ObjectCaptureSession.Metadata.Shot, ObjectCaptureSession.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy6CoreOC20ObjectCaptureSessionC8MetadataO4ShotVAJ5ErrorOGSo17OS_dispatch_queueCGMR);
    v65 = v74;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v59 + 8))(v62, v65);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
    v66 = v77;
    Published.projectedValue.getter();
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<Int>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
    v67 = v79;
    Publisher<>.sink(receiveValue:)();

    (*(v78 + 8))(v66, v67);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMd, &_s7Combine9PublishedVy19_RealityKit_SwiftUI9DataModelC5StateOGMR);
    v68 = v81;
    Published.projectedValue.getter();
    swift_endAccess();
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Published<DataModel.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy19_RealityKit_SwiftUI9DataModelC5StateO_GMR);
    v69 = v83;
    Publisher<>.sink(receiveValue:)();

    (*(v82 + 8))(v68, v69);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_23B824000, v70, v71, "... done adding capture subscriptions.", v72, 2u);
      MEMORY[0x23EEB0B70](v72, -1, -1);
    }

    v14 = v84;
  }

  return v14 != 0;
}

uint64_t closure #1 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t closure #4 in DataModel.addCaptureSubscriptions()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);

    if (v1)
    {
      v2 = ObjectCaptureSession.Mesh.anchors.getter();
      FreeformMeshManager.add(meshAnchors:)(v2);
    }
  }

  return result;
}

uint64_t closure #2 in DataModel.addCaptureSubscriptions()(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(a1, &v20 - v7, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMR);
  v9 = type metadata accessor for ObjectCaptureSession.Error();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  if (v11 == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23B824000, v13, v14, a3, v15, 2u);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    return outlined destroy of PerspectiveCameraComponent?(v8, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMd, &_s7Combine11SubscribersO10CompletionOy_6CoreOC20ObjectCaptureSessionC5ErrorOGMR);
  }

  else
  {
    v17 = *(v10 + 64);
    MEMORY[0x28223BE20](v11);
    v19 = &v20 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 32))(v19, v8, v9);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      specialized DataModel.onError(error:)(v19);
    }

    return (*(v10 + 8))(v19, v9);
  }
}

uint64_t closure #6 in DataModel.addCaptureSubscriptions()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataModel.onShot(shot:shotMetadata:)();
  }

  return result;
}

uint64_t closure #8 in DataModel.addCaptureSubscriptions()()
{
  swift_beginAccess();
  swift_weakLoadStrong();
}

uint64_t closure #9 in DataModel.addCaptureSubscriptions()(uint64_t *a1)
{
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(v5, v6);

    return outlined destroy of DataModel.Error(v5, type metadata accessor for DataModel.State);
  }

  return result;
}

uint64_t closure #10 in DataModel.addCaptureSubscriptions()(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    DataModel.updateShowMiniViewState(newState:newNumShotsInSegment:)(a1, v3);
    DataModel.updateShowCenterReticleState(newState:)(a1);
  }

  return result;
}

void DataModel.removeCaptureSubscriptions()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Removing capture subscriptions...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSessionSubscriptions;
  swift_beginAccess();
  while (1)
  {
    v7 = *(v1 + v6);
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (!*(v7 + 16))
      {
        break;
      }

      goto LABEL_13;
    }

    if (v7 < 0)
    {
      v8 = *(v1 + v6);
    }

    v9 = *(v1 + v6);

    v10 = __CocoaSet.count.getter();

    if (!v10)
    {
      break;
    }

LABEL_13:
    swift_beginAccess();
    v11 = *(v1 + v6);
    v12 = v11 & 0xC000000000000001;
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v13 = *(v1 + v6);
      }

      if (__CocoaSet.count.getter())
      {
        v14 = __CocoaSet.startIndex.getter();
        v16 = v15;
        goto LABEL_25;
      }

LABEL_6:
      swift_endAccess();
    }

    else
    {
      if (!*(v11 + 16))
      {
        goto LABEL_6;
      }

      v17 = 0;
      v18 = (v11 + 56);
      v14 = 1 << *(v11 + 32);
      v19 = (v14 + 63) >> 6;
      while (1)
      {
        v21 = *v18++;
        v20 = v21;
        if (v21)
        {
          break;
        }

        v17 -= 64;
        if (!--v19)
        {
          goto LABEL_24;
        }
      }

      v14 = __clz(__rbit64(v20)) - v17;
LABEL_24:
      v16 = *(v11 + 36);
LABEL_25:
      v22 = v12 != 0;
      specialized Set._Variant.remove(at:)(v14, v16, v22);
      swift_endAccess();
      outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v14, v16, v22);

      AnyCancellable.cancel()();
    }
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_23B824000, v23, v24, "... done removing capture subscriptions.", v25, 2u);
    MEMORY[0x23EEB0B70](v25, -1, -1);
  }
}

void DataModel.connectImageWriter()()
{
  v2 = v1;
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v60 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, logger);

  v61 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v59 = v1;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    v23 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
    swift_beginAccess();
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v3 + v23, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    LODWORD(v23) = (*(v14 + 48))(v12, 1, v13);

    if (v23 == 1)
    {
LABEL_16:
      __break(1u);
      return;
    }

    (*(v14 + 32))(v17, v12, v13);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v14 + 8))(v17, v13);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, aBlock);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_23B824000, v20, v21, "Creating HEIC image bundle writer for url=%{mask.hash}s...", v22, 0x16u);
    v28 = v58;
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x23EEB0B70](v28, -1, -1);
    MEMORY[0x23EEB0B70](v22, -1, -1);

    v2 = v59;
  }

  else
  {
  }

  v29 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (!v29)
  {
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  ObjectCaptureSession.writingPublishers.getter();

  v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imagesURL;
  swift_beginAccess();
  v32 = v3 + v31;
  v33 = v62;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v32, v62, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v14 + 48))(v33, 1, v13) == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v34 = type metadata accessor for ObjectCaptureHEICBundleWriter();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = ObjectCaptureHEICBundleWriter.init(publishers:url:)();
  if (!v2)
  {
    v62 = 0;
    v38 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter);
    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter) = v37;

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMR);
    v59 = &v57;
    v40 = *(v39 - 8);
    v57 = v39;
    v58 = v40;
    v41 = v40[8];
    MEMORY[0x28223BE20](v39);
    v43 = &v57 - v42;
    v44 = dispatch thunk of ObjectCaptureHEICBundleWriter.completionPublisher.getter();

    aBlock[0] = v44;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v45 = static OS_dispatch_queue.main.getter();
    aBlock[10] = v45;
    v46 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v47 = v60;
    (*(*(v46 - 8) + 56))(v60, 1, 1, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMd, &_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMR);
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<URL, ObjectCaptureHEICBundleWriter.Error> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMd, &_s7Combine12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGMR);
    lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
    Publisher.receive<A>(on:options:)();
    outlined destroy of PerspectiveCameraComponent?(v47, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<URL, ObjectCaptureHEICBundleWriter.Error>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVy10Foundation3URLV6CoreOC29ObjectCaptureHEICBundleWriterC5ErrorOGSo17OS_dispatch_queueCGMR);
    v48 = v57;
    Publisher.sink(receiveCompletion:receiveValue:)();

    (v58[1])(v43, v48);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) = 0;
    v49 = objc_opt_self();
    v50 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #3 in DataModel.connectImageWriter();
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_392;
    v51 = _Block_copy(aBlock);

    v52 = [v49 scheduledTimerWithTimeInterval:1 repeats:v51 block:5.0];
    _Block_release(v51);
    v53 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer);
    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer) = v52;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_23B824000, v54, v55, "... successfully create bundle writer.", v56, 2u);
      MEMORY[0x23EEB0B70](v56, -1, -1);
    }
  }
}

void closure #1 in DataModel.connectImageWriter()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Got HEIC Bundle Writer Completion!", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) = 1;
    DataModel.switchToCompletedIfFinishingComplete()();
    v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer;
    [*(v5 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterLoggingTimer) invalidate];
    v7 = *(v5 + v6);
    *(v5 + v6) = 0;
  }
}

void closure #2 in DataModel.connectImageWriter()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 141558274;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_23B824000, v8, v9, "HEIC Bundle Writer completed url=%{mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t closure #3 in DataModel.connectImageWriter()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter);

    if (v1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, logger);

      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134349056;
        *(v5 + 4) = dispatch thunk of ObjectCaptureHEICBundleWriter.activeWriteQueueSize.getter();

        _os_log_impl(&dword_23B824000, v3, v4, "HEIC Bundle Writer's queue size: %{public}ld", v5, 0xCu);
        MEMORY[0x23EEB0B70](v5, -1, -1);
      }

      else
      {
      }
    }
  }

  return result;
}

void DataModel.setupDebugState()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  if (v10)
  {
    v24 = v10;
    v11 = dispatch thunk of ObjectCaptureSession.spi.getter();
    if (v11)
    {
      v23[2] = v11;
      dispatch thunk of ObjectCaptureSessionSPI.setDebugTapPosition(_:for:)();
      ObjectCaptureSession.observingPublishers.getter();
      v12 = dispatch thunk of ObjectCaptureSessionObservingPublishers.tapPositionPublisher.getter();
      v23[1] = v12;

      v25 = v12;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v13 = static OS_dispatch_queue.main.getter();
      v26 = v13;
      v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMd, &_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type AnyPublisher<SIMD3<Float>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMd, &_s7Combine12AnyPublisherVys5SIMD3VySfGs5NeverOGMR);
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
      Publisher.receive<A>(on:options:)();
      outlined destroy of PerspectiveCameraComponent?(v4, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

      swift_allocObject();
      swift_weakInit();
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<AnyPublisher<SIMD3<Float>, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA12AnyPublisherVys5SIMD3VySfGs5NeverOGSo17OS_dispatch_queueCGMR);
      Publisher<>.sink(receiveValue:)();

      (*(v6 + 8))(v9, v5);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      if (specialized static ExperimentSettings.loadMobileSFMDisabled(default:)(0))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, logger);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_23B824000, v16, v17, "Disabling MobileSFM based on defaults setting!", v18, 2u);
          MEMORY[0x23EEB0B70](v18, -1, -1);
        }

        dispatch thunk of ObjectCaptureSessionSPI.setMobileSfMEnabled(_:for:)();
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v24 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v24, v20, "setupDebugState called without a valid ObjectCaptureSession!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }
  }

  v22 = v24;
}

uint64_t closure #1 in DataModel.setupDebugState()(__int128 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataModel.onDebugTapWorld(pointWorld:)();
  }

  return result;
}

void DataModel.addGestureRecognizerIfNeeded()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Adding tap and pan recognizers...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture))
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23B824000, v7, v8, "... tapGesture already exists... nothing to do.", v9, 2u);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }
  }

  else
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = objc_allocWithZone(type metadata accessor for RETapGesture());

    v13 = RETapGesture.init(model:onTap:)(v12, partial apply for closure #1 in DataModel.addGestureRecognizerIfNeeded(), v10);
    v14 = *(v1 + v6);
    *(v1 + v6) = v13;
    v7 = v13;

    v15 = *(v1 + 16);
    if (!v15)
    {
      __break(1u);
      goto LABEL_19;
    }

    v16 = v15;
    [v16 addGestureRecognizer_];
  }

  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture))
  {
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, oslog, v18, "... panGesture already exists... nothing to do.", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    goto LABEL_15;
  }

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = objc_allocWithZone(type metadata accessor for REPanGesture());
  v22 = REPanGesture.init(onPan:)(partial apply for closure #1 in DataModel.addGestureRecognizerIfNeeded(), v20);
  v23 = *(v1 + v17);
  *(v1 + v17) = v22;
  oslog = v22;

  v24 = *(v1 + 16);
  if (!v24)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v25 = v24;
  [v25 addGestureRecognizer_];

LABEL_15:
}

uint64_t closure #1 in DataModel.addGestureRecognizerIfNeeded()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataModel.onGesture()();
  }

  return result;
}

void DataModel.removeGestureRecognizer()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Removing tap and pan recognizers...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture;
  if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_tapGesture))
  {
    v7 = *(v1 + 16);
    if (!v7)
    {
      __break(1u);
      goto LABEL_15;
    }

    [v7 removeGestureRecognizer_];
    v8 = *(v1 + v6);
    *(v1 + v6) = 0;
  }

  v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture;
  if (!*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_panGesture))
  {
    return;
  }

  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v10 removeGestureRecognizer_];
  v11 = *(v1 + v9);
  *(v1 + v9) = 0;
}

void DataModel.onGesture()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DataModel.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = type metadata accessor for DataModel.Error(0);
  if ((*(*(v12 - 8) + 48))(v11, 8, v12) == 5)
  {
    v13 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel;
    v14 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);
    if (!v14)
    {
      goto LABEL_18;
    }

    if (*(v14 + 24) == 2)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, logger);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23B824000, v16, v17, "A gesture detected in auto box mode: switching to manual box mode!", v18, 2u);
        MEMORY[0x23EEB0B70](v18, -1, -1);
      }

      v19 = *(v1 + v13);
      if (!v19)
      {
        goto LABEL_19;
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);

      *v6 = static OS_dispatch_queue.main.getter();
      (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
      v20 = _dispatchPreconditionTest(_:)();
      (*(v3 + 8))(v6, v2);
      if (v20)
      {
        DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v19 + 24), 3u);
        *(v19 + 24) = 3;

        return;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, logger);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136446210;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v26 = String.init<A>(describing:)();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_23B824000, v22, v23, "onGesture() called but nothing to do in state: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x23EEB0B70](v25, -1, -1);
      MEMORY[0x23EEB0B70](v24, -1, -1);
    }

    outlined destroy of DataModel.Error(v11, type metadata accessor for DataModel.State);
  }
}

uint64_t DataModel.switchToCompletedIfFinishingComplete()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriterCompleted) == 1 && *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_isInternalSessionCompleted) == 1)
    {
      v16 = type metadata accessor for DataModel.Error(0);
      (*(*(v16 - 8) + 56))(v8, 8, 8, v16);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of DataModel.Error(v8, v6, type metadata accessor for DataModel.State);

      static Published.subscript.setter();
      return outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DataModel.subscribeToUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Subscribing to update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v6;
    dispatch thunk of ARView.scene.getter();

    type metadata accessor for SceneEvents.Update();
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    swift_allocObject();
    swift_weakInit();
    Scene.subscribe<A>(to:on:_:)();

    outlined destroy of PerspectiveCameraComponent?(v9, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    v8 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v11, v1 + v8, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DataModel.subscribeToUpdateEvents()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    DataModel.update(deltaTime:)(v1);
  }

  return result;
}

uint64_t DataModel.unsubscribeFromUpdateEvents()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Unsubscribing from update events...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_updateSubscription;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, &v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  if (*(&v10 + 1))
  {
    outlined init with copy of Cancellable(&v9, v8);
    outlined destroy of PerspectiveCameraComponent?(&v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v9, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v9, v1 + v6, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_endAccess();
}

void DataModel.setMTLPixelFormat(to:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 layer];
  v5 = [v4 sublayers];

  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for CALayer, 0x277CD9ED0);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
LABEL_20:
      v7 = __CocoaSet.count.getter();
      if (v7)
      {
LABEL_5:
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x23EEAFC40](v8, v6);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_14:
              __break(1u);
              return;
            }
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_20;
            }

            v9 = *(v6 + 8 * v8 + 32);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_14;
            }
          }

          v13 = v9;
          objc_opt_self();
          v11 = swift_dynamicCastObjCClass();
          if (v11)
          {
            break;
          }

          ++v8;
          if (v10 == v7)
          {
            goto LABEL_21;
          }
        }

        v12 = v11;

        [v12 setPixelFormat_];

        return;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_5;
      }
    }

LABEL_21:
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DataModel.ARViewResolution@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DataModel.ARViewResolution.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.removeLast()(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = String.index(before:)();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t DataModel.arViewResolution.getter()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel____lazy_storage___arViewResolution;
  result = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel____lazy_storage___arViewResolution);
  if (result == 5)
  {
    v3 = MEMORY[0x23EEAF480](0x6C65646F6DLL, 0xE500000000000000);
    specialized static DataModel.getIOProperty(name:)(v3);
    v5 = v4;

    if (v5 && (v6 = specialized Sequence<>.starts<A>(with:)(), , (v6 & 1) != 0))
    {
      result = 3;
    }

    else
    {
      result = 4;
    }

    *(v0 + v1) = result;
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void DataModel.startObjectCapturing()()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v3 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  v6 = *(v89 + 64);
  MEMORY[0x28223BE20](v91);
  v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchTime();
  v87 = *(v94 - 8);
  v8 = *(v87 + 64);
  v9 = MEMORY[0x28223BE20](v94);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v79 - v11;
  *&v93 = type metadata accessor for DataModel.State(0);
  v12 = *(*(v93 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v93);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18);
  v22 = (&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v22 = static OS_dispatch_queue.main.getter();
  v23 = v19[13];
  LODWORD(v98) = *MEMORY[0x277D85200];
  v99 = (v19 + 13);
  v97 = v23;
  (v23)(v22);
  v24 = _dispatchPreconditionTest(_:)();
  v96 = v19[1];
  v96(v22, v18);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_12;
  }

  v84 = v3;
  v100 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = type metadata accessor for DataModel.Error(0);
  (*(*(v25 - 8) + 56))(v15, 5, 8, v25);
  v26 = specialized static DataModel.State.== infix(_:_:)(v17, v15);
  outlined destroy of DataModel.Error(v15, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v17, type metadata accessor for DataModel.State);
  if (v26)
  {
    v27 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
    if (!v27)
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
      swift_allocError();
      *v43 = 0xD000000000000013;
      v43[1] = 0x800000023B9279A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel;
    if (!*(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel))
    {
      goto LABEL_36;
    }

    v29 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_detectBoxModel);

    v30 = v27;
    DetectModeBoxModel.currentCaptureBox.getter(v107);

    if (v108)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_23B824000, v32, v33, "startCapturing() called before the bounding box was settled. Please wait for the bounding box to settle before starting capture!", v34, 2u);
        MEMORY[0x23EEB0B70](v34, -1, -1);
      }

      return;
    }

    v80 = v30;
    v93 = v107[0];
    v83 = v107[1];
    v82 = v107[2];
    v81 = v107[3];
    type metadata accessor for CaptureCircle();
    swift_allocObject();
    v44 = CaptureCircle.init(numBins:binFillAnimDurationSecs:)(96, 0.25);
    v45 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle;
    v46 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle);
    *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureCircle) = v44;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, logger);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134349056;
      v51 = *(v2 + v45);
      if (!v51)
      {
LABEL_42:

        __break(1u);
        return;
      }

      *(v50 + 4) = *(v51 + 16);
      v52 = v50;

      _os_log_impl(&dword_23B824000, v48, v49, "... new orbit made a new CaptureCircle with id= %{public}ld", v52, 0xCu);
      MEMORY[0x23EEB0B70](v52, -1, -1);
    }

    else
    {
    }

    v106 = 0;
    v53 = (v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform);
    v54 = v83;
    *v53 = v93;
    v53[1] = v54;
    v55 = v81;
    v53[2] = v82;
    v53[3] = v55;
    *(v53 + 64) = 0;
    v56 = *(v2 + v28);
    if (!v56)
    {
      goto LABEL_37;
    }

    v57 = *(v2 + v28);

    *v22 = static OS_dispatch_queue.main.getter();
    v97(v22, v98, v18);
    v58 = _dispatchPreconditionTest(_:)();
    v96(v22, v18);
    if (v58)
    {
      DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v56 + 24), 0);
      *(v56 + 24) = 0;

      v59 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel;
      v60 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureBoxModel);
      if (!v60)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v61 = v53[1];
      v102 = *v53;
      v103 = v61;
      v62 = v53[3];
      v104 = v53[2];
      v105 = v62;
      v63 = *(v53 + 64);
      if (v63)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      *v22 = static OS_dispatch_queue.main.getter();
      v97(v22, v98, v18);
      v64 = _dispatchPreconditionTest(_:)();
      v96(v22, v18);
      if (v64)
      {
        v65 = v103;
        *(v60 + 144) = v102;
        *(v60 + 160) = v65;
        v66 = v105;
        *(v60 + 176) = v104;
        *(v60 + 192) = v66;
        *(v60 + 208) = v63;
        CaptureModeBoxModel.updateCurrentEntityTransform()();

        if (!*(v2 + v59))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v67 = *(v2 + v59);

        CaptureModeBoxModel.enable()();

        if (!*(v2 + v59))
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v68 = *(v2 + v59);

        *v22 = static OS_dispatch_queue.main.getter();
        v97(v22, v98, v18);
        v69 = _dispatchPreconditionTest(_:)();
        v96(v22, v18);
        v70 = v80;
        if (v69)
        {
          CaptureModeBoxModel.executeSquish(duration:)(0.3);

          v98 = static OS_dispatch_queue.main.getter();
          v71 = v85;
          static DispatchTime.now()();
          v72 = v86;
          + infix(_:_:)();
          v99 = *(v87 + 8);
          v99(v71, v94);
          v73 = swift_allocObject();
          *(v73 + 16) = v2;
          *(v73 + 24) = v70;
          aBlock[4] = partial apply for closure #1 in DataModel.startObjectCapturing();
          aBlock[5] = v73;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_6;
          v74 = _Block_copy(aBlock);
          v97 = v70;

          v75 = v88;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v76 = v90;
          v77 = v84;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v78 = v98;
          MEMORY[0x23EEAF910](v72, v75, v76, v74);
          _Block_release(v74);

          (*(v92 + 8))(v76, v77);
          (*(v89 + 8))(v75, v91);
          v99(v72, v94);
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_32;
  }

LABEL_12:
  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, logger);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v102 = v39;
    *v38 = 136446210;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v102);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_23B824000, v36, v37, "startCapturing() called in state %{public}s != .detecting in object mode.  Dropping the call...", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x23EEB0B70](v39, -1, -1);
    MEMORY[0x23EEB0B70](v38, -1, -1);
  }
}

uint64_t closure #1 in DataModel.startObjectCapturing()(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 48);
    v24 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 32);
    v25 = v7;
    v26 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 64);
    v8 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 16);
    v22 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform);
    v23 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13simd_float4x4aSgMd, &_sSo13simd_float4x4aSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_23B824000, v3, v4, "Start capturing... using box: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x23EEB0B70](v6, -1, -1);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v12 = type metadata accessor for ObjectCaptureSession.CaptureOptions();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectCaptureSession.CaptureOptions.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  ObjectCaptureSession.CaptureOptions.usePlaneFiltering.setter();
  ObjectCaptureSession.CaptureOptions.useFreeformScanVolume.setter();
  v17 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 48);
  v24 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 32);
  v25 = v17;
  v26 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 64);
  v18 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform + 16);
  v22 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_scanningModelToWorldTransform);
  v23 = v18;
  dispatch thunk of ObjectCaptureSession.startCapturing(inside:with:)();
  return (*(v13 + 8))(v16, v12);
}

void DataModel.startFreeformCapturing()()
{
  v1 = v0;
  v2 = type metadata accessor for DataModel.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v37 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = type metadata accessor for DataModel.Error(0);
  (*(*(v15 - 8) + 56))(v6, 4, 8, v15);
  v16 = specialized static DataModel.State.== infix(_:_:)(v8, v6);
  outlined destroy of DataModel.Error(v6, type metadata accessor for DataModel.State);
  outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.State);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
    if (v17)
    {
      v18 = type metadata accessor for ObjectCaptureSession.CaptureOptions();
      v19 = *(v18 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x28223BE20](v18);
      v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = v17;
      ObjectCaptureSession.CaptureOptions.init()();
      ObjectCaptureSession.CaptureOptions.usePlaneFiltering.setter();
      v24 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_shouldEstimateDynamicScanVolume);
      ObjectCaptureSession.CaptureOptions.useFreeformScanVolume.setter();
      v25 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_freeformPointDensityThreshold);
      ObjectCaptureSession.CaptureOptions.freeformPointDensityThreshold.setter();
      LOBYTE(v37[0]) = 1;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 1;
      dispatch thunk of ObjectCaptureSession.startCapturing(inside:with:)();
      *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureMode) = 2;
      DataModel.captureMode.didset();
      type metadata accessor for FreeformMeshManager();
      swift_allocObject();
      v26 = FreeformMeshManager.init(config:)();

      (*(v19 + 8))(v22, v18);
      v27 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager);
      *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_meshManager) = v26;
    }

    else
    {
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
      swift_allocError();
      *v36 = 0xD000000000000013;
      v36[1] = 0x800000023B9279A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    return;
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37[0] = v32;
    *v31 = 136446210;
    swift_getKeyPath();
    v43 = v2;
    swift_getKeyPath();
    static Published.subscript.getter();

    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v37);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_23B824000, v29, v30, "startCapturing() called in state %{public}s != .ready in area mode.  Ignore the call...", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x23EEB0B70](v32, -1, -1);
    MEMORY[0x23EEB0B70](v31, -1, -1);
  }
}

void type metadata accessor for Published<DataModel.State>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Published<CoveragePointRenderer?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance DataModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DataModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *RETapGesture.init(model:onTap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_model] = 0;
  v7 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap];
  v8 = type metadata accessor for RETapGesture();
  *v7 = 0;
  *(v7 + 1) = 0;
  v17.receiver = v3;
  v17.super_class = v8;
  v9 = objc_msgSendSuper2(&v17, sel_initWithTarget_action_, 0, 0);
  v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_model;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = v9;

  swift_unownedRelease();
  *&v9[v10] = a1;
  swift_unownedRetain();
  swift_endAccess();

  v13 = &v12[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap];
  v14 = *&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap];
  v15 = *&v12[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap + 8];
  *v13 = a2;
  *(v13 + 1) = a3;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v14);
  [v12 addTarget:v12 action:sel_onUITap_];

  return v12;
}

void RETapGesture.onUITap(_:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_model;
  swift_beginAccess();
  v5 = *(v2 + v4);
  swift_unownedRetainStrong();
  if (v5)
  {
    v6 = *(v5 + 16);

    [a1 locationInView_];
    v8 = v7;
    v10 = v9;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      type metadata accessor for CGPoint(0);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_23B824000, v12, v13, "onTap at %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x23EEB0B70](v15, -1, -1);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    v19 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap;
    v20 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12RETapGesture_onTap);
    if (v20)
    {
      v21 = *(v19 + 8);

      v20(v22, v8, v10);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

char *REPanGesture.init(onPan:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan];
  v6 = type metadata accessor for REPanGesture();
  *v5 = 0;
  *(v5 + 1) = 0;
  v13.receiver = v2;
  v13.super_class = v6;
  v7 = objc_msgSendSuper2(&v13, sel_initWithTarget_action_, 0, 0);
  v8 = &v7[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan];
  v9 = *&v7[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan];
  v10 = *&v7[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan + 8];
  *v8 = a1;
  *(v8 + 1) = a2;
  v11 = v7;

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v9);
  [v11 addTarget:v11 action:sel_onUIPan];

  return v11;
}

void REPanGesture.onUIPan()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "onPan", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan;
  v7 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D12REPanGesture_onPan);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v7);
  }

  else
  {
    __break(1u);
  }
}

void RELongPressGesture.onUILongPress(_:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D18RELongPressGesture_model);
  swift_unownedRetainStrong();
  if (v4)
  {
    v5 = *(v4 + 16);

    [a1 locationInView_];
    v7 = v6;
    v9 = v8;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      type metadata accessor for CGPoint(0);
      v15 = String.init<A>(describing:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23B824000, v11, v12, "onLongPress at %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    v18 = v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D18RELongPressGesture_onLongPress;
    v19 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_C9AE5511A982EB3959C0C8BA03AFBA3D18RELongPressGesture_onLongPress);
    if (v19)
    {
      v20 = *(v18 + 8);

      v19(v21, v7, v9);
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v19);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void @objc RETapGesture.init(target:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id DataModel.LocalARCoachingViewDelegate.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t @objc RETapGesture.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3);
  swift_unownedRelease();
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Frame.Feedback, @in_guaranteed ARCamera.TrackingState) -> ())?(v8);
}

uint64_t type metadata completion function for DataModel.State()
{
  v0 = type metadata accessor for DataModel.Error(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t type metadata completion function for DataModel.Error()
{
  result = type metadata accessor for ObjectCaptureSession.Error();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for (requiredBytes: Int64)();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataModel.CaptureMode and conformance DataModel.CaptureMode()
{
  result = lazy protocol witness table cache variable for type DataModel.CaptureMode and conformance DataModel.CaptureMode;
  if (!lazy protocol witness table cache variable for type DataModel.CaptureMode and conformance DataModel.CaptureMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataModel.CaptureMode and conformance DataModel.CaptureMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution()
{
  result = lazy protocol witness table cache variable for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution;
  if (!lazy protocol witness table cache variable for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataModel.ARViewResolution and conformance DataModel.ARViewResolution);
  }

  return result;
}

uint64_t key path getter for DataModel.showMiniView : DataModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  return key path getter for DataModel.showMiniView : DataModel(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.showMiniView : DataModel(char *a1, uint64_t *a2)
{
  return key path setter for DataModel.showMiniView : DataModel(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double key path getter for DataModel.miniViewScreenRotationAngle : DataModel@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.miniViewScreenRotationAngle : DataModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for DataModel.coveragePointRenderer : DataModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.coveragePointRenderer : DataModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t key path getter for DataModel.id : DataModel(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for DataModel.id : DataModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t key path getter for DataModel.numShotsTaken : DataModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.numShotsTaken : DataModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double key path getter for DataModel.reticleAimVector : DataModel@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.reticleAimVector : DataModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void key path setter for DataModel.shouldShowARKitCoachingView : DataModel(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  DataModel.shouldShowARKitCoachingView.didset();
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  specialized _NativeSet._delete(at:)(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMd, &_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMd, &_ss11_SetStorageCy19_RealityKit_SwiftUI20ObjectCaptureSessionC8FeedbackOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x23EEAFE40](v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        Hasher.init(_seed:)();
        MEMORY[0x23EEAFE40](v12);
        v13 = Hasher._finalize()() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized Set._Variant.remove(at:)(uint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) == 0)
  {
    v8 = a2;
    v9 = *v3;
    result = swift_isUniquelyReferenced_nonNull_native();
    v11 = result;
    v12 = *v3;
    if (a3)
    {
      v13 = v3;
      v14 = type metadata accessor for AnyCancellable();
      result = __CocoaSet.Index.age.getter();
      if (result != *(v12 + 36))
      {
        __break(1u);
        goto LABEL_25;
      }

      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v8 = v19;
      v21 = v19;
      v15 = *(v12 + 40);
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
      v3 = &v21;
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = -1 << *(v12 + 32);
      v4 = v16 & ~v17;
      if ((*(v12 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
      {
        v18 = ~v17;
        lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
        do
        {
          v20 = *(*(v12 + 48) + 8 * v4);
          v3 = v14;
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            goto LABEL_19;
          }

          v4 = (v4 + 1) & v18;
        }

        while (((*(v12 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
      }

      __break(1u);
    }

    if ((v4 & 0x8000000000000000) == 0 && 1 << *(v12 + 32) > v4)
    {
      if ((*(v12 + 8 * (v4 >> 6) + 56) >> v4))
      {
        v13 = v3;
        if (*(v12 + 36) == v8)
        {
LABEL_20:
          v21 = v12;
          if (!v11)
          {
            specialized _NativeSet.copy()();
            v12 = v21;
          }

          v7 = *(*(v12 + 48) + 8 * v4);
          specialized _NativeSet._delete(at:)(v4);
          *v13 = v21;
          return v7;
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a3)
  {
    if (v5 < 0)
    {
      v6 = *v3;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x23EEAFB70](result, a2, v6);
    type metadata accessor for AnyCancellable();

    swift_dynamicCast();
    v7 = specialized Set._Variant._migrateToNative(_:removing:)();

    return v7;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized static DataModel.Error.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v41 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v41 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = (&v41 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v41 - v20;
  v22 = (&v41 + *(v19 + 56) - v20);
  outlined init with copy of DataModel.Error(a1, &v41 - v20, type metadata accessor for DataModel.Error);
  outlined init with copy of DataModel.Error(a2, v22, type metadata accessor for DataModel.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          goto LABEL_28;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        outlined init with copy of DataModel.Error(v21, v8, type metadata accessor for DataModel.Error);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v24 = *v8 == *v22;
LABEL_22:
          outlined destroy of DataModel.Error(v21, type metadata accessor for DataModel.Error);
          return v24 & 1;
        }

        goto LABEL_28;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of DataModel.Error(v21, v16, type metadata accessor for DataModel.Error);
    v26 = *v16;
    v25 = v16[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_9;
    }

LABEL_19:

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of DataModel.Error(v21, v11, type metadata accessor for DataModel.Error);
    v31 = swift_getEnumCaseMultiPayload();
    v32 = type metadata accessor for ObjectCaptureSession.Error();
    v33 = v32;
    v34 = *(v32 - 8);
    v35 = v34;
    if (v31 == 2)
    {
      v36 = *(v34 + 64);
      MEMORY[0x28223BE20](v32);
      v38 = &v41 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 32))(v38, v22, v33);
      v24 = MEMORY[0x23EEAE2C0](v11, v38);
      v39 = *(v35 + 8);
      v39(v38, v33);
      v39(v11, v33);
      goto LABEL_22;
    }

    (*(v34 + 8))(v11, v32);
LABEL_28:
    outlined destroy of PerspectiveCameraComponent?(v21, &_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5ErrorO_AEtMR);
    v24 = 0;
    return v24 & 1;
  }

  outlined init with copy of DataModel.Error(v21, v14, type metadata accessor for DataModel.Error);
  v26 = *v14;
  v25 = v14[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  v27 = *v22;
  v28 = v22[1];
  if (v26 == v27 && v25 == v28)
  {

    goto LABEL_30;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_30:
    outlined destroy of DataModel.Error(v21, type metadata accessor for DataModel.Error);
    v24 = 1;
    return v24 & 1;
  }

  outlined destroy of DataModel.Error(v21, type metadata accessor for DataModel.Error);
  v24 = 0;
  return v24 & 1;
}

uint64_t specialized static DataModel.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataModel.Error(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataModel.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of DataModel.Error(a1, &v23 - v16, type metadata accessor for DataModel.State);
  outlined init with copy of DataModel.Error(a2, &v17[v18], type metadata accessor for DataModel.State);
  v19 = *(v5 + 48);
  v20 = v19(v17, 8, v4);
  if (v20 <= 3)
  {
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        if (v19(&v17[v18], 8, v4) != 2)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      if (v19(&v17[v18], 8, v4) == 3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!v20)
      {
        outlined init with copy of DataModel.Error(v17, v12, type metadata accessor for DataModel.State);
        if (!v19(&v17[v18], 8, v4))
        {
          outlined init with take of DataModel.State(&v17[v18], v8, type metadata accessor for DataModel.Error);
          v21 = specialized static DataModel.Error.== infix(_:_:)(v12, v8);
          outlined destroy of DataModel.Error(v8, type metadata accessor for DataModel.Error);
          outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.Error);
          outlined destroy of DataModel.Error(v17, type metadata accessor for DataModel.State);
          return v21 & 1;
        }

        outlined destroy of DataModel.Error(v12, type metadata accessor for DataModel.Error);
        goto LABEL_22;
      }

      if (v19(&v17[v18], 8, v4) == 1)
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    outlined destroy of PerspectiveCameraComponent?(v17, &_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMd, &_s19_RealityKit_SwiftUI9DataModelC5StateO_AEtMR);
    v21 = 0;
    return v21 & 1;
  }

  if (v20 <= 5)
  {
    if (v20 == 4)
    {
      if (v19(&v17[v18], 8, v4) != 4)
      {
        goto LABEL_22;
      }
    }

    else if (v19(&v17[v18], 8, v4) != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v20 == 6)
  {
    if (v19(&v17[v18], 8, v4) == 6)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  if (v20 == 7)
  {
    if (v19(&v17[v18], 8, v4) != 7)
    {
      goto LABEL_22;
    }
  }

  else if (v19(&v17[v18], 8, v4) != 8)
  {
    goto LABEL_22;
  }

LABEL_18:
  outlined destroy of DataModel.Error(v17, type metadata accessor for DataModel.State);
  v21 = 1;
  return v21 & 1;
}

void specialized DataModel.setCustomRenderOptions(on:)()
{
  v0 = type metadata accessor for ARView.RenderOptions();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-v6];
  static ARView.RenderOptions.disableGroundingShadows.getter();
  v8 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v7, v5);
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  v8(v16, 0);
  static ARView.RenderOptions.disableDepthOfField.getter();
  v10 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v7, v5);
  v9(v5, v0);
  v9(v7, v0);
  v10(v16, 0);
  static ARView.RenderOptions.disablePersonOcclusion.getter();
  v11 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v7, v5);
  v9(v5, v0);
  v9(v7, v0);
  v11(v16, 0);
  static ARView.RenderOptions.disableAREnvironmentLighting.getter();
  v12 = ARView.renderOptions.modify();
  specialized OptionSet<>.insert(_:)(v7, v5);
  v9(v5, v0);
  v9(v7, v0);
  v12(v16, 0);
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (!v14)
  {
    static ARView.RenderOptions.disableMotionBlur.getter();
    v15 = ARView.renderOptions.modify();
    specialized OptionSet<>.insert(_:)(v7, v5);
    v9(v5, v0);
    v9(v7, v0);
    v15(v16, 0);
  }
}

CFTypeRef specialized static DataModel.getIOProperty(name:)(const __CFString *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *MEMORY[0x277CD2898];
  v5 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  result = IORegistryEntryCreateCFProperty(MatchingService, a1, *MEMORY[0x277CBECE8], 0);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = swift_unknownObjectRetain_n();
  v10 = CFGetTypeID(v9);
  if (v10 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(v8);
    swift_unknownObjectRelease();
    if (v11 != CFDataGetTypeID() || (swift_unknownObjectRetain(), !swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = v21;
    static String.Encoding.utf8.getter();
    v13 = String.init(data:encoding:)();
    v22 = v13;
    if (!v14)
    {
      v19 = v13;
      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v12, v23);
      return v19;
    }

    v15 = v13;
    v16 = specialized BidirectionalCollection.last.getter(v13, v14);
    if (v17)
    {
      if (!v16 && v17 == 0xE100000000000000)
      {

LABEL_18:
        specialized RangeReplaceableCollection<>.removeLast()(v18);
        swift_unknownObjectRelease();
        outlined consume of Data._Representation(v12, v23);

        return v22;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    outlined consume of Data._Representation(v12, v23);
    return v15;
  }

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

void specialized DataModel.computeFactorScale(arViewResolution:)()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  CGRectGetWidth(v1);
  [v0 bounds];
  CGRectGetHeight(v2);
  [v0 scale];
}

void specialized DataModel.captureSession.setter(void *a1)
{
  DataModel.removeCaptureSubscriptions()();
  v3 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_imageWriter) = 0;

  v4 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession;
  v5 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession);
  *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_captureSession) = a1;
  v6 = a1;

  if (*(v1 + v4))
  {
    DataModel.addCaptureSubscriptions()();

    DataModel.setupDebugState()();
  }
}

uint64_t specialized DataModel.throwIfInsufficientStorage(imagesDirectory:checkpointDirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v95 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static PhotogrammetryFileHelpers.requiredBytesForImagesCaptureDirectory.getter();
  v14 = static PhotogrammetryFileHelpers.requiredBytesCheckpointDir(maxNumImagesBytes:)();
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
  }

  else
  {
    v99 = a2;
    v100 = v14;
    v101 = v9;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  v104 = __swift_project_value_buffer(v16, logger);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  v19 = os_log_type_enabled(v17, v18);
  v102 = v12;
  v103 = v8;
  v98 = v2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v105 = v97;
    *v20 = 136446210;
    v21 = static PhotogrammetryFileHelpers.byteFormatter.getter();
    v22 = v7;
    v23 = v15;
    v24 = [v21 stringFromByteCount_];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v15 = v23;
    v7 = v22;
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v105);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_23B824000, v17, v18, "Checking that we have sufficient storage for %{public}s...", v20, 0xCu);
    v29 = v97;
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
    MEMORY[0x23EEB0B70](v29, -1, -1);
    MEMORY[0x23EEB0B70](v20, -1, -1);
  }

  v30 = static PhotogrammetryFileHelpers.getAvailableStorage(ofDir:)();
  v31 = Logger.logObject.getter();
  if (v30 >= v15)
  {
    v44 = static os_log_type_t.info.getter();
    v45 = os_log_type_enabled(v31, v44);
    v96 = v15;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v105 = v47;
      *v46 = 136446210;
      v48 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v49 = [v48 stringFromByteCount_];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v105);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_23B824000, v31, v44, "... Success!  We have %{public}s available.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x23EEB0B70](v47, -1, -1);
      MEMORY[0x23EEB0B70](v46, -1, -1);
    }

    v54 = v102;
    outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v99, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v55 = v101;
    v56 = *(v101 + 48);
    v57 = v103;
    if (v56(v7, 1, v103) == 1)
    {
      static PhotogrammetryFileHelpers.temporaryDirectory.getter();
      if (v56(v7, 1, v57) != 1)
      {
        outlined destroy of PerspectiveCameraComponent?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    else
    {
      (*(v55 + 32))(v54, v7, v57);
    }

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v105 = v61;
      *v60 = 136446210;
      v62 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v63 = v100;
      v64 = [v62 stringFromByteCount_];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v105);

      *(v60 + 4) = v68;
      v54 = v102;
      _os_log_impl(&dword_23B824000, v58, v59, "Checking that we have sufficient storage for checkpoint dir.  Required space = %{public}s...", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v61);
      MEMORY[0x23EEB0B70](v61, -1, -1);
      v69 = v60;
      v55 = v101;
      MEMORY[0x23EEB0B70](v69, -1, -1);
    }

    else
    {

      v63 = v100;
    }

    v70 = static PhotogrammetryFileHelpers.getAvailableStorage(ofDir:)();
    v71 = Logger.logObject.getter();
    if (v70 >= v63)
    {
      v85 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v71, v85))
      {
        v86 = swift_slowAlloc();
        v87 = v54;
        v88 = swift_slowAlloc();
        v105 = v88;
        *v86 = 136446210;
        v89 = static PhotogrammetryFileHelpers.byteFormatter.getter();
        v90 = [v89 stringFromByteCount_];

        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v105);

        *(v86 + 4) = v94;
        _os_log_impl(&dword_23B824000, v71, v85, "... Success!  We have %{public}s available.", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v88);
        MEMORY[0x23EEB0B70](v88, -1, -1);
        MEMORY[0x23EEB0B70](v86, -1, -1);

        return (*(v55 + 8))(v87, v103);
      }

      else
      {

        return (*(v55 + 8))(v54, v103);
      }
    }

    else
    {
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v105 = v74;
        *v73 = 136446210;
        v75 = static PhotogrammetryFileHelpers.byteFormatter.getter();
        v76 = [v75 stringFromByteCount_];

        v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v78;

        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, &v105);

        *(v73 + 4) = v80;
        _os_log_impl(&dword_23B824000, v71, v72, "... Error insufficient storage!  We had: %{public}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        v81 = v74;
        v54 = v102;
        MEMORY[0x23EEB0B70](v81, -1, -1);
        MEMORY[0x23EEB0B70](v73, -1, -1);
      }

      v82 = v96;
      v83 = v103;
      type metadata accessor for DataModel.Error(0);
      lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
      swift_allocError();
      *v84 = v82;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (*(v55 + 8))(v54, v83);
    }
  }

  else
  {
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v105 = v34;
      *v33 = 136446210;
      v35 = static PhotogrammetryFileHelpers.byteFormatter.getter();
      v36 = [v35 stringFromByteCount_];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v15;
      v40 = v39;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, &v105);
      v15 = v38;

      *(v33 + 4) = v41;
      _os_log_impl(&dword_23B824000, v31, v32, "... Error insufficient storage!  We had: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x23EEB0B70](v34, -1, -1);
      MEMORY[0x23EEB0B70](v33, -1, -1);
    }

    type metadata accessor for DataModel.Error(0);
    lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(&lazy protocol witness table cache variable for type DataModel.Error and conformance DataModel.Error, type metadata accessor for DataModel.Error);
    swift_allocError();
    *v42 = v15;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void specialized RangefinderObserver.zoneDidChange(_:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = String.init<A>(describing:)();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_23B824000, oslog, v1, "Rangefinder zoneDidChange: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    MEMORY[0x23EEB0B70](v3, -1, -1);
    MEMORY[0x23EEB0B70](v2, -1, -1);
  }

  else
  {
  }
}

void specialized static DataModel.makeDeviceMotionEstimatorDesc(captureMode:)(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = 0x3F80000000000000;
LABEL_5:
    v9 = v3;
    v4 = specialized static ExperimentSettings.loadMotionFilterDurationSecs(default:)(1.0);
    v5 = v4 * 60.0;
    if (COERCE_UNSIGNED_INT64(fabs(v4 * 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        v6 = v5;
        v7 = specialized static ExperimentSettings.loadMinBadMotionScore(default:)(0.2618);
        v8 = specialized static ExperimentSettings.loadMaxBadMotionScore(default:)(0.5236);
        *a2 = v9;
        *(a2 + 4) = v9;
        *(a2 + 16) = v6;
        *(a2 + 24) = v4;
        *(a2 + 32) = 2;
        *(a2 + 40) = v7;
        *(a2 + 44) = v8;
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 == 2)
  {
    v3 = 1056964608;
    goto LABEL_5;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized DataModel.LocalARCoachingViewDelegate.coachingOverlayViewDidRequestSessionReset(_:)()
{
  v0 = type metadata accessor for DataModel.Error(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "coachingOverlayViewDidRequestSessionReset: Will invalidate the session!", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    DataModel.invalidateSession(error:)(v3);

    return outlined destroy of DataModel.Error(v3, type metadata accessor for DataModel.Error);
  }

  return result;
}

void specialized DataModel.LocalARCoachingViewDelegate.coachingOverlayViewWillActivate(_:)(const char *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B824000, oslog, v3, a1, v4, 2u);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }
}

void specialized DataModel.updateReticleAimSystem(at:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMd, &_s17RealityFoundation6AtomicVy01_A11Kit_SwiftUI18CoveragePointCloudVGMR);
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v35 - v5;
  v7 = type metadata accessor for CoveragePointCloud();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel__latestCoveragePointCloud;
    swift_beginAccess();
    v13 = v3[2];
    v13(v6, v1 + v12, v2);
    v37 = v11;
    Atomic.wrappedValue.getter();
    v14 = v3[1];
    v14(v6, v2);
    v15 = CoveragePointCloud.isValid()();
    outlined destroy of DataModel.Error(v10, type metadata accessor for CoveragePointCloud);
    if (v15)
    {
      v36 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_userFeedbackSystem;
      v16 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_userFeedbackSystem);
      v13(v6, v1 + v12, v2);

      Atomic.wrappedValue.getter();
      v14(v6, v2);
      *&v17 = CoveragePointCloud.bboxWorld.getter();
      v35[2] = v18;
      v35[3] = v17;
      v35[0] = v20;
      v35[1] = v19;
      outlined destroy of DataModel.Error(v10, type metadata accessor for CoveragePointCloud);
      Transform.init(matrix:)();
      v21 = v37;
      specialized UserFeedbackSystem.update(at:arView:bboxWorld:)(v37, v22, v23, v24);

      v25 = *(*(v1 + v36) + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      v38 = v25;

      static Published.subscript.setter();
    }

    else
    {
      v30 = v37;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_23B824000, v32, v33, "Point cloud is not valid, can't compute reticle aim score!", v34, 2u);
        MEMORY[0x23EEB0B70](v34, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v37 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_23B824000, v37, v27, "Can't update reticle aim system since no ARView!", v28, 2u);
      MEMORY[0x23EEB0B70](v28, -1, -1);
    }

    v29 = v37;
  }
}

void specialized DataModel.onError(error:)(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = type metadata accessor for ObjectCaptureSession.Error();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = *(v4 + 16);
  v7(v17 - v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17[1] = v17;
    v18 = v11;
    v19 = v11;
    *v10 = 136315138;
    MEMORY[0x28223BE20](v11);
    v7(v17 - v6, v17 - v6, v3);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    (*(v4 + 8))(v17 - v6, v3);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B824000, v8, v9, "onError: %s", v10, 0xCu);
    v16 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x23EEB0B70](v16, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v17 - v6, v3);
  }
}

unint64_t specialized DataModel.ARViewResolution.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t outlined destroy of DataModel.Error(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type DataModel.Error and conformance DataModel.Error(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of DataModel.Error(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ObjectCaptureSession.Shot, @in_guaranteed ObjectCaptureSession.Metadata.Shot) -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC4ShotV_AC8MetadataOADVtMd, &_s6CoreOC20ObjectCaptureSessionC4ShotV_AC8MetadataOADVtMR);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t partial apply for closure #1 in DataModel.updateFeedback(frameFeedback:arCameraFeedback:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in DataModel.updateFeedback(frameFeedback:arCameraFeedback:)();
}

uint64_t lazy protocol witness table accessor for type ObjectCaptureSession.Frame.Feedback and conformance ObjectCaptureSession.Frame.Feedback(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of DataModel.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of CoveragePointCloud(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void DetectModeBoxModel.detectedBoundingBox.didset()
{
  if ((*(v0 + 144) & 1) == 0 && *(v0 + 24) == 2)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 96);
    v3 = *(v0 + 112);
    v4 = *(v0 + 128);
    v5 = vextq_s8(v3, v3, 8uLL);
    v6 = vextq_s8(v4, v4, 0xCuLL);
    v7 = vextq_s8(v3, v3, 0xCuLL);
    v8 = vextq_s8(v4, v4, 8uLL);
    v9 = vextq_s8(v4, v4, 4uLL);
    v10 = vextq_s8(v3, v3, 4uLL);
    v11 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(vextq_s8(v2, v2, 8uLL), vmlaq_f32(vmulq_f32(v6, vnegq_f32(v10)), v9, v7)), vmlaq_f32(vmulq_f32(v8, vnegq_f32(v7)), v6, v5), vextq_s8(v2, v2, 4uLL)), vmlaq_f32(vmulq_f32(v9, vnegq_f32(v5)), v8, v10), vextq_s8(v2, v2, 0xCuLL)), v1);
    v8.i64[0] = vextq_s8(v11, v11, 8uLL).u64[0];
    if (vaddv_f32(vsub_f32(vzip1_s32(*v11.i8, *v8.f32), vzip2_s32(*v11.i8, *v8.f32))) < 0.0)
    {
      v16 = *(v0 + 128);
      v17 = *(v0 + 112);
      v18 = *(v0 + 96);
      v19 = *(v0 + 80);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_23B824000, v13, v14, "Bounding box transform was not right-handed!  Fixing...", v15, 2u);
        MEMORY[0x23EEB0B70](v15, -1, -1);
      }

      v2 = v18;
      v1 = v19;
      v4 = v16;
      v3 = v17;
    }

    specialized static BoundingBoxHelpers.ensuringPositiveDeterminant(matrix:)(v1, v2, v3, v4);

    DetectModeBoxModel.updateAutomaticEntityWithBoundingBox(srtMatrix:)();
  }
}

void DetectModeBoxModel.TransitionAnimation.state.didset()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v10 = *(v1 + 16);
    v6 = String.init<A>(describing:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23B824000, oslog, v3, "DetectBox TransitionAnimation.State = %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x23EEB0B70](v5, -1, -1);
    MEMORY[0x23EEB0B70](v4, -1, -1);
  }

  else
  {
  }
}

void DetectModeBoxModel.TransitionAnimation.startAnimation(at:to:)(double a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v7 = type metadata accessor for AnimationTimingFunction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[1].n128_u8[0])
  {
    __break(1u);
  }

  else if (one-time initialization token for logger == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v37 = v7;
    v17 = v16;
    v44[0] = v16;
    *v15 = 136446466;
    v18 = v5[3];
    v19 = v5[4];
    v41 = v5[2];
    v42 = v18;
    v43 = v19;
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v44);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2082;
    v41 = v38;
    v42 = v39;
    v43 = v40;
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v44);

    *(v15 + 14) = v25;
    _os_log_impl(&dword_23B824000, v13, v14, "Start transition anim from: %{public}s to: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v26 = v17;
    v7 = v37;
    MEMORY[0x23EEB0B70](v26, -1, -1);
    MEMORY[0x23EEB0B70](v15, -1, -1);
  }

  v27 = v39;
  v5[7] = v38;
  v5[8] = v27;
  v5[9] = v40;
  v5[10].n128_u8[0] = 0;
  v5[10].n128_f64[1] = a1;
  v5[11].n128_u8[0] = 0;
  v28 = v5[5].n128_i64[1];
  v29 = v5[2];
  *&v30 = specialized simd_float4x4.init(translation:rotation:scale:)(v5[4].n128_f64[0], v5[3]);
  v36[2] = v31;
  v37 = v30;
  v36[1] = v32;
  v36[0] = v33;
  type metadata accessor for Entity();
  HasTransform.setTransformMatrix(_:relativeTo:)();
  static AnimationTimingFunction.default.getter();
  v34 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  (*(v8 + 8))(v11, v7);
  v35 = v5[11].n128_i64[1];
  v5[11].n128_u64[1] = v34;

  v5[1].n128_u8[0] = 1;
  DetectModeBoxModel.TransitionAnimation.state.didset();
}

void DetectModeBoxModel.TransitionAnimation.update(t:)(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for __EntityRef();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  if (v10 == 2)
  {
    v18 = *(v1 + 168) + 0.5;
    if (*(v1 + 176))
    {
      v18 = INFINITY;
    }

    v19 = a1 - v18 + a1 - v18;
    if (v19 <= 1.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1.0;
    }

    if (v19 > 0.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

    if (*(v1 + 96))
    {
      v22 = v7;
      v23 = *(v1 + 96);

      dispatch thunk of Entity.__coreEntity.getter();
      MEMORY[0x23EEAC640](&v30, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
      (*(v5 + 8))(v9, v22);
      REHierarchicalFadeComponentGetComponentType();
      v24 = REEntityGetOrAddComponentByClass();
      REHierarchicalFadeComponentSetOpacity();
      MEMORY[0x23EEB00C0](v24);
    }

    if (v21 >= 1.0)
    {
      *(v2 + 16) = 3;
      DetectModeBoxModel.TransitionAnimation.state.didset();
    }
  }

  else if (v10 == 1)
  {
    if (*(v1 + 184))
    {
      v11 = *(v1 + 184);

      v12 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

      if (v12)
      {
        if (*(v1 + 96))
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          __swift_project_value_buffer(v13, logger);
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_23B824000, v14, v15, "Done transform transition, start fading handles in...", v16, 2u);
            MEMORY[0x23EEB0B70](v16, -1, -1);
          }

          v17 = 2;
        }

        else
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          __swift_project_value_buffer(v25, logger);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_23B824000, v26, v27, "No fade target entity, completing transition.", v28, 2u);
            MEMORY[0x23EEB0B70](v28, -1, -1);
          }

          v17 = 3;
        }

        *(v2 + 16) = v17;

        DetectModeBoxModel.TransitionAnimation.state.didset();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void DetectModeBoxModel.TransitionAnimation.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for __EntityRef();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "TransitionAnimation cancel() called!", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  if (*(v1 + 184))
  {
    v11 = *(v1 + 184);

    dispatch thunk of AnimationPlaybackController.stop()();

    v12 = *(v1 + 184);
  }

  *(v1 + 184) = 0;

  if (*(v1 + 96))
  {
    v13 = *(v1 + 96);

    dispatch thunk of Entity.__coreEntity.getter();
    MEMORY[0x23EEAC640](&v16, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    (*(v3 + 8))(v6, v2);
    REHierarchicalFadeComponentGetComponentType();
    v14 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    MEMORY[0x23EEB00C0](v14);
  }

  *(v1 + 16) = 3;
  DetectModeBoxModel.TransitionAnimation.state.didset();
}

uint64_t DetectModeBoxModel.TransitionAnimation.__deallocating_deinit()
{
  v1 = v0[11];

  v2 = v0[12];

  v3 = v0[23];

  return swift_deallocClassInstance();
}

uint64_t DetectModeBoxModel.StartDetectionAnimation.start()()
{
  v1 = v0;
  v2 = type metadata accessor for AnimationTimingFunction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  type metadata accessor for Entity();
  HasTransform.transformMatrix(relativeTo:)();
  Transform.init(matrix:)();
  v38 = v9;
  v39 = v8;
  v37 = v10;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, logger);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v36 = v2;
    v16 = v15;
    v43 = v15;
    *v14 = 136446466;
    v40 = v39;
    v41 = v38;
    v42 = v37;
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v43);
    *&v39 = v3;
    v20 = v19;

    *(v14 + 4) = v20;
    *(v14 + 12) = 2082;
    v21 = *(v1 + 48);
    v22 = *(v1 + 64);
    v40 = *(v1 + 32);
    v41 = v21;
    v42 = v22;
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v43);

    *(v14 + 14) = v25;
    v3 = v39;
    _os_log_impl(&dword_23B824000, v12, v13, "Starting detection animation: \n fromXform=%{public}s \n toXform=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    v26 = v16;
    v2 = v36;
    MEMORY[0x23EEB0B70](v26, -1, -1);
    MEMORY[0x23EEB0B70](v14, -1, -1);
  }

  v27 = *(v1 + 32);
  v38 = *(v1 + 48);
  v39 = v27;
  v37 = *(v1 + 64);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.StartDetectionAnimation.start());
  v36 = v28;
  static simd_quatf.identity.getter();
  static AnimationTimingFunction.linear.getter();
  v29 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  v30 = *(v3 + 8);
  v30(v6, v2);
  v31 = *(v1 + 88);
  *(v1 + 88) = v29;

  v32 = *(v1 + 24);
  static AnimationTimingFunction.linear.getter();
  v33 = HasTransform.move(to:relativeTo:duration:timingFunction:)();
  v30(v6, v2);
  v34 = *(v1 + 96);
  *(v1 + 96) = v33;
}

uint64_t DetectModeBoxModel.StartDetectionAnimation.stop()()
{
  if (*(v0 + 88))
  {

    dispatch thunk of AnimationPlaybackController.stop()();

    v1 = *(v0 + 88);
    *(v0 + 88) = 0;

    if (*(v0 + 96))
    {
      v2 = *(v0 + 96);

      dispatch thunk of AnimationPlaybackController.stop()();

      v3 = *(v0 + 96);
    }

    *(v0 + 96) = 0;
  }

  return result;
}

uint64_t DetectModeBoxModel.StartDetectionAnimation.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[11];

  v4 = v0[12];

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v0[13], v0[14]);

  return swift_deallocClassInstance();
}

uint64_t DetectModeBoxModel.currentCaptureBox.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 == 1 || v2 == 2)
  {
    v10 = *(v1 + 80);
    v9 = *(v1 + 96);
    v12 = *(v1 + 112);
    v11 = *(v1 + 128);
    v13 = *(v1 + 144);
  }

  else if (v2 == 3 && *(v1 + 32))
  {
    v3 = a1;
    type metadata accessor for Entity();

    HasTransform.transformMatrix(relativeTo:)();
    v16 = v5;
    v17 = v4;
    v14 = v7;
    v15 = v6;

    v9 = v16;
    v10 = v17;
    v11 = v14;
    v12 = v15;
    a1 = v3;
    v13 = 0;
  }

  else
  {
    v11 = 0uLL;
    v13 = 1;
    v12 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v9;
  *(a1 + 32) = v12;
  *(a1 + 48) = v11;
  *(a1 + 64) = v13;
  return result;
}

Swift::Void __swiftcall DetectModeBoxModel.onDetectedBoundingBox(box:)(simd_float4x4 *box)
{
  if (*(v1 + 144))
  {
    v15 = v2;
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v6 = v1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      type metadata accessor for simd_float4x4(0);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23B824000, v8, v9, "First detected bounding box: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x23EEB0B70](v11, -1, -1);
      MEMORY[0x23EEB0B70](v10, -1, -1);

      v2 = v15;
      v3 = v16;
      v4 = v17;
      v5 = v18;
      v1 = v6;
    }

    else
    {

      v4 = v17;
      v5 = v18;
      v2 = v15;
      v3 = v16;
    }
  }

  *(v1 + 80) = v2;
  *(v1 + 96) = v3;
  *(v1 + 112) = v4;
  *(v1 + 128) = v5;
  *(v1 + 144) = 0;
  DetectModeBoxModel.detectedBoundingBox.didset();
}

Swift::Void __swiftcall DetectModeBoxModel.setVisible(_:)(Swift::Bool a1)
{
  v2 = v1;
  v3 = type metadata accessor for __EntityRef();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32))
  {
    v8 = *(v1 + 32);

    dispatch thunk of Entity.__coreEntity.getter();
    v9 = MEMORY[0x277D841D8];
    MEMORY[0x23EEAC640](&v15, MEMORY[0x277D841D8], MEMORY[0x277D841D8]);
    v10 = *(v4 + 8);
    v10(v7, v3);
    REHierarchicalFadeComponentGetComponentType();
    v11 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    MEMORY[0x23EEB00C0](v11);
    v12 = *(*(v2 + 240) + 40);

    dispatch thunk of Entity.__coreEntity.getter();
    MEMORY[0x23EEAC640](&v15, v9, v9);
    v10(v7, v3);
    REHierarchicalFadeComponentGetComponentType();
    v13 = REEntityGetOrAddComponentByClass();
    REHierarchicalFadeComponentSetOpacity();
    MEMORY[0x23EEB00C0](v13);
  }
}

Swift::Void __swiftcall DetectModeBoxModel.startRaycastManualBoxFlow()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 24) <= 1u)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    *v6 = static OS_dispatch_queue.main.getter();
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    v7 = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v6, v2);
    if (v7)
    {
      DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v1 + 24), 1u);
      *(v1 + 24) = 1;
      DetectModeBoxModel.startManualBoxFlow()();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void DetectModeBoxModel.updateAutomaticEntityWithBoundingBox(srtMatrix:)()
{
  if (*(v1 + 24) != 2)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*(v1 + 216))
  {
    return;
  }

  if (*(v1 + 224))
  {
    return;
  }

  v0 = *(v1 + 272);
  if (!v0)
  {
    return;
  }

  if ((*(v0 + 16) & 1) == 0)
  {
    v2 = one-time initialization token for logger;

    if (v2 == -1)
    {
LABEL_9:
      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, logger);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, v4, v5, "Starting bounding box animated updater...", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      *(v0 + 16) = 1;
      if (*(v0 + 96))
      {
        __break(1u);
        return;
      }

      BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()();
      goto LABEL_13;
    }

LABEL_17:
    swift_once();
    goto LABEL_9;
  }

LABEL_13:
  Transform.init(matrix:)();
  BoundingBoxAnimatedUpdater.setTargetWorld(transform:)(v7, v8, v9);
}

void DetectModeBoxModel.performSwitchStateTransitions(from:to:)(int a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
LABEL_4:
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v69[0] = v16;
      *v15 = 136315138;
      v68 = a1;
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v69);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_23B824000, v13, v14, "Punting transition since states match: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x23EEB0B70](v16, -1, -1);
      v20 = v15;
LABEL_38:
      MEMORY[0x23EEB0B70](v20, -1, -1);
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  if (a1 == a2)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_52;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = off_284E43808[0];
    type metadata accessor for DataModel.LocalDetectBoxDelegate();
    v21();
    swift_unknownObjectRelease();
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, logger);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v67 = a1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v69[0] = v27;
    *v26 = 136315394;
    v68 = a1;
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v69);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2080;
    v68 = a2;
    v31 = String.init<A>(describing:)();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v69);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_23B824000, v23, v24, "Switching from %s to %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v27, -1, -1);
    MEMORY[0x23EEB0B70](v26, -1, -1);
  }

  if (!*(v3 + 64))
  {
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v34 = *(v3 + 72);
  type metadata accessor for Entity();

  HasTransform.transformMatrix(relativeTo:)();
  Transform.init(matrix:)();
  v65 = v36;
  v66 = v35;
  HasTransform.scale(relativeTo:)();
  v64 = v37;

  v38 = v67;
  if (v67 > 1u)
  {
    if (v67 == 2)
    {
      DetectModeBoxModel.removeGestureRecognizers()();
      v42 = *(v3 + 272);
      if (v42)
      {
        v43 = *(v3 + 272);
        if (*(v42 + 96))
        {

          dispatch thunk of AnimationPlaybackController.stop()();

          v44 = *(v42 + 96);
          *(v42 + 96) = 0;
        }

        else
        {
        }

        *(v42 + 16) = 0;
      }
    }

    else
    {
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_23B824000, v45, v46, "Removing the manual box manipulator and gestures...", v47, 2u);
        MEMORY[0x23EEB0B70](v47, -1, -1);
      }

      DetectModeBoxModel.removeGestureRecognizers()();
      DetectModeBoxModel.enableBoxManipulator(state:)(0);
      v48 = *(v3 + 240);
      BoundingBoxScaleManipulator.detach()();
    }
  }

  else if (v67)
  {
    if (*(v3 + 32))
    {
      v39 = *(v3 + 32);

      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    v40 = *(v3 + 40);
    type metadata accessor for ModelEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    v41 = *(v3 + 240);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.detachFrontFaceRotationWidget()();
  }

  if (!swift_weakLoadStrong())
  {
    v13 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_23B824000, v13, v54, "DataModel is nil!", v55, 2u);
      v20 = v55;
      goto LABEL_38;
    }

LABEL_39:

    return;
  }

  if (a2 - 2 < 2)
  {
    if (v38 != 1)
    {
LABEL_35:
      DetectModeBoxModel.installGestureRecognizers()();
      return;
    }

    v49 = *(v3 + 48);
    v50 = *(v3 + 32);
    *(v3 + 32) = v49;
    swift_retain_n();

    if (*(v3 + 32))
    {
      if (swift_weakLoadStrong())
      {
        swift_retain_n();
        DataModel.addToScene(entity:)();
      }
    }

    v51 = v64;
    v51.n128_u32[1] = 981668463;
    DetectModeBoxModel.scheduleTransitionAnimation(from:)(v51, v66, v65);
    if (v49)
    {
      type metadata accessor for BoundingBoxAnimatedUpdater();
      swift_allocObject();
      v52 = specialized BoundingBoxAnimatedUpdater.init(entity:duration:autoStart:)(1.0, v49, 0);

      v53 = *(v3 + 272);
      *(v3 + 272) = v52;

      goto LABEL_35;
    }

    goto LABEL_54;
  }

  if (a2)
  {
    LOBYTE(v69[0]) = 1;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 1;
    DetectModeBoxModel.detectedBoundingBox.didset();
    v59 = *(v3 + 240);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.removeGestureRecognizers()();
    DetectModeBoxModel.cancelAnimations()();
    DetectModeBoxModel.subscribeToUpdateEvents()();
    if (*(v3 + 32))
    {
      v60 = *(v3 + 32);

      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    v61 = *(v3 + 40);
    type metadata accessor for ModelEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.detachFrontFaceRotationWidget()();
    v62 = *(v3 + 64);
    if (!v62)
    {
      goto LABEL_55;
    }

    v63 = *(v3 + 32);
    *(v3 + 32) = v62;

    if (*(v3 + 32) && swift_weakLoadStrong())
    {
      swift_retain_n();
      DataModel.addToScene(entity:)();
    }

    *(v3 + 232) = *(v3 + 208);
  }

  else
  {
    LOBYTE(v69[0]) = 1;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
    *(v3 + 128) = 0u;
    *(v3 + 144) = 1;
    DetectModeBoxModel.detectedBoundingBox.didset();
    v56 = *(v3 + 240);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.removeGestureRecognizers()();
    DetectModeBoxModel.cancelAnimations()();
    if (*(v3 + 32))
    {
      v57 = *(v3 + 32);

      HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    }

    v58 = *(v3 + 40);
    type metadata accessor for ModelEntity();
    HasHierarchy.removeFromParent(preservingWorldTransform:)(0);
    BoundingBoxScaleManipulator.detach()();
    DetectModeBoxModel.detachFrontFaceRotationWidget()();
    DetectModeBoxModel.unsubscribeFromUpdateEvents()();
  }
}

Swift::Void __swiftcall DetectModeBoxModel.setBoundingBoxMatrix(box:)(simd_float4x4 *box)
{
  if (*(v1 + 24) != 3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = *(v1 + 272);
  if (v2 && *(v2 + 16) == 1)
  {
    v3 = one-time initialization token for logger;

    if (v3 == -1)
    {
LABEL_5:
      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, logger);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_23B824000, oslog, v5, "Bounding box is being directly set while an animation on it is running!", v6, 2u);
        MEMORY[0x23EEB0B70](v6, -1, -1);
      }

      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_5;
  }

  if (*(v1 + 32))
  {
    type metadata accessor for Entity();

    HasTransform.setTransformMatrix(_:relativeTo:)();
  }
}

uint64_t @objc DetectModeBoxModel.handleRotate(_:)(uint64_t a1, uint64_t a2, void *a3, const char *a4, uint64_t a5, const char *a6)
{
  v9 = a3;

  specialized DetectModeBoxModel.handleRotate(_:)(a4, a5, a6);
}

void DetectModeBoxModel.installGestureRecognizers()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.EntityGestures();
  isa = v2[-1].isa;
  v4 = *(isa + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
LABEL_40:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v63 = __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Connecting the RealityKit EntityGestureRecognizers (translate and rotate)...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  if (!v1[4])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v67 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_23B824000, v67, v54, "DataModel is nil!", v55, 2u);
      MEMORY[0x23EEB0B70](v55, -1, -1);
    }

    v56 = v67;

    return;
  }

  v57 = Strong;
  v12 = *(Strong + 16);
  if (!v12)
  {
    goto LABEL_43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit6ARViewC14EntityGesturesVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6ARViewC14EntityGesturesVGMR);
  v13 = *(isa + 72);
  v14 = (*(isa + 80) + 32) & ~*(isa + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23B91A6F0;
  v16 = v12;
  static ARView.EntityGestures.rotation.getter();
  v69 = v15;
  lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [ARView.EntityGestures] and conformance [A], &_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  if (!v1[6])
  {
LABEL_44:
    __break(1u);
    return;
  }

  v17 = v1[7];
  v18 = ARView.installGestures(_:for:)();

  v19 = *(isa + 8);
  isa += 8;
  v19(v6, v2);
  v62 = *(v18 + 16);
  if (v62)
  {
    v20 = 0;
    v61 = v18 + 32;
    v58 = v1;
    do
    {
      if (v20 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v21 = *(v61 + 16 * v20);
      isa = type metadata accessor for EntityTranslationGestureRecognizer();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v66 = v21;
        v67 = v22;
        v23 = v21;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_23B824000, v24, v25, "Connected EntityTranslateGestureRecognizer handleTranslate selector and delegate!", v26, 2u);
          MEMORY[0x23EEB0B70](v26, -1, -1);
        }

        v27 = v20;

        v65 = v23;
        v28 = v67;
        [v67 addTarget:v1 action:sel_handleTranslate_];
        v29 = v1[33];
        if (!v29)
        {
          __break(1u);
          goto LABEL_42;
        }

        v6 = v1[30];
        v64 = type metadata accessor for EntityGestureRecognizerDelegate();
        v30 = objc_allocWithZone(v64);
        v31 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityTranslateGesture;
        *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityTranslateGesture] = 0;
        *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityRecognizers] = v18;
        *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxScaleManipulator] = v6;
        *&v30[OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxRotateManipulator] = v29;
        v32 = *(v18 + 16);
        if (v32)
        {
          swift_beginAccess();
          v59 = v6;
          swift_retain_n();
          v60 = v29;
          swift_retain_n();
          swift_bridgeObjectRetain_n();
          v33 = 0;
          v34 = 32;
          do
          {
            v35 = *(v18 + v34);
            v36 = swift_dynamicCastClass();
            if (v36)
            {
              v37 = v36;
              *&v30[v31] = v36;
              v38 = v35;

              v33 = v37;
            }

            v34 += 16;
            --v32;
          }

          while (v32);
          swift_endAccess();

          v1 = v58;
          v6 = v59;
          v28 = v67;
          v2 = v60;
        }

        else
        {
          swift_retain_n();
          swift_retain_n();

          v2 = v29;
        }

        v68.receiver = v30;
        v68.super_class = v64;
        v45 = objc_msgSendSuper2(&v68, sel_init, v57);

        v46 = v1[35];
        v1[35] = v45;

        [v28 setDelegate:v1[35]];
        v20 = v27;
        v21 = v66;
      }

      else
      {
        type metadata accessor for EntityRotationGestureRecognizer();
        v39 = swift_dynamicCastClass();
        v40 = v21;
        v2 = Logger.logObject.getter();
        if (v39)
        {
          v41 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v2, v41))
          {
            v42 = v21;
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_23B824000, v2, v41, "Connected EntityTranslateGestureRecognizer handleRotate selector.", v43, 2u);
            v44 = v43;
            v21 = v42;
            MEMORY[0x23EEB0B70](v44, -1, -1);
          }

          [v39 addTarget:v1 action:{sel_handleRotate_, v57}];
        }

        else
        {
          v47 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v2, v47))
          {
            v48 = v21;
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&dword_23B824000, v2, v47, "Unknown EntityGestureRecognizer found!", v49, 2u);
            v50 = v49;
            v21 = v48;
            MEMORY[0x23EEB0B70](v50, -1, -1);
          }
        }
      }

      ++v20;
    }

    while (v20 != v62);
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_23B824000, v51, v52, "... done adding EntityTranslateGestureRecognizer gesture recognizers.", v53, 2u);
    MEMORY[0x23EEB0B70](v53, -1, -1);
  }
}

uint64_t DetectModeBoxModel.removeGestureRecognizers()()
{
  v1 = v0;
  v2 = type metadata accessor for ARView.EntityGestures();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23B824000, v8, v9, "Trying to remove EntityTranslateGestureRecognizer gesture recognizers...", v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 16);
    v13 = v12;

    if (v12)
    {
      v15[1] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type ARView.EntityGestures and conformance ARView.EntityGestures();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR);
      lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type [ARView.EntityGestures] and conformance [A], &_sSay10RealityKit6ARViewC14EntityGesturesVGMd, &_sSay10RealityKit6ARViewC14EntityGesturesVGMR);
      result = dispatch thunk of SetAlgebra.init<A>(_:)();
      if (*(v1 + 48))
      {
        v14 = *(v1 + 56);
        ARView.installGestures(_:for:)();

        return (*(v3 + 8))(v6, v2);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t DetectModeBoxModel.loadWireframeAsync()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23B824000, v1, v2, "Async loading wire frame box...", v3, 2u);
    MEMORY[0x23EEB0B70](v3, -1, -1);
  }

  type metadata accessor for Entity();
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v4 = static BoundingBoxHelpers.bundle;
  MEMORY[0x23EEAD3D0](0x676E69646E756F42, 0xEF65627543786F42, static BoundingBoxHelpers.bundle);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = 1056964608;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  lazy protocol witness table accessor for type LoadRequest<ModelEntity> and conformance LoadRequest<A>(&lazy protocol witness table cache variable for type LoadRequest<ModelEntity> and conformance LoadRequest<A>, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMd, &_s10RealityKit11LoadRequestCyAA11ModelEntityCGMR);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B824000, v7, v8, "Async loading wire frame reticle...", v9, 2u);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  MEMORY[0x23EEAD3D0](0xD000000000000010, 0x800000023B926890, v4);
  swift_allocObject();
  swift_weakInit();
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in DetectModeBoxModel.loadWireframeAsync()(uint64_t *a1, float a2)
{
  v3 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "... done loading wire frame box.", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_23B91A6F0;
  type metadata accessor for BoundingBoxHelpers();
  static BoundingBoxHelpers.makeBoxMaterial()((v8 + 32));
  type metadata accessor for ModelEntity();
  v9 = HasModel.model.modify();
  v11 = v10;
  v12 = type metadata accessor for ModelComponent();
  result = (*(*(v12 - 8) + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    ModelComponent.materials.setter();
    v9(v21, 0);
    v14 = type metadata accessor for Entity();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    Entity.init()();
    HasHierarchy.addChild(_:preservingWorldTransform:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = a2;
    *(inited + 36) = a2;
    *(inited + 40) = a2;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    swift_setDeallocating();
    HasTransform.setScale(_:relativeTo:)();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
    }

    v19 = *(Strong + 48);

    if (v19)
    {
      v20 = *v19;
      HasHierarchy.addChild(_:preservingWorldTransform:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #4 in DetectModeBoxModel.loadWireframeAsync()(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "... done loading wire frame reticle.", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_23B91A6F0;
    type metadata accessor for BoundingBoxHelpers();
    static BoundingBoxHelpers.makeBoxMaterial()((v8 + 32));
    type metadata accessor for ModelEntity();
    v9 = HasModel.model.modify();
    v11 = v10;
    v12 = type metadata accessor for ModelComponent();
    result = (*(*(v12 - 8) + 48))(v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      ModelComponent.materials.setter();
      v9(v18, 0);
      v13 = type metadata accessor for Entity();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      Entity.init()();
      HasHierarchy.addChild(_:preservingWorldTransform:)();
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of closure #4 in DetectModeBoxModel.loadWireframeAsync());
      result = HasTransform.scale.setter();
      if (*(v7 + 64))
      {
        v16 = *(v7 + 72);
        v17 = *(v7 + 64);

        HasHierarchy.addChild(_:preservingWorldTransform:)();
      }
    }

    __break(1u);
  }

  return result;
}

void DetectModeBoxModel.scheduleTransitionAnimation(from:)(__n128 a1, float32x4_t a2, __n128 a3)
{
  if (*(v3 + 216))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, oslog, v5, "scheduleTransitionAnimation called when there was already one!  Punting...", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }
  }

  else
  {
    v7 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446210;
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_23B824000, v9, v10, "scheduleTransitionAnimation from: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x23EEB0B70](v12, -1, -1);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    if (*(v7 + 32) && (v16 = *(v7 + 32), , specialized simd_float4x4.init(translation:rotation:scale:)(a3.n128_f64[0], a2), type metadata accessor for Entity(), HasTransform.setTransformMatrix(_:relativeTo:)(), , (v17 = *(v7 + 32)) != 0))
    {
      type metadata accessor for DetectModeBoxModel.TransitionAnimation();
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 1;
      *(v18 + 168) = 0;
      *(v18 + 176) = 1;
      *(v18 + 184) = 0;
      *(v18 + 96) = 0;
      *(v18 + 104) = 0x3FE0000000000000;
      *(v18 + 32) = a1;
      *(v18 + 48) = a2;
      *(v18 + 64) = a3;
      *(v18 + 80) = 0x3FE0000000000000;
      *(v18 + 88) = v17;
      v19 = *(v7 + 216);
      *(v7 + 216) = v18;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t DetectModeBoxModel.cancelAnimations()()
{
  if (v0[27])
  {

    DetectModeBoxModel.TransitionAnimation.cancel()();

    v1 = v0[27];
  }

  v0[27] = 0;

  if (v0[28])
  {
    v2 = v0[28];

    DetectModeBoxModel.StartDetectionAnimation.stop()();

    v3 = v0[28];
  }

  v0[28] = 0;

  v0[29] = 0xFFF0000000000000;
  return result;
}

double DetectModeBoxModel.viewportCenterPoint.getter()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    if (v1)
    {
      v2 = v1;
      [v2 bounds];
      v3 = CGRectGetWidth(v9) * 0.5;
      [v2 bounds];
      CGRectGetHeight(v10);

      return v3;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "No model or ARView: using (512, 512) for viewport center...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  return 512.0;
}

double DetectModeBoxModel.computeScreenPointFromNormalized(pointNDC:)(float64_t a1, float64_t a2)
{
  Strong = swift_weakLoadStrong();
  result = 0.0;
  if (Strong)
  {
    v4 = *(Strong + 16);
    if (v4)
    {
      v5 = v4;
      [v5 bounds];
      Width = CGRectGetWidth(v19);
      [v5 bounds];
      Height = CGRectGetHeight(v20);

      v6.f64[0] = a1;
      v6.f64[1] = a2;
      __asm { FMOV            V0.2D, #1.0 }

      v12 = vaddq_f64(v6, _Q0);
      __asm { FMOV            V1.2D, #0.5 }

      v14 = vmulq_f64(v12, _Q1);
      _Q1.f64[0] = Width;
      _Q1.f64[1] = Height;
      *&result = *&vmulq_f64(v14, _Q1);
    }

    else
    {

      return 0.0;
    }
  }

  return result;
}

void DetectModeBoxModel.update(deltaTime:)(double a1)
{
  *(v1 + 208) = *(v1 + 208) + a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(v1 + 24) == 1)
    {
      DetectModeBoxModel.updateDetectingState(model:)(Strong);
    }

    DetectModeBoxModel.updateAnimations(t:)(*(v1 + 208));
    if (*(v1 + 32))
    {
      type metadata accessor for Entity();

      HasTransform.transformMatrix(relativeTo:)();
      if (!*(v1 + 264))
      {
LABEL_37:
        __break(1u);
        return;
      }

      v3 = *(v1 + 208);
      v4 = *(v1 + 264);

      BoundingBoxRotateManipulator.update(time:box:)(v3, v5);

      v6 = *(v1 + 240);
      v7 = swift_weakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = *(v6 + 40);
        HasTransform.setTransformMatrix(_:relativeTo:)();
        v10 = *(v6 + 40);
        HasTransform.scale(relativeTo:)();
        v11 = *(v6 + 40);
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.update(deltaTime:));
        HasTransform.setScale(_:relativeTo:)();
        v12 = *(v6 + 48);
        v13 = *(v8 + 16);
        v27 = v13;
        Transform.init(matrix:)();
        v28 = v15;
        v29 = v14;
        *oslog = v16;
        BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v13, v16);
        swift_beginAccess();
        v17 = *(v12 + 40);
        if (v17 >> 62)
        {
          if (v17 < 0)
          {
            v26 = *(v12 + 40);
          }

          v18 = __CocoaSet.count.getter();
        }

        else
        {
          v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v18)
        {
LABEL_26:

          *(v12 + 64) = *oslog;
          *(v12 + 80) = v29;
          *(v12 + 96) = v28;
          *(v12 + 112) = 0;
          return;
        }

        v19 = 0;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEAFC40](v19, v17);
            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          else
          {
            if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_32;
            }

            v20 = *(v17 + 8 * v19 + 32);

            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_19;
            }
          }

          if (*(v12 + 120))
          {
            break;
          }

          v22 = *(v12 + 116);
          BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)();

          ++v19;
          if (v21 == v18)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
        goto LABEL_37;
      }
    }
  }

  else
  {
LABEL_20:
    if (one-time initialization token for logger != -1)
    {
LABEL_32:
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);
    osloga = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23B824000, osloga, v24, "Model is nil!", v25, 2u);
      MEMORY[0x23EEB0B70](v25, -1, -1);
    }
  }
}

void DetectModeBoxModel.updateAnimations(t:)(double a1)
{
  v2 = v1;
  v3 = *(v1 + 216);
  if (!v3)
  {
    goto LABEL_15;
  }

  if (*(v3 + 16) == 3)
  {
    *(v1 + 216) = 0;
    DetectModeBoxModel.attachBoxManipulator()();
    DetectModeBoxModel.enableBoxManipulator(state:)(1);
LABEL_14:

    goto LABEL_15;
  }

  if (*(v3 + 16))
  {
    v31 = *(v1 + 208);
    v32 = *(v1 + 216);

    DetectModeBoxModel.TransitionAnimation.update(t:)(v31);
    goto LABEL_14;
  }

  if (*(v1 + 32) && (*(v1 + 144) & 1) == 0)
  {
    v5 = *(v1 + 80);
    v6 = *(v1 + 88);
    v7 = *(v1 + 96);
    v8 = *(v1 + 104);
    v9 = *(v1 + 112);
    v10 = *(v1 + 128);
    v36 = *(v1 + 136);
    v37 = *(v1 + 120);
    v11 = one-time initialization token for logger;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v38 = v16;
      *v15 = 136446210;
      type metadata accessor for simd_float4x4(0);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v38);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_23B824000, v13, v14, "updateAnimation(): got box, starting anim to: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x23EEB0B70](v16, -1, -1);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    if (*(v2 + 144))
    {
      __break(1u);
      return;
    }

    v20 = *(v2 + 80);
    v21 = *(v2 + 88);
    v22 = *(v2 + 96);
    v23 = *(v2 + 104);
    v24 = *(v2 + 112);
    v25 = *(v2 + 120);
    v26 = *(v2 + 128);
    v27 = *(v2 + 136);
    Transform.init(matrix:)();
    DetectModeBoxModel.TransitionAnimation.startAnimation(at:to:)(a1, v28, v29, v30);
    goto LABEL_14;
  }

LABEL_15:
  v33 = *(v2 + 272);
  if (v33 && *(v33 + 16) == 1)
  {
    if (*(v33 + 96))
    {

      if ((AnimationPlaybackController.isPlaying.getter() & 1) != 0 && (dispatch thunk of AnimationPlaybackController.isComplete.getter() & 1) == 0)
      {
      }

      else
      {
        v34 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

        if (v34)
        {
          v35 = *(v33 + 96);
          *(v33 + 96) = 0;
        }
      }
    }

    else
    {

      BoundingBoxAnimatedUpdater.startNewAnimationIfNeeded()();
    }
  }
}

void DetectModeBoxModel.updateDetectingState(model:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 224);
  if (v3)
  {
    if (*(v3 + 88))
    {

      v4 = dispatch thunk of AnimationPlaybackController.isComplete.getter();

      if (v4)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        __swift_project_value_buffer(v5, logger);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_23B824000, v6, v7, "StartDetectionAnimation complete! Finishing...", v8, 2u);
          MEMORY[0x23EEB0B70](v8, -1, -1);
        }

        v9 = *(v2 + 224);
        if (v9)
        {
          v10 = *(v9 + 104);
          if (v10)
          {
            v11 = *(v9 + 112);

            v10(v12);
            outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v11);
          }
        }

        v13 = *(v2 + 224);
        *(v2 + 224) = 0;
      }
    }
  }

  else
  {
    DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:)(a1);
    if (*(v1 + 144))
    {
      v14 = *(v1 + 232) + 0.5;
      if (v14 <= *(v1 + 208))
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, logger);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_23B824000, v32, v33, "Didn't get an automatic box in time.  Starting manual box flow...", v34, 2u);
          MEMORY[0x23EEB0B70](v34, -1, -1);
        }

        DetectModeBoxModel.startManualBoxFlow()();
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, logger);

        oslog = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(oslog, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 134217984;
          *(v17 + 4) = v14 - *(v2 + 208);
          _os_log_impl(&dword_23B824000, oslog, v16, "... waiting for automatic detected box arrival.  Time remaining: %fs", v17, 0xCu);
          MEMORY[0x23EEB0B70](v17, -1, -1);
        }
      }
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, logger);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23B824000, v19, v20, "Starting automatic bounding box flow...", v21, 2u);
        MEMORY[0x23EEB0B70](v21, -1, -1);
      }

      if (*(v2 + 144))
      {
        __break(1u);
      }

      else
      {
        v22 = *(v2 + 80);
        v23 = *(v2 + 88);
        v24 = *(v2 + 96);
        v25 = *(v2 + 104);
        v26 = *(v2 + 112);
        v27 = *(v2 + 120);
        v28 = *(v2 + 128);
        v29 = *(v2 + 136);
        v30 = swift_allocObject();
        swift_weakInit();

        DetectModeBoxModel.startTransitionAnim(toBox:onFinish:)(partial apply for closure #1 in DetectModeBoxModel.startAutomaticBoxFlow(), v30);

        if (swift_weakLoadStrong())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.setter();
        }
      }
    }
  }
}

void DetectModeBoxModel.startTransitionAnim(toBox:onFinish:)(uint64_t a1, uint64_t a2)
{
  *&v5 = specialized static BoundingBoxHelpers.getSquishedBoxBottomTransform(boxWorld:)();
  v13 = v6;
  v14 = v5;
  v12 = v7;
  v8 = v2[8];
  if (v8)
  {
    v9 = v2[9];
    type metadata accessor for DetectModeBoxModel.StartDetectionAnimation();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    *(v10 + 32) = v14;
    *(v10 + 48) = v13;
    *(v10 + 64) = v12;
    *(v10 + 80) = 0x3FE0000000000000;
    *(v10 + 88) = 0;
    *(v10 + 96) = 0;
    *(v10 + 104) = a1;
    *(v10 + 112) = a2;
    v11 = v2[28];
    v2[28] = v10;

    outlined copy of (@escaping @callee_guaranteed () -> ())?(a1);

    DetectModeBoxModel.StartDetectionAnimation.start()();
  }

  else
  {
    __break(1u);
  }
}

void DetectModeBoxModel.startManualBoxFlow()()
{
  if (*(v0 + 24) != 1)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 16);
    v4 = v3;

    if (v3)
    {
      specialized static ManualBoxHelper.createDefaultManualBoxAtCurrentView(arView:)(v4, v36);
      if (v37)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        __swift_project_value_buffer(v5, logger);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_23B824000, v6, v7, "Cannot create a manual box with a raycast!  Using a default!", v8, 2u);
          MEMORY[0x23EEB0B70](v8, -1, -1);
        }

        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.startManualBoxFlow());
        *oslog = v9;
        LODWORD(v10) = 0;
        DWORD2(v12) = 0;
        HIDWORD(v10) = v11;
        v32 = v10;
        *&v12 = 0;
        *&v13 = 0;
        *(&v13 + 1) = v14;
        HIDWORD(v12) = v15;
        v30 = v13;
        v31 = v12;
      }

      else
      {
        v32 = v36[1];
        *oslog = v36[0];
        v30 = v36[2];
        v31 = v36[3];
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v19 = off_284E43810[0];
        type metadata accessor for DataModel.LocalDetectBoxDelegate();
        v19();
        swift_unknownObjectRelease();
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136315138;
        Transform.init(matrix:)();
        v25 = String.init<A>(describing:)();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v35);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_23B824000, v21, v22, "Using manual box: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x23EEB0B70](v24, -1, -1);
        MEMORY[0x23EEB0B70](v23, -1, -1);
      }

      *(v1 + 80) = *oslog;
      *(v1 + 96) = v32;
      *(v1 + 112) = v30;
      *(v1 + 128) = v31;
      *(v1 + 144) = 0;
      DetectModeBoxModel.detectedBoundingBox.didset();
      v28 = swift_weakLoadStrong();
      if (v28)
      {
        DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:)(v28);

        v29 = swift_allocObject();
        swift_weakInit();

        DetectModeBoxModel.startTransitionAnim(toBox:onFinish:)(partial apply for closure #1 in DetectModeBoxModel.startManualBoxFlow(), v29);

        if (swift_weakLoadStrong())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v35) = 1;
          static Published.subscript.setter();
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);
  osloga = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23B824000, osloga, v17, "Cannot start manual box flow without a valid ARView!", v18, 2u);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }
}

uint64_t closure #1 in DetectModeBoxModel.startAutomaticBoxFlow()(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23B824000, v11, v12, a2, v13, 2u);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    *v9 = static OS_dispatch_queue.main.getter();
    (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
    v16 = _dispatchPreconditionTest(_:)();
    result = (*(v6 + 8))(v9, v5);
    if ((v16 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    DetectModeBoxModel.performSwitchStateTransitions(from:to:)(*(v15 + 24), a3);
    *(v15 + 24) = a3;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = swift_weakLoadStrong();

    if (v18)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v19[15] = 0;
      return static Published.subscript.setter();
    }
  }

  return result;
}

void DetectModeBoxModel.attachBoxManipulator()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
LABEL_24:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Attaching box face handle manipulator...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  v6 = *(v1 + 240);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_29;
  }

  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = Strong;
    v10 = *(v1 + 32);

    BoundingBoxScaleManipulator.attach(model:target:enabled:)(v9, v8, 0);

    DetectModeBoxModel.currentCaptureBox.getter(&v32);
    if ((v33 & 1) == 0)
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = *(v6 + 40);
        type metadata accessor for Entity();
        HasTransform.setTransformMatrix(_:relativeTo:)();
        v14 = *(v6 + 40);
        HasTransform.scale(relativeTo:)();
        v15 = *(v6 + 40);
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.attachBoxManipulator());
        HasTransform.setScale(_:relativeTo:)();
        v16 = *(v6 + 48);
        v17 = *(v12 + 16);
        v28 = v17;
        Transform.init(matrix:)();
        v29 = v19;
        v30 = v18;
        v31 = v20;
        BoundingBoxScaleManipulator.FaceHandleContainer.setScaleFromScreenConstraints(arView:extents:)(v17, v20);
        swift_beginAccess();
        v21 = *(v16 + 40);
        if (v21 >> 62)
        {
          if (v21 < 0)
          {
            v27 = *(v16 + 40);
          }

          v22 = __CocoaSet.count.getter();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v22)
        {
          v23 = 0;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              MEMORY[0x23EEAFC40](v23, v21);
              v25 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_24;
              }

              v24 = *(v21 + 8 * v23 + 32);

              v25 = v23 + 1;
              if (__OFADD__(v23, 1))
              {
                goto LABEL_20;
              }
            }

            if (*(v16 + 120))
            {
              break;
            }

            v26 = *(v16 + 116);
            BoundingBoxScaleManipulator.FaceHandle.setPositionLocal(extents:minDistance:)();

            ++v23;
            if (v25 == v22)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_21:

        *(v16 + 64) = v31;
        *(v16 + 80) = v30;
        *(v16 + 96) = v29;
        *(v16 + 112) = 0;
      }
    }

    DetectModeBoxModel.attachFrontFaceRotationWidget()();
    return;
  }

LABEL_30:
  __break(1u);
}

void DetectModeBoxModel.enableBoxManipulator(state:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Removing completed TransitionAnimation and enabling face handles!", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = *(v2 + 240);
  v9 = *(v8 + 96);
  *(v8 + 96) = a1 & 1;
  if (v9 != (a1 & 1))
  {
    if (a1)
    {
      BoundingBoxScaleManipulator.attachGestures()();
    }

    else
    {
      BoundingBoxScaleManipulator.detachGestures()();
    }
  }
}

void DetectModeBoxModel.attachFrontFaceRotationWidget()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "attachFrontFaceIndicator called...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(v1 + 264))
    {
      v7 = Strong;
      v8 = *(v1 + 264);

      BoundingBoxRotateManipulator.attach(model:)(v7);

      v9 = OBJC_IVAR____TtC19_RealityKit_SwiftUI9DataModel_pointCloudsBySegment;
      swift_beginAccess();
      v10 = *(*(v7 + v9) + 16);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      if (v10 != 1)
      {
        if (v13)
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_23B824000, v11, v12, "Not showing the box front face indicator since this is not the first segment.", v17, 2u);
          MEMORY[0x23EEB0B70](v17, -1, -1);
        }

        v18 = *(v1 + 264);
        if (v18)
        {
          v16 = *(v18 + 256);

          BoundingBoxRotateManipulator.showFrontFaceIndicator.willset(0);
          *(v18 + 256) = 0;
          goto LABEL_16;
        }

LABEL_20:
        __break(1u);
        return;
      }

      if (v13)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23B824000, v11, v12, "Showing the box front face indicator since this is the first segment.", v14, 2u);
        MEMORY[0x23EEB0B70](v14, -1, -1);
      }

      v15 = *(v1 + 264);
      if (v15)
      {
        v16 = *(v15 + 256);
        *(v15 + 256) = 1;

LABEL_16:
        BoundingBoxRotateManipulator.showFrontFaceIndicator.didset(v16);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void DetectModeBoxModel.detachFrontFaceRotationWidget()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "detachFrontFaceIndicator...", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  if (*(v1 + 264))
  {
    v6 = *(v1 + 264);

    BoundingBoxRotateManipulator.detach()();
  }

  else
  {
    __break(1u);
  }
}

void DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23B824000, v5, v6, "Sticking reticle model to screen...", v7, 2u);
    MEMORY[0x23EEB0B70](v7, -1, -1);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v8;
    DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:)(0.9, 0.02);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B91A6D0;
    *(inited + 32) = 0;
    *(inited + 40) = -1130113270;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
    oslogb = v11;
    swift_setDeallocating();
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
    v43 = v12;
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.makePlane(origin:normal:));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.makePlane(origin:normal:));
    *v14.i64 = simd_quaternion(v43, v13);
    v44 = v14;
    static simd_quatf.identity.getter();
    specialized simd_float4x4.init(translation:rotation:scale:)(oslogb, v44);
    DetectModeBoxModel.viewportCenterPoint.getter();
    *&v15 = COERCE_DOUBLE(ARView.unproject(_:ontoPlane:relativeToCamera:)());
    if (v16)
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v50 = v20;
        *v19 = 136315138;
        DetectModeBoxModel.viewportCenterPoint.getter();
        type metadata accessor for CGPoint(0);
        v21 = String.init<A>(describing:)();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v50);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_23B824000, v17, v18, "Can't unproject viewport center: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x23EEB0B70](v20, -1, -1);
        MEMORY[0x23EEB0B70](v19, -1, -1);
      }
    }

    else
    {
      v26 = *&v15;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
      *oslogc = v27;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
      *v29.i64 = simd_quaternion(*oslogc, v28);
      oslogd = v29;
      dispatch thunk of ARView.cameraTransform.getter();
      v30 = vnegq_f32(oslogd);
      v31 = vtrn2q_s32(oslogd, vtrn1q_s32(oslogd, v30));
      v33 = vrev64q_s32(oslogd);
      v33.i32[0] = v30.i32[1];
      v33.i32[3] = v30.i32[2];
      osloga = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(oslogd, v30, 8uLL), *v32.f32, 1), vextq_s8(v31, v31, 8uLL), v32.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(oslogd, v32, 3), v33, v32, 2));
      static simd_quatf.identity.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v50 = v37;
        *v36 = 136315138;
        v38 = String.init<A>(describing:)();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v50);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_23B824000, v34, v35, "transformWorld: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x23EEB0B70](v37, -1, -1);
        MEMORY[0x23EEB0B70](v36, -1, -1);
      }

      v41 = *(v2 + 64);
      if (v41)
      {
        v42 = *(v2 + 72);
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #3 of DetectModeBoxModel.stickReticleModelToScreenCoordinates(model:));
        outlined copy of DetectModeBoxModel.TargetReticleEntity?(v41);
        specialized simd_float4x4.init(translation:rotation:scale:)(v26, osloga);
        type metadata accessor for Entity();
        HasTransform.setTransformMatrix(_:relativeTo:)();
        HasTransform.setScale(_:relativeTo:)();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23B824000, oslog, v24, "ARView was nil!", v25, 2u);
      MEMORY[0x23EEB0B70](v25, -1, -1);
    }
  }
}

__n128 DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:)(float a1, float a2)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:));
  v37 = v4;
  DetectModeBoxModel.computeScreenPointFromNormalized(pointNDC:)(0.0, 0.0);
  if (v5 & 1) != 0 || (DetectModeBoxModel.computeScreenPointFromNormalized(pointNDC:)(a1, 0.0), (v6))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_8;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Can't get screen points from normalized points!";
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91A6D0;
  *(inited + 32) = 0;
  *(inited + 40) = -a2;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(inited);
  v36 = v14;
  swift_setDeallocating();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.computeWorldScaleForTargetReticle(arView:reticleEdgeNDC:offsetToPlane:));
  v34 = v15;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DetectModeBoxModel.makePlane(origin:normal:));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DetectModeBoxModel.makePlane(origin:normal:));
  *v17.i64 = simd_quaternion(v34, v16);
  v35 = v17;
  static simd_quatf.identity.getter();
  specialized simd_float4x4.init(translation:rotation:scale:)(v36, v35);
  v18 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
  if ((v20 & 1) == 0)
  {
    v21 = v18;
    v22 = v19;
    v23 = ARView.unproject(_:ontoPlane:relativeToCamera:)();
    if ((v25 & 1) == 0)
    {
      v27.i64[0] = v21;
      v27.i64[1] = v22;
      v28.i64[0] = v23;
      v28.i64[1] = v24;
      v29 = vsubq_f32(v27, v28);
      v30 = vmulq_f32(v29, v29);
      v30.f32[0] = sqrtf(v30.f32[2] + (((*&v21 - *&v23) * (*&v21 - *&v23)) + v30.f32[1]));
      v31 = v30.f32[0] + v30.f32[0];
      v32 = swift_initStackObject();
      *(v32 + 16) = xmmword_23B91A6D0;
      *(v32 + 32) = v31;
      *(v32 + 36) = v31;
      *(v32 + 40) = v31;
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v32);
      v37 = v33;
      swift_setDeallocating();
      return v37;
    }
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Can't get unproject screen points into 3D view points!";
LABEL_7:
    _os_log_impl(&dword_23B824000, v8, v9, v11, v10, 2u);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

LABEL_8:

  return v37;
}

uint64_t DetectModeBoxModel.subscribeToUpdateEvents()()
{
  v1 = v0;
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    v4 = v3;

    if (v3)
    {
      dispatch thunk of ARView.scene.getter();

      type metadata accessor for SceneEvents.Update();
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      swift_allocObject();
      swift_weakInit();
      Scene.subscribe<A>(to:on:_:)();

      outlined destroy of PerspectiveCameraComponent?(v5, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
      swift_beginAccess();
      outlined assign with take of Cancellable?(v7, v1 + 160);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in DetectModeBoxModel.subscribeToUpdateEvents()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    SceneEvents.Update.deltaTime.getter();
    DetectModeBoxModel.update(deltaTime:)(v1);
  }

  return result;
}

uint64_t DetectModeBoxModel.unsubscribeFromUpdateEvents()()
{
  swift_beginAccess();
  outlined init with copy of Cancellable?(v0 + 160, &v3);
  if (*(&v4 + 1))
  {
    outlined init with copy of Cancellable(&v3, v2);
    outlined destroy of PerspectiveCameraComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    outlined destroy of PerspectiveCameraComponent?(&v3, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  outlined assign with take of Cancellable?(&v3, v0 + 160);
  return swift_endAccess();
}

uint64_t DetectModeBoxModel.deinit()
{
  swift_weakDestroy();
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);
  outlined consume of DetectModeBoxModel.TargetReticleEntity?(*(v0 + 64));
  v5 = *(v0 + 152);

  outlined destroy of PerspectiveCameraComponent?(v0 + 160, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  v6 = *(v0 + 216);

  v7 = *(v0 + 224);

  v8 = *(v0 + 240);

  outlined destroy of weak RangefinderDelegate?(v0 + 248);
  v9 = *(v0 + 264);

  v10 = *(v0 + 272);

  return v0;
}

uint64_t DetectModeBoxModel.__deallocating_deinit()
{
  DetectModeBoxModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t EntityGestureRecognizerDelegate.gestureRecognizer(_:shouldRequireFailureOf:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  v53 = v7;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v54[0] = v12;
    *v11 = 136315394;
    v13 = v7;
    v52 = v3;
    v14 = v8;
    v15 = [v13 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v54);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v20 = v14;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v54);
    v8 = v14;
    v3 = v52;

    *(v11 + 14) = v25;
    _os_log_impl(&dword_23B824000, v9, v10, "GestureRecognizerDelegate got %s shouldRequireFailureOf %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v12, -1, -1);
    MEMORY[0x23EEB0B70](v11, -1, -1);
  }

  v26 = OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_entityTranslateGesture;
  swift_beginAccess();
  v27 = *(v3 + v26);
  if (v27)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x277D75548);
    v28 = v53;
    v29 = v27;
    v30 = static NSObject.== infix(_:_:)();

    if (v30)
    {
      v31 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxScaleManipulator);
      v32 = BoundingBoxScaleManipulator.panGesture.getter();
      v33 = v8;
      LOBYTE(v31) = static NSObject.== infix(_:_:)();

      if (v31)
      {
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          v37 = "GestureRecognizerDelegate: EntityTranslate gesture must wait for the GrabHandle gesture to fail!";
LABEL_19:
          _os_log_impl(&dword_23B824000, v34, v35, v37, v36, 2u);
          MEMORY[0x23EEB0B70](v36, -1, -1);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    v38 = *(v3 + v26);
    if (v38)
    {
      v39 = v28;
      v40 = v38;
      v41 = static NSObject.== infix(_:_:)();

      if (v41)
      {
        v42 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxRotateManipulator);
        v43 = BoundingBoxRotateManipulator.panGesture.getter();
        v44 = v8;
        LOBYTE(v42) = static NSObject.== infix(_:_:)();

        if (v42)
        {
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            v37 = "GestureRecognizerDelegate: EntityTranslate gesture must wait for the GrabRotateWidget gesture to fail!";
            goto LABEL_19;
          }

LABEL_20:

          return 1;
        }
      }
    }
  }

  v45 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxScaleManipulator);
  v46 = BoundingBoxScaleManipulator.panGesture.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x277D75548);
  v47 = v53;
  LOBYTE(v45) = static NSObject.== infix(_:_:)();

  if (v45)
  {
    v48 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUIP33_D3054C8CC2B5FD3485D9DD74FE19D26731EntityGestureRecognizerDelegate_boxRotateManipulator);
    v49 = BoundingBoxRotateManipulator.panGesture.getter();
    v50 = v8;
    LOBYTE(v48) = static NSObject.== infix(_:_:)();

    if (v48)
    {
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "GestureRecognizerDelegate: GrabHandle gesture must wait for the GrabRotateWidget gesture to fail!";
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  return 0;
}

id EntityGestureRecognizerDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityGestureRecognizerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State()
{
  result = lazy protocol witness table cache variable for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State;
  if (!lazy protocol witness table cache variable for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetectModeBoxModel.State and conformance DetectModeBoxModel.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State()
{
  result = lazy protocol witness table cache variable for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State;
  if (!lazy protocol witness table cache variable for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetectModeBoxModel.TransitionAnimation.State and conformance DetectModeBoxModel.TransitionAnimation.State);
  }

  return result;
}

uint64_t key path getter for DataModel.isBoundingBoxAnimationPlaying : DataModel@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for DataModel.isBoundingBoxAnimationPlaying : DataModel(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined copy of DetectModeBoxModel.TargetReticleEntity?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t specialized DetectModeBoxModel.init(model:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v50 = a2;
  v48 = a1;
  v5 = type metadata accessor for Entity.ComponentSet();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnlitMaterial();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MaterialScalarParameter();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  swift_weakInit();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  type metadata accessor for MeshResource();
  static MeshResource.generateSphere(radius:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR);
  v15 = swift_allocObject();
  v47 = xmmword_23B91A6F0;
  *(v15 + 16) = xmmword_23B91A6F0;
  v16 = [objc_opt_self() redColor];
  MaterialScalarParameter.init(floatLiteral:)();
  v17 = type metadata accessor for SimpleMaterial();
  v18 = MEMORY[0x277CDAC50];
  *(v15 + 56) = v17;
  *(v15 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  SimpleMaterial.init(color:roughness:isMetallic:)();
  v19 = type metadata accessor for ModelEntity();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = v9;
  v23 = v46;
  *(v3 + 40) = ModelEntity.init(mesh:materials:)();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v51 = 1;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 1;
  *(v3 + 152) = MEMORY[0x277D84FA0];
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 200) = specialized static ExperimentSettings.loadDebugBoxSeedEnabled(default:)(0) & 1;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0xFFF0000000000000;
  type metadata accessor for BoundingBoxScaleManipulator();
  swift_allocObject();
  *(v3 + 240) = BoundingBoxScaleManipulator.init()();
  *(v3 + 256) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  swift_weakAssign();
  *(v3 + 256) = v49;
  swift_unknownObjectWeakAssign();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  UnlitMaterial.init(color:)();
  static MeshResource.generateBox(size:cornerRadius:)();
  v24 = swift_allocObject();
  *(v24 + 16) = v47;
  v25 = MEMORY[0x277CDAC30];
  *(v24 + 56) = v22;
  *(v24 + 64) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
  (*(v23 + 16))(boxed_opaque_existential_1, v12, v22);
  v27 = *(v19 + 48);
  v28 = *(v19 + 52);
  swift_allocObject();
  v29 = ModelEntity.init(mesh:materials:)();
  v30 = MEMORY[0x277CDABB0];
  *(v3 + 48) = v29;
  *(v3 + 56) = v30;

  Entity.generateCollisionShapes(recursive:)(0);

  if (*(v3 + 48))
  {
    dispatch thunk of Entity.components.getter();
    type metadata accessor for ModelComponent();
    Entity.ComponentSet.remove(_:)();
    (*(v44 + 8))(v8, v45);
    v32 = type metadata accessor for Entity();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = Entity.init()();
    v36 = *(v32 + 48);
    v37 = *(v32 + 52);
    swift_allocObject();

    v38 = Entity.init()();

    HasHierarchy.addChild(_:preservingWorldTransform:)();

    v39 = *(v3 + 64);
    v40 = *(v3 + 72);
    *(v3 + 64) = v35;
    *(v3 + 72) = v38;
    outlined consume of DetectModeBoxModel.TargetReticleEntity?(v39);
    type metadata accessor for BoundingBoxRotateManipulator();
    swift_allocObject();

    v41 = specialized BoundingBoxRotateManipulator.init(parent:)();

    v42 = *(v4 + 264);
    *(v4 + 264) = v41;

    DetectModeBoxModel.loadWireframeAsync()();
    (*(v23 + 8))(v12, v22);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}