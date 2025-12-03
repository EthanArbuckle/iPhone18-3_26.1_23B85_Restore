@interface SCNNode(AVTExtension)
- (void)avt_enableSubdivisionOnHierarchyWithQuality:()AVTExtension animoji:;
- (void)avt_setGeometryPrimitiveRangesFromFaceIndexRanges:()AVTExtension;
@end

@implementation SCNNode(AVTExtension)

- (void)avt_enableSubdivisionOnHierarchyWithQuality:()AVTExtension animoji:
{
  if (avt_enableSubdivisionOnHierarchyWithQuality_animoji__onceToken != -1)
  {
    [SCNNode(AVTExtension) avt_enableSubdivisionOnHierarchyWithQuality:animoji:];
  }

  if (avt_enableSubdivisionOnHierarchyWithQuality_animoji__onceTokenPad != -1)
  {
    [SCNNode(AVTExtension) avt_enableSubdivisionOnHierarchyWithQuality:animoji:];
  }

  if ((avt_enableSubdivisionOnHierarchyWithQuality_animoji__disableSubdivision & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke_3;
    v7[3] = &__block_descriptor_41_e21_v24__0__SCNNode_8_B16l;
    v8 = a4;
    v7[4] = a3;
    [self enumerateHierarchyUsingBlock:v7];
  }
}

- (void)avt_setGeometryPrimitiveRangesFromFaceIndexRanges:()AVTExtension
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v16 + 1) + 8 * v10) count])
          {

            geometry = [self geometry];
            geometryElements = [geometry geometryElements];
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __75__SCNNode_AVTExtension__avt_setGeometryPrimitiveRangesFromFaceIndexRanges___block_invoke;
            v14[3] = &unk_1E7F49A38;
            v15 = v6;
            [geometryElements enumerateObjectsUsingBlock:v14];

            goto LABEL_12;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    [self setGeometry:0];
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

@end