@interface AXMTFaceKitExclavesResult
- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)expressions;
- (AXMTFaceKitExclavesResult)initWithFaceKitLiteSharedDataDictionary:(id)a3 expressions:(id *)a4 noseBaseCenter:(id)a5 referenceDimensionsValue:(id)a6 imageProcessedInExclaves:(BOOL)a7;
- (CGPoint)projectedPoint;
- (CGSize)referenceDimensions;
- (__n128)setPose:(__n128)a3;
@end

@implementation AXMTFaceKitExclavesResult

- (AXMTFaceKitExclavesResult)initWithFaceKitLiteSharedDataDictionary:(id)a3 expressions:(id *)a4 noseBaseCenter:(id)a5 referenceDimensionsValue:(id)a6 imageProcessedInExclaves:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v46.receiver = self;
  v46.super_class = AXMTFaceKitExclavesResult;
  v15 = [(AXMTFaceKitExclavesResult *)&v46 init];
  v16 = v15;
  if (v15)
  {
    *(v15 + 10) = *&a4->var0;
    v18 = *&a4->var4;
    v17 = *&a4->var6;
    v19 = *&a4->var2;
    *(v15 + 28) = a4->var8;
    *(v15 + 12) = v18;
    *(v15 + 13) = v17;
    *(v15 + 11) = v19;
    if (v14)
    {
      v20 = v15 + 64;
      [v14 sizeValue];
      *v20 = v21;
      *(v16 + 9) = v22;
    }

    v16[32] = a7;
    v23 = [v12 objectForKeyedSubscript:sub_100022FAC()];
    v24 = [v23 firstObject];
    v25 = [v24 objectForKeyedSubscript:sub_1000230A0()];
    if (v25)
    {
      v45 = v23;
      v26 = [v25 objectForKeyedSubscript:sub_100027528()];
      v27 = [v26 objectForKeyedSubscript:sub_100025A00()];
      v28 = [v26 objectForKeyedSubscript:sub_100025AF4()];
      if (v28)
      {
        [objc_opt_class() _poseTranslationMatrixFromArray:v28];
        *(v16 + 3) = v29;
      }

      [v16 _calculatePoseWithRotation:v27 translation:{v28, v27}];
      v30 = (v16 + 96);
      *(v16 + 6) = v31;
      *(v16 + 7) = v32;
      *(v16 + 8) = v33;
      *(v16 + 9) = v34;
      [v16 setNoseBaseCenterLandmarkVertex:v13];
      if (qword_100054688 != -1)
      {
        sub_1000293F8();
      }

      v35 = v13;
      if (dword_100054680 >= 1)
      {
        [v16 _rotatePose:*v30 forCameraSensorRotation:{*(v16 + 14), *(v16 + 16), *(v16 + 18)}];
        *v30 = v36;
        *(v16 + 7) = v37;
        *(v16 + 8) = v38;
        *(v16 + 9) = v39;
      }

      v40 = [v12 objectForKeyedSubscript:sub_100025DD0()];
      [objc_opt_class() _projectZAxisVectorUsingRGBCameraDictionary:v40 pose:{*v30, *(v16 + 14), *(v16 + 16), *(v16 + 18)}];
      *(v16 + 10) = v41;
      *(v16 + 11) = v42;

      v13 = v35;
      v23 = v45;
    }

    else
    {
      v26 = AXSSLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100029420();
      }
    }
  }

  return v16;
}

- (__n128)setPose:(__n128)a3
{
  result[6] = a2;
  result[7] = a3;
  result[8] = a4;
  result[9] = a5;
  return result;
}

- (CGSize)referenceDimensions
{
  width = self->_referenceDimensions.width;
  height = self->_referenceDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)projectedPoint
{
  x = self->_projectedPoint.x;
  y = self->_projectedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($AA6A45B2DFCED8527C3A0E9A46B0D48F)expressions
{
  v3 = *&self[2].var8;
  *&retstr->var4 = *&self[2].var6;
  *&retstr->var6 = v3;
  retstr->var8 = self[3].var1;
  v4 = *&self[2].var4;
  *&retstr->var0 = *&self[2].var2;
  *&retstr->var2 = v4;
  return self;
}

@end