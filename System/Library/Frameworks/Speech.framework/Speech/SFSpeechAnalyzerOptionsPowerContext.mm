@interface SFSpeechAnalyzerOptionsPowerContext
- (SFSpeechAnalyzerOptionsPowerContext)initWithAne:(id)ane cpu:(id)cpu gpu:(id)gpu;
@end

@implementation SFSpeechAnalyzerOptionsPowerContext

- (SFSpeechAnalyzerOptionsPowerContext)initWithAne:(id)ane cpu:(id)cpu gpu:(id)gpu
{
  v18.receiver = self;
  v18.super_class = SFSpeechAnalyzerOptionsPowerContext;
  gpuCopy = gpu;
  cpuCopy = cpu;
  aneCopy = ane;
  v10 = [(SFSpeechAnalyzerOptionsPowerContext *)&v18 init];
  v11 = [aneCopy copy];

  ane = v10->_ane;
  v10->_ane = v11;

  v13 = [cpuCopy copy];
  cpu = v10->_cpu;
  v10->_cpu = v13;

  v15 = [gpuCopy copy];
  gpu = v10->_gpu;
  v10->_gpu = v15;

  return v10;
}

@end