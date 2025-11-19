@interface SFSpeechAnalyzerOptionsPowerContext
- (SFSpeechAnalyzerOptionsPowerContext)initWithAne:(id)a3 cpu:(id)a4 gpu:(id)a5;
@end

@implementation SFSpeechAnalyzerOptionsPowerContext

- (SFSpeechAnalyzerOptionsPowerContext)initWithAne:(id)a3 cpu:(id)a4 gpu:(id)a5
{
  v18.receiver = self;
  v18.super_class = SFSpeechAnalyzerOptionsPowerContext;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(SFSpeechAnalyzerOptionsPowerContext *)&v18 init];
  v11 = [v9 copy];

  ane = v10->_ane;
  v10->_ane = v11;

  v13 = [v8 copy];
  cpu = v10->_cpu;
  v10->_cpu = v13;

  v15 = [v7 copy];
  gpu = v10->_gpu;
  v10->_gpu = v15;

  return v10;
}

@end