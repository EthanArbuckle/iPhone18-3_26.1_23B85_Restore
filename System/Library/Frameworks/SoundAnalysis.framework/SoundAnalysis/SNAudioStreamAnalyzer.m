@interface SNAudioStreamAnalyzer
- (SNAudioStreamAnalyzer)init;
- (SNAudioStreamAnalyzer)initWithFormat:(AVAudioFormat *)format;
- (SNAudioStreamAnalyzer)initWithImpl:(id)a3;
@end

@implementation SNAudioStreamAnalyzer

- (SNAudioStreamAnalyzer)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"illegal call to unavailable init selector: %s", "-[SNAudioStreamAnalyzer init]"}];

  return 0;
}

- (SNAudioStreamAnalyzer)initWithFormat:(AVAudioFormat *)format
{
  v4 = format;
  v12.receiver = self;
  v12.super_class = SNAudioStreamAnalyzer;
  v5 = [(SNAudioStreamAnalyzer *)&v12 init];
  if (v5)
  {
    v11 = 0;
    v6 = [[_SNAudioStreamAnalyzer alloc] initWithFormat:v4 error:&v11];
    v7 = v11;
    impl = v5->_impl;
    v5->_impl = v6;

    if (!v5->_impl)
    {
      v9 = [SNError exceptionFromError:v7];
      [v9 raise];
    }
  }

  return v5;
}

- (SNAudioStreamAnalyzer)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNAudioStreamAnalyzer;
  v6 = [(SNAudioStreamAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
  }

  return v7;
}

@end