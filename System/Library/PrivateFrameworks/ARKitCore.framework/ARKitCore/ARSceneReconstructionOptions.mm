@interface ARSceneReconstructionOptions
- (ARSceneReconstructionOptions)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARSceneReconstructionOptions

- (ARSceneReconstructionOptions)init
{
  v5.receiver = self;
  v5.super_class = ARSceneReconstructionOptions;
  v2 = [(ARSceneReconstructionOptions *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_voxelSize = 0;
    v2->_bucketsCount = [ARKitUserDefaults integerForKey:@"com.apple.arkit.sceneReconstruction.bucketsCount"];
    v3->_preset = 2;
    v3->_deterministicMode = 0;
    v3->_lowQosSchedulingEnabled = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.sceneReconstruction.enableLowQosScheduling"];
    v3->_enableOccupancyMapping = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.sceneReconstruction.enableOccupancyMapping"];
    v3->_minDepthUncertaintyThreshold = 1.0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_voxelSize;
  *(result + 4) = self->_bucketsCount;
  *(result + 2) = self->_preset;
  *(result + 8) = self->_deterministicMode;
  *(result + 9) = self->_lowQosSchedulingEnabled;
  *(result + 10) = self->_enableOccupancyMapping;
  *(result + 3) = LODWORD(self->_minDepthUncertaintyThreshold);
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    voxelSize = [(ARSceneReconstructionOptions *)self voxelSize];
    if (voxelSize == [v5 voxelSize] && (v7 = -[ARSceneReconstructionOptions bucketsCount](self, "bucketsCount"), v7 == objc_msgSend(v5, "bucketsCount")) && (v8 = -[ARSceneReconstructionOptions preset](self, "preset"), v8 == objc_msgSend(v5, "preset")) && (v9 = -[ARSceneReconstructionOptions deterministicMode](self, "deterministicMode"), v9 == objc_msgSend(v5, "deterministicMode")) && (v10 = -[ARSceneReconstructionOptions lowQosSchedulingEnabled](self, "lowQosSchedulingEnabled"), v10 == objc_msgSend(v5, "lowQosSchedulingEnabled")) && (v11 = -[ARSceneReconstructionOptions enableOccupancyMapping](self, "enableOccupancyMapping"), v11 == objc_msgSend(v5, "enableOccupancyMapping")))
    {
      [(ARSceneReconstructionOptions *)self minDepthUncertaintyThreshold];
      v15 = v14;
      [v5 minDepthUncertaintyThreshold];
      v12 = v15 == v16;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end