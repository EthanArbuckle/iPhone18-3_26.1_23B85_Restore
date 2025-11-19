@interface CSUSceneNetV5NetworkOutput(VNCoreSceneUnderstandingDetector)
- (id)VNRequiredBufferFromSelector:()VNCoreSceneUnderstandingDetector error:;
@end

@implementation CSUSceneNetV5NetworkOutput(VNCoreSceneUnderstandingDetector)

- (id)VNRequiredBufferFromSelector:()VNCoreSceneUnderstandingDetector error:
{
  v6 = [a1 performSelector:?];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else if (a4)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = NSStringFromSelector(a3);
    v11 = [v9 initWithFormat:@"%@ did not provide a buffer", v10];

    *a4 = [VNError errorForDataUnavailableWithLocalizedDescription:v11];
  }

  return v7;
}

@end