@interface ABPKMLModelConfiguration3DLiftingSequenceFirstStage
- (ABPKMLModelConfiguration3DLiftingSequenceFirstStage)init;
- (id)inputTensorNames;
- (id)outputTensorNames;
@end

@implementation ABPKMLModelConfiguration3DLiftingSequenceFirstStage

- (ABPKMLModelConfiguration3DLiftingSequenceFirstStage)init
{
  v8.receiver = self;
  v8.super_class = ABPKMLModelConfiguration3DLiftingSequenceFirstStage;
  v2 = [(ABPKMLModelConfiguration *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:kABPK3DLiftingSequenceFirstStageNetworkName];
    v5 = ABPKMLModelPath(v3, v4, 1);
    mlModelPath = v2->_mlModelPath;
    v2->_mlModelPath = v5;
  }

  return v2;
}

- (id)inputTensorNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = kABPK3DLiftingSequenceFirstStageInputTensorName;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)outputTensorNames
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = kABPK3DLiftingSequenceFirstStageOutputTensorName;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end