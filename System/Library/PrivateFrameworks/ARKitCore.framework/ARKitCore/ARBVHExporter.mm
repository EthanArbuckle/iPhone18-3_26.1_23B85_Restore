@interface ARBVHExporter
+ (id)headerByApplyingScale:(id)scale;
+ (id)liftedSkeletonHeaderByApplyingScale:(id)scale;
+ (id)stickFigureHeaderByApplyingScale:(id)scale;
- (ARBVHExporter)initWithFilePath:(id)path type:(int64_t)type scale:;
- (void)appendBodyAnchor:(id)anchor;
- (void)start;
- (void)stop;
@end

@implementation ARBVHExporter

- (ARBVHExporter)initWithFilePath:(id)path type:(int64_t)type scale:
{
  v16 = v4;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = ARBVHExporter;
  v9 = [(ARBVHExporter *)&v17 init];
  v10 = v9;
  if (v9)
  {
    *&v9->_scale[4] = v16;
    v9->_exportType = type;
    objc_storeStrong(&v9->_filePath, path);
    v11 = NSTemporaryDirectory();
    v12 = objc_opt_new();
    v13 = [v11 stringByAppendingFormat:@"%@_tmp.bvh", v12];
    tmpFilePath = v10->_tmpFilePath;
    v10->_tmpFilePath = v13;

    v10->_running = 0;
  }

  return v10;
}

- (void)start
{
  self->_numberFrames = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:self->_tmpFilePath append:0];
  framesStreamToFile = self->_framesStreamToFile;
  self->_framesStreamToFile = v3;

  [(NSOutputStream *)self->_framesStreamToFile open];
  self->_running = 1;
}

- (void)stop
{
  v28 = *MEMORY[0x1E69E9840];
  [(NSOutputStream *)self->_framesStreamToFile close];
  self->_running = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:self->_filePath append:0];
  [v3 open];
  exportType = self->_exportType;
  if (exportType)
  {
    if (exportType == 1)
    {
      v20 = [objc_opt_class() liftedSkeletonHeaderByApplyingScale:*&self->_scale[4]];
      [(__CFString *)v20 dataUsingEncoding:4];
    }

    else if (exportType == 2)
    {
      v20 = [objc_opt_class() headerByApplyingScale:*&self->_scale[4]];
      [(__CFString *)v20 dataUsingEncoding:4];
    }

    else
    {
      v20 = @"ERROR";
      [@"ERROR" dataUsingEncoding:4];
    }
  }

  else
  {
    v20 = [objc_opt_class() stickFigureHeaderByApplyingScale:*&self->_scale[4]];
    [(__CFString *)v20 dataUsingEncoding:4];
  }
  v5 = ;
  [v3 write:objc_msgSend(v5 maxLength:{"bytes"), objc_msgSend(v5, "length")}];
  v6 = objc_opt_new();
  [v6 appendString:@"MOTION\n"];
  [v6 appendFormat:@"Frames:  %d\n", self->_numberFrames];
  [v6 appendFormat:@"Frame Time:    %f\n", 0x3F91111111111111];
  v7 = [v6 dataUsingEncoding:4];
  [v3 write:objc_msgSend(v7 maxLength:{"bytes"), objc_msgSend(v7, "length")}];
  v8 = [objc_alloc(MEMORY[0x1E695DF48]) initWithFileAtPath:self->_tmpFilePath];
  [v8 open];
  v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:1024];
  while ([v8 hasBytesAvailable])
  {
    [v3 write:objc_msgSend(v9 maxLength:{"bytes"), objc_msgSend(v8, "read:maxLength:", objc_msgSend(v9, "mutableBytes"), objc_msgSend(v9, "length"))}];
  }

  [v8 close];
  [v3 close];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  tmpFilePath = self->_tmpFilePath;
  v21 = 0;
  [defaultManager removeItemAtPath:tmpFilePath error:&v21];
  v12 = v21;

  if (v12)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARBVHExporter stop];
    }

    v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v14 = _ARLogGeneral();
    v15 = v14;
    if (v13 == 1)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138543874;
        v23 = v17;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not delete temporary file: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543874;
      v23 = v19;
      v24 = 2048;
      selfCopy2 = self;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not delete temporary file: %@", buf, 0x20u);
    }
  }
}

- (void)appendBodyAnchor:(id)anchor
{
  v92 = *MEMORY[0x1E69E9840];
  anchorCopy = anchor;
  if (!self->_running)
  {
    goto LABEL_47;
  }

  v74 = anchorCopy;
  v75 = objc_opt_new();
  exportType = self->_exportType;
  if ((exportType - 1) < 2)
  {
    [v74 transform];
    v71 = v6;
    v7 = *&self->_scale[4];
    [v74 transform];
    v70 = v8;
    v69 = *&self->_scale[4];
    [v74 transform];
    [v75 appendFormat:@"%f %f %f ", (v7 * v71), vmuls_lane_f32(v70, *&v69, 1), vmuls_lane_f32(*&self->_scale[12], v9, 2)];
    [v74 transform];
    v13 = AREulerAnglesFromMatrix(v10, v11, v12);
    v14 = *&v13 * 0.318309886 * 180.0;
    v15 = *(&v13 + 1) * 0.318309886 * 180.0;
    *&v13 = v16 * 0.318309886 * 180.0;
    [v75 appendFormat:@"%f %f %f ", v14, v15, *&v13];
LABEL_6:
    exportType = self->_exportType;
    goto LABEL_7;
  }

  if (!exportType)
  {
    referenceBody = [v74 referenceBody];
    skeleton = [referenceBody skeleton];
    v72 = COERCE_FLOAT(*([skeleton jointLandmarks] + 128));
    v19 = *&self->_scale[4];
    referenceBody2 = [v74 referenceBody];
    skeleton2 = [referenceBody2 skeleton];
    [v75 appendFormat:@"%f %f %f ", (v19 * v72), (*(objc_msgSend(skeleton2, "jointLandmarks") + 132) * *&self->_scale[8]), 0];

    [v75 appendFormat:@"%f %f %f ", 0, 0, 0];
    goto LABEL_6;
  }

LABEL_7:
  if (exportType)
  {
    if (exportType == 1)
    {
      skeleton3 = [v74 skeleton];
      coreRESkeleton = [skeleton3 coreRESkeleton];
      liftedSkeletonData = [coreRESkeleton liftedSkeletonData];

      for (i = 1; [liftedSkeletonData jointCount] > i; ++i)
      {
        jointsLocalSpace = [liftedSkeletonData jointsLocalSpace];
        [v75 appendFormat:@"%f %f %f ", vmuls_n_f32(COERCE_FLOAT(*(jointsLocalSpace + 16 * i)), COERCE_FLOAT(*&self->_scale[4])), vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*(jointsLocalSpace + 16 * i))), *&self->_scale[4], 1), vmuls_lane_f32(COERCE_FLOAT(*(jointsLocalSpace + 16 * i + 8)), *&self->_scale[4], 2)];
      }

      [v75 appendString:@"\n"];
    }

    else if (exportType == 2)
    {
      v22 = 0;
      for (j = 1; ; ++j)
      {
        skeleton4 = [v74 skeleton];
        jointCount = [skeleton4 jointCount];

        if (jointCount <= j)
        {
          break;
        }

        skeleton5 = [v74 skeleton];
        jointLocalTransforms = [skeleton5 jointLocalTransforms];
        *&v28 = AREulerAnglesFromMatrix(*(jointLocalTransforms + v22 + 64), *(jointLocalTransforms + v22 + 80), *(jointLocalTransforms + v22 + 96));
        v73 = v28;

        v29 = *&v73 * 0.318309886 * 180.0;
        v30 = *(&v73 + 1) * 0.318309886 * 180.0;
        v31 = *(&v73 + 2) * 0.318309886 * 180.0;
        [v75 appendFormat:@"%f %f %f ", v29, v30, v31];
        v22 += 64;
      }

      [v75 appendString:@"\n"];
    }
  }

  else
  {
    skeleton6 = [v74 skeleton];
    coreRESkeleton2 = [skeleton6 coreRESkeleton];
    liftedSkeletonData2 = [coreRESkeleton2 liftedSkeletonData];
    skeletonDetectionResult2D = [liftedSkeletonData2 skeletonDetectionResult2D];

    v41 = skeletonDetectionResult2D;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, [v41 jointCount]);
    joints = [v41 joints];
    joints2 = [v41 joints];
    jointCount2 = [v41 jointCount];
    v90 = 0uLL;
    v91 = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v90, joints, joints2 + 8 * jointCount2, (joints2 + 8 * jointCount2 - joints) >> 3);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v90;
    v77 = v91;
    v88 = 0u;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v45 = [&unk_1F4259370 objectAtIndexedSubscript:16];
    v46 = [v45 countByEnumeratingWithState:&v83 objects:&v90 count:16];
    if (v46)
    {
      v47 = *v84;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v84 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v89[0] = [*(*(&v83 + 1) + 8 * k) intValue];
          std::deque<std::pair<int,int>>::push_back(v87, v89);
        }

        v46 = [v45 countByEnumeratingWithState:&v83 objects:&v90 count:16];
      }

      while (v46);
    }

    for (m = *(&v88 + 1); *(&v88 + 1); m = *(&v88 + 1))
    {
      v50 = (*(*(&v87[0] + 1) + ((v88 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v88 & 0x1FF));
      v52 = *v50;
      v51 = v50[1];
      *&v88 = v88 + 1;
      *(&v88 + 1) = m - 1;
      if (v88 >= 0x400)
      {
        operator delete(**(&v87[0] + 1));
        *(&v87[0] + 1) += 8;
        *&v88 = v88 - 512;
      }

      v53 = *([v41 joints] + 8 * v52);
      joints3 = [v41 joints];
      *(__p[0] + v52) = vsub_f32(v53, *(joints3 + 8 * v51));
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v55 = [&unk_1F4259370 objectAtIndexedSubscript:v52];
      v56 = [v55 countByEnumeratingWithState:&v79 objects:v89 count:16];
      if (v56)
      {
        v57 = *v80;
        v58 = v52 << 32;
        do
        {
          for (n = 0; n != v56; ++n)
          {
            if (*v80 != v57)
            {
              objc_enumerationMutation(v55);
            }

            v78 = v58 | [*(*(&v79 + 1) + 8 * n) intValue];
            std::deque<std::pair<int,int>>::push_back(v87, &v78);
          }

          v56 = [v55 countByEnumeratingWithState:&v79 objects:v89 count:16];
        }

        while (v56);
      }
    }

    std::deque<void const*>::~deque[abi:ne200100](v87);

    for (ii = 1; [v41 jointCount] > ii; ++ii)
    {
      v61 = [ARBVHExporter appendBodyAnchor:]::indexSequence[ii];
      v62 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
      parentIndices = [v62 parentIndices];
      v64 = [parentIndices objectAtIndexedSubscript:v61];
      intValue = [v64 intValue];

      if (intValue >= 0)
      {
        [v75 appendFormat:@"%f %f %f ", vmuls_n_f32(COERCE_FLOAT(*(__p[0] + v61)), COERCE_FLOAT(*&self->_scale[4])), vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*(__p[0] + v61))), *&self->_scale[4], 1), 0];
      }
    }

    [v75 appendString:@"\n"];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v66 = [v75 dataUsingEncoding:4];
  framesStreamToFile = self->_framesStreamToFile;
  v68 = v66;
  -[NSOutputStream write:maxLength:](framesStreamToFile, "write:maxLength:", [v66 bytes], objc_msgSend(v66, "length"));
  ++self->_numberFrames;

  anchorCopy = v74;
LABEL_47:
}

+ (id)headerByApplyingScale:(id)scale
{
  v14 = v2;
  v3 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  parentIndices = [v3 parentIndices];

  v5 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  jointNames = [v5 jointNames];

  v7 = +[ARSkeletonDefinition defaultBody3DSkeletonDefinition];
  neutralBodySkeleton3D = [v7 neutralBodySkeleton3D];

  v9 = [parentIndices indexOfObjectPassingTest:&__block_literal_global_103];
  v10 = objc_opt_new();
  [v10 appendString:@"HIERARCHY\n"];
  v11 = [jointNames objectAtIndexedSubscript:v9];
  [v10 appendFormat:@"ROOT %@\n{\n", v11];

  [v10 appendFormat:@"\tOFFSET %f %f %f\n", (*(objc_msgSend(neutralBodySkeleton3D, "jointLocalTransforms") + (v9 << 6) + 48) * v14.n128_f32[0]), vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*(objc_msgSend(neutralBodySkeleton3D, "jointLocalTransforms") + (v9 << 6) + 48))), v14.n128_u64[0], 1), vmuls_lane_f32(*(objc_msgSend(neutralBodySkeleton3D, "jointLocalTransforms") + (v9 << 6) + 56), v14, 2)];
  [v10 appendString:@"\tCHANNELS 6 Xposition Yposition Zposition Xrotation Yrotation Zrotation\n"];
  v12 = visitChildren(1, v9, jointNames, parentIndices, [neutralBodySkeleton3D jointLocalTransforms], 0, v14);
  [v10 appendString:v12];

  [v10 appendString:@"}\n"];

  return v10;
}

+ (id)liftedSkeletonHeaderByApplyingScale:(id)scale
{
  v17 = v2;
  v20 = *MEMORY[0x1E69E9840];
  v3 = +[AR3DSkeletonDetectionResult jointNames];
  v4 = +[AR3DSkeletonDetectionResult parentIndices];
  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_43_0];
  v6 = 0;
  v19[66] = 0u;
  v19[67] = xmmword_1C25F0730;
  v19[68] = xmmword_1C25F0740;
  v19[69] = xmmword_1C25F0750;
  v19[70] = xmmword_1C25F0760;
  v19[71] = xmmword_1C25F0770;
  v19[72] = xmmword_1C25F0780;
  v19[73] = xmmword_1C25F0790;
  v19[74] = xmmword_1C25F07A0;
  v19[75] = xmmword_1C25F07B0;
  v19[76] = xmmword_1C25F07C0;
  v19[77] = xmmword_1C25F07D0;
  v19[78] = xmmword_1C25F07E0;
  v19[79] = xmmword_1C25F07F0;
  v19[80] = xmmword_1C25F0800;
  v19[81] = xmmword_1C25F0810;
  v19[82] = xmmword_1C25F0820;
  v7 = v19;
  do
  {
    ARMatrix4x4FromRotationAndTranslation();
    *(v7 - 2) = v8;
    *(v7 - 1) = v9;
    *v7 = v10;
    v7[1] = v11;
    v7 += 4;
    v6 += 16;
  }

  while (v6 != 272);
  v12 = objc_opt_new();
  [v12 appendString:@"HIERARCHY\n"];
  v13 = [v3 objectAtIndexedSubscript:v5];
  [v12 appendFormat:@"ROOT %@\n{\n", v13];

  v14 = vmulq_f32(v19[4 * v5 + 1], v17);
  [v12 appendFormat:@"\tOFFSET %f %f %f\n", v14.f32[0], v14.f32[1], v14.f32[2]];
  [v12 appendString:@"\tCHANNELS 6 Xposition Yposition Zposition Xrotation Yrotation Zrotation\n"];
  v15 = visitChildren(1, v5, v3, v4, v18, 1, v17);
  [v12 appendString:v15];

  [v12 appendString:@"}\n"];

  return v12;
}

+ (id)stickFigureHeaderByApplyingScale:(id)scale
{
  v19 = v2;
  v22 = *MEMORY[0x1E69E9840];
  v3 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
  jointNames = [v3 jointNames];

  v5 = +[ARSkeletonDefinition defaultBody2DSkeletonDefinition];
  parentIndices = [v5 parentIndices];

  v7 = [parentIndices indexOfObjectPassingTest:&__block_literal_global_45_0];
  v8 = 0;
  v21[66] = xmmword_1C25F0830;
  v21[67] = xmmword_1C25F0840;
  v21[68] = xmmword_1C25F0850;
  v21[69] = xmmword_1C25F0860;
  v21[70] = xmmword_1C25F0870;
  v21[71] = xmmword_1C25F0880;
  v21[72] = xmmword_1C25F0890;
  v21[73] = xmmword_1C25F08A0;
  v21[74] = xmmword_1C25F08B0;
  v21[75] = xmmword_1C25F08C0;
  v21[76] = xmmword_1C25F08D0;
  v21[77] = xmmword_1C25F08E0;
  v21[78] = xmmword_1C25F08F0;
  v21[79] = xmmword_1C25F0900;
  v21[80] = xmmword_1C25F0910;
  v21[81] = xmmword_1C25F0920;
  v21[82] = xmmword_1C25F0930;
  v9 = v21;
  do
  {
    ARMatrix4x4FromRotationAndTranslation();
    *(v9 - 2) = v10;
    *(v9 - 1) = v11;
    *v9 = v12;
    v9[1] = v13;
    v9 += 4;
    v8 += 16;
  }

  while (v8 != 272);
  v14 = objc_opt_new();
  [v14 appendString:@"HIERARCHY\n"];
  v15 = [jointNames objectAtIndexedSubscript:v7];
  [v14 appendFormat:@"ROOT %@\n{\n", v15];

  v16 = vmulq_f32(v21[4 * v7 + 1], v19);
  [v14 appendFormat:@"\tOFFSET %f %f %f\n", v16.f32[0], v16.f32[1], v16.f32[2]];
  [v14 appendString:@"\tCHANNELS 6 Xposition Yposition Zposition Xrotation Yrotation Zrotation\n"];
  v17 = visitChildren(1, v7, jointNames, parentIndices, v20, 1, v19);
  [v14 appendString:v17];

  [v14 appendString:@"}\n"];

  return v14;
}

@end