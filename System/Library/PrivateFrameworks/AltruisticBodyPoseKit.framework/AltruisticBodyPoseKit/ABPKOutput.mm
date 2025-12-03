@interface ABPKOutput
- (ABPKOutput)init;
- (BOOL)convertToStreamingDictionary:(id)dictionary withSkeletonType:(id)type referenceFrame:(id)frame includeFingerRotation:(BOOL)rotation yOffset:(float)offset;
- (int)saveDataToDir:(id)dir withFileNamePrefix:(id)prefix;
- (int)saveOnlyPoseDataToDir:(id)dir withFileNamePrefix:(id)prefix;
- (uint64_t)overlayResultsOnImage:(__n128)image withCameraIntrinsics:(__n128)intrinsics withConfig:(uint64_t)config;
- (void)dealloc;
@end

@implementation ABPKOutput

- (ABPKOutput)init
{
  v9.receiver = self;
  v9.super_class = ABPKOutput;
  v2 = [(ABPKOutput *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    rawDetection2dSkeletonABPKArray = v2->_rawDetection2dSkeletonABPKArray;
    v2->_rawDetection2dSkeletonABPKArray = v3;

    if (!VTPixelTransferSessionCreate(0, &v2->_vtPixelTransferSession))
    {
      v6 = v2;
      goto LABEL_8;
    }

    CFRelease(v2->_vtPixelTransferSession);
    v2->_vtPixelTransferSession = 0;
    v5 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23EDDC000, v5, OS_LOG_TYPE_ERROR, " Unable to create pixel transfer session for image downscaling ", v8, 2u);
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)dealloc
{
  vtPixelTransferSession = self->_vtPixelTransferSession;
  if (vtPixelTransferSession)
  {
    CFRelease(vtPixelTransferSession);
  }

  if ([(ABPKOutput *)self mlOverlayImage])
  {
    CVPixelBufferRelease([(ABPKOutput *)self mlOverlayImage]);
  }

  v4.receiver = self;
  v4.super_class = ABPKOutput;
  [(ABPKOutput *)&v4 dealloc];
}

- (int)saveDataToDir:(id)dir withFileNamePrefix:(id)prefix
{
  dirCopy = dir;
  prefixCopy = prefix;
  [(ABPKOutput *)self timestamp];
  v9 = v8;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"mlimage", v8];
  v11 = [dirCopy stringByAppendingPathComponent:v10];
  writeImage([(ABPKOutput *)self mlImage], v11);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"mloverlayimage", v9];
  v13 = [dirCopy stringByAppendingPathComponent:v12];
  if ([(ABPKOutput *)self mlOverlayImage])
  {
    writeImage([(ABPKOutput *)self mlOverlayImage], v13);
  }

  [(ABPKOutput *)self saveOnlyPoseDataToDir:dirCopy withFileNamePrefix:prefixCopy];

  return 0;
}

- (int)saveOnlyPoseDataToDir:(id)dir withFileNamePrefix:(id)prefix
{
  v53 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  prefixCopy = prefix;
  [(ABPKOutput *)self timestamp];
  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%f.plist", prefixCopy, v6];
  v46 = [dirCopy stringByAppendingPathComponent:?];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = MEMORY[0x277CCABB0];
  [(ABPKOutput *)self timestamp];
  v9 = [v8 numberWithDouble:?];
  [v7 setObject:v9 forKey:@"timestamp"];

  algorithmParams = [(ABPKOutput *)self algorithmParams];

  if (algorithmParams)
  {
    algorithmParams2 = [(ABPKOutput *)self algorithmParams];
    toDict = [algorithmParams2 toDict];
    [v7 setObject:toDict forKey:@"algorithm_params"];
  }

  else
  {
    [v7 setObject:@"nil" forKey:@"algorithm_params"];
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  algState = [(ABPKOutput *)self algState];
  detection2d = [algState detection2d];

  if (detection2d)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = self->_rawDetection2dSkeletonABPKArray;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v18)
    {
      v19 = *v49;
      do
      {
        v20 = 0;
        do
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v17);
          }

          toDictionary = [*(*(&v48 + 1) + 8 * v20) toDictionary];
          [v16 addObject:toDictionary];

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v18);
    }

    [v13 setObject:v16 forKey:@"raw_detection_2d_array"];
    rawDetection2dSkeletonABPK = [(ABPKOutput *)self rawDetection2dSkeletonABPK];
    toDictionary2 = [rawDetection2dSkeletonABPK toDictionary];
    [v13 setObject:toDictionary2 forKey:@"raw_detection_2d"];

    detection2dSkeletonABPK = [(ABPKOutput *)self detection2dSkeletonABPK];
    toDictionary3 = [detection2dSkeletonABPK toDictionary];
    [v13 setObject:toDictionary3 forKey:@"detection_2d"];

    algState2 = [(ABPKOutput *)self algState];
    if ([algState2 lifting3d])
    {
      algState3 = [(ABPKOutput *)self algState];
      registration = [algState3 registration];

      if (!registration)
      {
        goto LABEL_16;
      }

      algState2 = [(ABPKOutput *)self liftingSkeletonABPK];
      toDictionary4 = [algState2 toDictionary];
      [v13 setObject:toDictionary4 forKey:@"lifting"];
    }

LABEL_16:
    algState4 = [(ABPKOutput *)self algState];
    if ([algState4 retargeting])
    {
      algState5 = [(ABPKOutput *)self algState];
      registration2 = [algState5 registration];

      if (!registration2)
      {
LABEL_20:

        goto LABEL_21;
      }

      algState4 = [(ABPKOutput *)self retargetedSkeletonABPK];
      toDictionary5 = [algState4 toDictionary];
      [v13 setObject:toDictionary5 forKey:@"arvino"];
    }

    goto LABEL_20;
  }

LABEL_21:
  [v7 setObject:v13 forKey:@"skeleton_data"];
  algState6 = [(ABPKOutput *)self algState];
  toDict2 = [algState6 toDict];
  [v7 setObject:toDict2 forKey:@"algorithm_state"];

  v36 = [MEMORY[0x277CCABB0] numberWithInt:{-[ABPKOutput algorithmReturnCode](self, "algorithmReturnCode")}];
  [v7 setObject:v36 forKey:@"algorithm_return_code"];

  v37 = MEMORY[0x277CCABB0];
  [(ABPKOutput *)self timeABPKAlgorithmFinished];
  v39 = v38;
  [(ABPKOutput *)self timeABPKAlgorithmStart];
  v41 = [v37 numberWithDouble:(v39 - v40) * 1000.0];
  [v7 setObject:v41 forKey:@"algorithm_compute_time"];

  [v7 writeToFile:v46 atomically:0];
  v42 = *MEMORY[0x277D85DE8];
  return 0;
}

- (uint64_t)overlayResultsOnImage:(__n128)image withCameraIntrinsics:(__n128)intrinsics withConfig:(uint64_t)config
{
  v69[1] = *MEMORY[0x277D85DE8];
  v9 = a7;
  if ([v9 length] != 5)
  {
    v21 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = " Invalid overlay code ";
      v23 = v21;
      v24 = OS_LOG_TYPE_ERROR;
LABEL_59:
      _os_log_impl(&dword_23EDDC000, v23, v24, v22, buf, 2u);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  v10 = [v9 substringWithRange:{0, 1}];
  v11 = [v10 isEqual:@"y"];

  v12 = [v9 substringWithRange:{1, 1}];
  v13 = [v12 isEqual:@"y"];

  v14 = [v9 substringWithRange:{2, 1}];
  v56 = [v14 isEqual:@"y"];

  v15 = [v9 substringWithRange:{3, 1}];
  v55 = [v15 isEqual:@"y"];

  v16 = [v9 substringWithRange:{4, 1}];
  v17 = [v16 isEqual:@"y"];

  Width = CVPixelBufferGetWidth(a6);
  Height = CVPixelBufferGetHeight(a6);
  if (![self mlOverlayImage])
  {
    v68 = *MEMORY[0x277CC4DE8];
    v69[0] = MEMORY[0x277CBEC10];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v21, (self + 136)))
    {
      v25 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_ERROR, " Could not create pixelbuffer for image overlay ", buf, 2u);
      }

      goto LABEL_60;
    }
  }

  if (!*(self + 16))
  {
    v66 = *MEMORY[0x277CC4DE8];
    v67 = MEMORY[0x277CBEC10];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v21, (self + 16)))
    {
      v26 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " Could not create _imageYCbCr buffer ", buf, 2u);
      }

      v27 = 4294960636;
      goto LABEL_61;
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a6);
  if (PixelFormatType == 32)
  {
LABEL_7:
    *(self + 16) = a6;
    goto LABEL_19;
  }

  if (PixelFormatType != 1278226488)
  {
    if (PixelFormatType != 1111970369)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  convertFormatGrayScaleToARGB_BGRA(a6, (self + 16));
LABEL_19:
  v28 = VTPixelTransferSessionTransferImage(*(self + 8), *(self + 16), *(self + 136));
  if (!v17)
  {
    algState = [self algState];
    detection2d = [algState detection2d];

    if ((detection2d & v11) != 0)
    {
      v33 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v33, OS_LOG_TYPE_DEBUG, " Overlay raw 2d skeleton ", buf, 2u);
      }

      rawDetection2dSkeletonABPK = [self rawDetection2dSkeletonABPK];
      v28 = overlay2dResultOnImage(rawDetection2dSkeletonABPK, *(self + 136), *(self + 136), COERCE_DOUBLE(255));
    }

    algState2 = [self algState];
    detection2d2 = [algState2 detection2d];

    if ((detection2d2 & v13) != 0)
    {
      v37 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v37, OS_LOG_TYPE_DEBUG, " Overlay 2d skeleton ", buf, 2u);
      }

      detection2dSkeletonABPK = [self detection2dSkeletonABPK];
      v28 = overlay2dResultOnImage(detection2dSkeletonABPK, *(self + 136), *(self + 136), COERCE_DOUBLE(0xFF00000000));
    }

    algState3 = [self algState];
    if ([algState3 lifting3d])
    {
      algState4 = [self algState];
      registration = [algState4 registration];

      if ((registration & v56) == 0)
      {
LABEL_38:
        algState5 = [self algState];
        if (![algState5 retargeting])
        {
LABEL_54:

          goto LABEL_55;
        }

        algState6 = [self algState];
        registration2 = [algState6 registration];

        if ((registration2 & v55) != 0)
        {
          v46 = __ABPKLogSharedInstance();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_23EDDC000, v46, OS_LOG_TYPE_DEBUG, " Overlay retargeted skeleton ", buf, 2u);
          }

          algState5 = [self retargetedSkeletonABPK];
          v28 = overlay3dResultOnImage(algState5, *(self + 136), *(self + 136), a2, image, intrinsics, Width, Height, xmmword_23EE281D0);
          goto LABEL_54;
        }

LABEL_55:
        if (!v28)
        {
          v27 = 0;
          goto LABEL_62;
        }

        v21 = __ABPKLogSharedInstance();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_60;
        }

        *buf = 0;
        v22 = " Could not overlay image ";
        goto LABEL_58;
      }

      v42 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v42, OS_LOG_TYPE_DEBUG, " Overlay 3d skeleton ", buf, 2u);
      }

      algState3 = [self liftingSkeletonABPK];
      v28 = overlay3dResultOnImage(algState3, *(self + 136), *(self + 136), a2, image, intrinsics, Width, Height, xmmword_23EE281C0);
    }

    goto LABEL_38;
  }

  algState7 = [self algState];
  detection2d3 = [algState7 detection2d];

  if (!detection2d3)
  {
    goto LABEL_55;
  }

  if (((v11 | v13 | v56 | v55) & 1) == 0)
  {
    v47 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v47, OS_LOG_TYPE_DEBUG, " Overlay 2d face ", buf, 2u);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    algState5 = *(self + 24);
    v48 = [algState5 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v48)
    {
      v49 = *v61;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v61 != v49)
          {
            objc_enumerationMutation(algState5);
          }

          v51.n128_u64[0] = 255;
          v51.n128_u64[1] = 255;
          v52 = drawFullyVisibleFace(*(*(&v60 + 1) + 8 * i), *(self + 136), *(self + 136), v51);
        }

        v28 = v52;
        v48 = [algState5 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v48);
    }

    goto LABEL_54;
  }

  v21 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v22 = " Face visualization should be drawn cleanly. Please make sure the first four letters in overlay string are all 'n' when the fifth is 'y'. ";
LABEL_58:
    v23 = v21;
    v24 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_59;
  }

LABEL_60:
  v27 = 4294960630;
LABEL_61:

LABEL_62:
  v53 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)convertToStreamingDictionary:(id)dictionary withSkeletonType:(id)type referenceFrame:(id)frame includeFingerRotation:(BOOL)rotation yOffset:(float)offset
{
  v78[3] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  typeCopy = type;
  frameCopy = frame;
  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  liftingSkeletonABPK = [(ABPKOutput *)self liftingSkeletonABPK];
  if ([typeCopy isEqual:@"Arvino"])
  {
    retargetedSkeletonABPK = [(ABPKOutput *)self retargetedSkeletonABPK];
  }

  else
  {
    retargetedSkeletonABPK = liftingSkeletonABPK;
  }

  liftingSkeletonABPK = retargetedSkeletonABPK;
  [retargetedSkeletonABPK cameraRootTransform];
  v65 = v12;
  v64 = v13;
  v63 = v14;
  v62 = v15;
  [retargetedSkeletonABPK deviceRootTransform];
  v60 = v16;
  v59 = v17;
  v58 = v18;
  v61 = v19;
  skeletonDefinition = [retargetedSkeletonABPK skeletonDefinition];
  jointCount = [skeletonDefinition jointCount];

  v57[1] = v57;
  v22 = v57 - ((4 * jointCount + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = &v57[-2 * jointCount];
  v71 = jointCount;
  v72 = v73;
  for (i = 0; ; ++i)
  {
    skeletonDefinition2 = [liftingSkeletonABPK skeletonDefinition];
    jointCount2 = [skeletonDefinition2 jointCount];

    if (i >= jointCount2)
    {
      break;
    }

    *&v22[4 * i] = 1056964608;
  }

  if ([frameCopy isEqual:@"Global"])
  {
    [liftingSkeletonABPK getGlobalJointDataForSkeletonWithPosition:v73 withOrientation:v72];
  }

  else
  {
    [liftingSkeletonABPK getLocalJointDataForSkeletonWithPosition:v73 withOrientation:v72];
  }

  selfCopy = self;
  v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v71 >= 1)
  {
    for (j = 0; j != v71; ++j)
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
      skeletonDefinition3 = [liftingSkeletonABPK skeletonDefinition];
      v29 = [skeletonDefinition3 jointName:j];

      LODWORD(v30) = *&v22[4 * j];
      v31 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
      [v27 setObject:v31 forKey:@"confidence"];

      v76 = *&v73[2 * j];
      v32 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      v78[0] = v32;
      HIDWORD(v33) = DWORD1(v76);
      LODWORD(v33) = DWORD1(v76);
      v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
      v78[1] = v34;
      v35 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v76), DWORD2(v76)))}];
      v78[2] = v35;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
      [v27 setObject:v36 forKey:@"translation"];

      v76 = *&v72[2 * j];
      v37 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      v77[0] = v37;
      HIDWORD(v38) = DWORD1(v76);
      LODWORD(v38) = DWORD1(v76);
      v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
      v77[1] = v39;
      v40 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v76), HIDWORD(v76)))}];
      v77[2] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v76), DWORD2(v76)))}];
      v77[3] = v41;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:4];
      [v27 setObject:v42 forKey:@"orientation"];

      [v74 setObject:v27 forKey:v29];
    }
  }

  [v70 setObject:v74 forKey:@"body_joints"];
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = simdMatrix4x4ToNSArray(v65, v64, v63, v62);
  [v43 setObject:v44 forKey:@"camera_root_pose"];

  v45 = v61;
  v45.n128_f32[1] = v61.n128_f32[1] + offset;
  v46 = simdMatrix4x4ToNSArray(v60, v59, v58, v45);
  [v43 setObject:v46 forKey:@"device_root_pose"];

  [(ABPKOutput *)selfCopy timestamp];
  *&v47 = v47;
  v48 = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  [v43 setObject:v48 forKey:@"timestamp"];

  if (![typeCopy isEqual:@"Lifting"])
  {
    algState = [(ABPKOutput *)selfCopy algState];
    if ([algState retargeting])
    {
      algState2 = [(ABPKOutput *)selfCopy algState];
      registration = [algState2 registration];

      if (registration)
      {
        v52 = MEMORY[0x277CBEC38];
        goto LABEL_23;
      }

LABEL_22:
      v52 = MEMORY[0x277CBEC28];
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_22;
  }

  algState = [(ABPKOutput *)selfCopy algState];
  if (([algState lifting3d] & 1) == 0)
  {
    goto LABEL_21;
  }

  algState3 = [(ABPKOutput *)selfCopy algState];
  registration2 = [algState3 registration];

  if (registration2)
  {
    v52 = MEMORY[0x277CBEC38];
  }

  else
  {
    v52 = MEMORY[0x277CBEC28];
  }

LABEL_23:
  [v43 setObject:v52 forKey:@"pose_validity"];
  [v70 setObject:v43 forKey:@"result_context"];
  [v70 setObject:frameCopy forKey:@"joint_transform_type"];
  [v70 setObject:typeCopy forKey:@"skeleton_type"];
  [dictionaryCopy setObject:v70 forKey:@"result_abpk"];

  v55 = *MEMORY[0x277D85DE8];
  return 1;
}

@end