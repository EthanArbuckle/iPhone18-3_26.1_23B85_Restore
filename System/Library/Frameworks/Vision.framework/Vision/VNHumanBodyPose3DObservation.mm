@interface VNHumanBodyPose3DObservation
- (BOOL)getCameraRelativePosition:(simd_float4x4 *)modelPositionOut forJointName:(VNHumanBodyPose3DObservationJointName)jointName error:(NSError *)error;
- (CGSize)_inputSize;
- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanBodyPose3DObservationJointsGroupName)jointsGroupName error:(NSError *)error;
- (VNHumanBodyPose3DObservationHeightEstimation)heightEstimation;
- (VNHumanBodyPose3DObservationJointName)parentJointNameForJointName:(VNHumanBodyPose3DObservationJointName)jointName;
- (VNHumanBodyRecognizedPoint3D)recognizedPointForJointName:(VNHumanBodyPose3DObservationJointName)jointName error:(NSError *)error;
- (VNPoint)pointInImageForJointName:(VNHumanBodyPose3DObservationJointName)jointName error:(NSError *)error;
- (__n128)_cameraIntrinsics;
- (__n128)_cameraRootTransform;
- (float)bodyHeight;
- (id)debugQuickLookObject;
- (simd_float4x4)cameraOriginMatrix;
- (void)_addAllJointsToPath:(double)path imageSize:(double)size;
@end

@implementation VNHumanBodyPose3DObservation

- (id)debugQuickLookObject
{
  v14 = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  if (Mutable)
  {
    v4 = Mutable;
    v12.receiver = self;
    v12.super_class = VNHumanBodyPose3DObservation;
    debugQuickLookObject = [(VNObservation *)&v12 debugQuickLookObject];
    v6 = debugQuickLookObject;
    if (debugQuickLookObject)
    {
      v7 = VNDebugImageSizeFromObject(debugQuickLookObject);
      [(VNHumanBodyPose3DObservation *)self _addAllJointsToPath:v4 imageSize:v7, v8];
      v13[0] = xmmword_1A6052420;
      v13[1] = unk_1A6052430;
      v9 = VNDebugColorFromValues(v13);
      VNDebugImageRenderNormalizedCGPathOnImage(v4, v6, v9);
    }

    else
    {
      [(VNHumanBodyPose3DObservation *)self _addAllJointsToPath:v4 imageSize:512.0, 512.0];
      VNDebugPathFromNormalizedCGPath(v4, 512.0, 512.0);
    }
    v10 = ;

    CGPathRelease(v4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addAllJointsToPath:(double)path imageSize:(double)size
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self availableJointNames];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v8 = v23 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = 7.0 / path;
      v12 = 7.0 / size;
      v13 = *v23;
      do
      {
        v14 = 0;
        v15 = v10;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v22 + 1) + 8 * v14);
          v21 = v15;
          v17 = [self pointInImageForJointName:v16 error:&v21];
          v10 = v21;

          [v17 location];
          v19 = v18;
          [v17 location];
          v28.origin.x = v19 - v11 * 0.5;
          v28.origin.y = v20 - v12 * 0.5;
          v28.size.width = v11;
          v28.size.height = v12;
          CGPathAddEllipseInRect(a2, 0, v28);

          ++v14;
          v15 = v10;
        }

        while (v9 != v14);
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }
}

- (VNHumanBodyPose3DObservationHeightEstimation)heightEstimation
{
  recognizedPointsSpecifier = [(VNRecognizedPoints3DObservation *)self recognizedPointsSpecifier];
  [recognizedPointsSpecifier heightEstimatedScale];
  v4 = (v3 != -1.0);

  return v4;
}

- (CGSize)_inputSize
{
  recognizedPointsSpecifier = [(VNRecognizedPoints3DObservation *)self recognizedPointsSpecifier];
  [recognizedPointsSpecifier inputSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (__n128)_cameraIntrinsics
{
  recognizedPointsSpecifier = [self recognizedPointsSpecifier];
  [recognizedPointsSpecifier cameraIntrinsics];
  v4 = v2;

  return v4;
}

- (__n128)_cameraRootTransform
{
  recognizedPointsSpecifier = [self recognizedPointsSpecifier];
  [recognizedPointsSpecifier cameraTransformMatrix];
  v4 = v2;

  return v4;
}

- (simd_float4x4)cameraOriginMatrix
{
  recognizedPointsSpecifier = [(VNRecognizedPoints3DObservation *)self recognizedPointsSpecifier];
  [recognizedPointsSpecifier cameraRenderTransformMatrix];
  v14 = v3;
  v12 = v5;
  v13 = v4;
  v11 = v6;

  v7 = v14;
  v9 = v12;
  v8 = v13;
  v10 = v11;
  result.columns[3] = v10;
  result.columns[2] = v9;
  result.columns[1] = v8;
  result.columns[0] = v7;
  return result;
}

- (float)bodyHeight
{
  recognizedPointsSpecifier = [(VNRecognizedPoints3DObservation *)self recognizedPointsSpecifier];
  [recognizedPointsSpecifier bodyHeight];
  v4 = v3;

  return v4;
}

- (VNPoint)pointInImageForJointName:(VNHumanBodyPose3DObservationJointName)jointName error:(NSError *)error
{
  v5 = [(VNHumanBodyPose3DObservation *)self recognizedPointForJointName:jointName error:error];
  v6 = v5;
  if (v5)
  {
    [v5 position];
    if (self)
    {
      recognizedPointsSpecifier = [(VNRecognizedPoints3DObservation *)self recognizedPointsSpecifier];
      [recognizedPointsSpecifier cameraIntrinsics];
      v17 = v9;
      v18 = v8;
      v16 = v10;

      [(VNHumanBodyPose3DObservation *)self _cameraRootTransform];
    }

    v11 = [(VNRecognizedPoints3DObservation *)self recognizedPointsSpecifier:v16];
    [v11 inputSize];

    VisionCoreNormalizedPointForImagePoint();
    v14 = [[VNPoint alloc] initWithX:v13 y:1.0 - v12];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)getCameraRelativePosition:(simd_float4x4 *)modelPositionOut forJointName:(VNHumanBodyPose3DObservationJointName)jointName error:(NSError *)error
{
  v8 = [(VNHumanBodyPose3DObservation *)self recognizedPointForJointName:jointName error:error];
  [v8 position];
  v25 = v10;
  v26 = v9;
  v23 = v12;
  v24 = v11;
  v13 = *error;
  if (!v13)
  {
    [(VNHumanBodyPose3DObservation *)self _cameraRootTransform];
    v14 = 0;
    v27[0] = v15;
    v27[1] = v16;
    v27[2] = v17;
    v27[3] = v18;
    do
    {
      v28[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(v27[v14])), v25, *&v27[v14], 1), v24, v27[v14], 2), v23, v27[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    v19 = v28[1];
    v20 = v28[2];
    v21 = v28[3];
    modelPositionOut->columns[0] = v28[0];
    modelPositionOut->columns[1] = v19;
    modelPositionOut->columns[2] = v20;
    modelPositionOut->columns[3] = v21;
  }

  return v13 == 0;
}

- (VNHumanBodyRecognizedPoint3D)recognizedPointForJointName:(VNHumanBodyPose3DObservationJointName)jointName error:(NSError *)error
{
  v4 = [(VNRecognizedPoints3DObservation *)self recognizedPointForKey:jointName error:error];

  return v4;
}

- (VNHumanBodyPose3DObservationJointName)parentJointNameForJointName:(VNHumanBodyPose3DObservationJointName)jointName
{
  v3 = [(VNRecognizedPoints3DObservation *)self recognizedPointForKey:jointName error:0];
  parentJoint = [v3 parentJoint];

  return parentJoint;
}

- (NSDictionary)recognizedPointsForJointsGroupName:(VNHumanBodyPose3DObservationJointsGroupName)jointsGroupName error:(NSError *)error
{
  v4 = [(VNRecognizedPoints3DObservation *)self recognizedPointsForGroupKey:jointsGroupName error:error];

  return v4;
}

@end