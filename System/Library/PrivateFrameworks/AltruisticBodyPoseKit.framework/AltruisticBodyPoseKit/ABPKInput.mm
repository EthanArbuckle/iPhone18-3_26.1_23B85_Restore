@interface ABPKInput
- (ABPKInput)init;
- (int)saveDataToDir:(id)dir withFileNamePrefix:(id)prefix;
- (void)setVioPose:(__n128)pose;
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

- (int)saveDataToDir:(id)dir withFileNamePrefix:(id)prefix
{
  dirCopy = dir;
  prefixCopy = prefix;
  [(ABPKInput *)self timestamp];
  v9 = v8;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"image", v8];
  v30 = [dirCopy stringByAppendingPathComponent:v31];
  writeImage([(ABPKInput *)self image], v30);
  v32 = getPixelBufferFormatTypeAsString(self->_depthMap);
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"depth", v9];
  v28 = [dirCopy stringByAppendingPathComponent:v29];
  saveDepthBufferToFile([(ABPKInput *)self depthMap], v28, 10000.0);
  v10 = getPixelBufferFormatTypeAsString(self->_depthConfidenceBuffer);
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%f.png", prefixCopy, @"depth_confidence", v9];
  v11 = [dirCopy stringByAppendingPathComponent:v27];
  saveDepthBufferToFile([(ABPKInput *)self depthConfidenceBuffer], v11, 10000.0);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_inputs_%f.plist", prefixCopy, v9];
  v13 = [dirCopy stringByAppendingPathComponent:v12];
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

  cameraParams = [(ABPKInput *)self cameraParams];
  toDict = [cameraParams toDict];
  [v14 setObject:toDict forKey:@"camera_params"];

  [v14 writeToFile:v13 atomically:0];
  return 0;
}

- (void)setVioPose:(__n128)pose
{
  v5[0] = a2;
  v5[1] = pose;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 64), v5, 64, 1, 0);
}

@end