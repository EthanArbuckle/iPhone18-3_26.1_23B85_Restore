@interface VisionCoreValueConfidenceCurve(VNCoreSceneUnderstandingDetector)
+ (id)VNCurveForCSUMetricOperatingPointCurve:()VNCoreSceneUnderstandingDetector error:;
@end

@implementation VisionCoreValueConfidenceCurve(VNCoreSceneUnderstandingDetector)

+ (id)VNCurveForCSUMetricOperatingPointCurve:()VNCoreSceneUnderstandingDetector error:
{
  v6 = a3;
  v7 = [v6 count];
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = __Block_byref_object_copy__26815;
  v23 = __Block_byref_object_dispose__26816;
  v24 = "";
  std::vector<float>::vector[abi:ne200100](v25, v7);
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = __Block_byref_object_copy__26815;
  v16 = __Block_byref_object_dispose__26816;
  v17 = "";
  std::vector<float>::vector[abi:ne200100](__p, v7);
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __113__VisionCoreValueConfidenceCurve_VNCoreSceneUnderstandingDetector__VNCurveForCSUMetricOperatingPointCurve_error___block_invoke;
  v10[3] = &unk_1E77B4D78;
  v10[4] = &v19;
  v10[5] = v11;
  v10[6] = &v12;
  [v6 enumerateUsingBlock:v10];
  v8 = [a1 curveWithValues:v20[6] confidences:v13[6] count:v7 error:a4];
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  _Block_object_dispose(&v19, 8);
  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  return v8;
}

@end