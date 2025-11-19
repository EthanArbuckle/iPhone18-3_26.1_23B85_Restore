@interface ABPKInput
- (ABPKInput)init;
- (int)saveDataToDir:(id)a3 withFileNamePrefix:(id)a4;
- (void)setVioPose:(__n128)a3;
@end

@implementation ABPKInput

- (ABPKInput)init
{
  v3.receiver = self;
  v3.super_class = ABPKInput;
  result = [(ABPKInput *)&v3 init];
  if (result)
  {
    result->_isDepthDataValid = 0;
    result->_depthMap = 0;
    result->_depthConfidenceBuffer = 0;
  }

  return result;
}

- (int)saveDataToDir:(id)a3 withFileNamePrefix:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ABPKInput *)self timestamp];
  v9 = v8;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", v7, @"image", v8];
  v30 = [v6 stringByAppendingPathComponent:v31];
  writeImage([(ABPKInput *)self image], v30);
  v32 = getPixelBufferFormatTypeAsString(self->_depthMap);
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", v7, @"depth", v9];
  v28 = [v6 stringByAppendingPathComponent:v29];
  saveDepthBufferToFile([(ABPKInput *)self depthMap], v28, 10000.0);
  v10 = getPixelBufferFormatTypeAsString(self->_depthConfidenceBuffer);
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", v7, @"depth_confidence", v9];
  v11 = [v6 stringByAppendingPathComponent:v27];
  saveDepthBufferToFile([(ABPKInput *)self depthConfidenceBuffer], v11, 10000.0);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_inputs_%f.plist", v7, v9];
  v13 = [v6 stringByAppendingPathComponent:v12];
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 setObject:v32 forKey:@"depth_map_type"];
  [v14 setObject:v10 forKey:@"depth_confidence_map_type"];
  [v14 setObject:v32 forKey:@"depth_confidence_map_type"];
  [v14 setObject:v10 forKey:@"depth_confidence_map_type"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ABPKInput isDepthDataValid](self, "isDepthDataValid")}];
  [v14 setObject:v15 forKey:@"depth_valid"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[ABPKInput isVioPoseValid](self, "isVioPoseValid")}];
  [v14 setObject:v16 forKey:@"vio_pose_valid"];

  [(ABPKInput *)self vioPose];
  v21 = simdMatrix4x4ToNSMat(v17, v18, v19, v20);
  [v14 setObject:v21 forKey:@"vio_pose"];

  v22 = MEMORY[0x277CCABB0];
  [(ABPKInput *)self timestamp];
  v23 = [v22 numberWithDouble:?];
  [v14 setObject:v23 forKey:@"timestamp"];

  v24 = [(ABPKInput *)self cameraParams];
  v25 = [v24 toDict];
  [v14 setObject:v25 forKey:@"camera_params"];

  [v14 writeToFile:v13 atomically:0];
  return 0;
}

- (void)setVioPose:(__n128)a3
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((a1 + 64), v5, 64, 1, 0);
}

@end