@interface SNAudioFileAnalyzer
- (SNAudioFileAnalyzer)initWithImpl:(id)a3;
- (SNAudioFileAnalyzer)initWithURL:(NSURL *)url error:(NSError *)error;
- (void)analyzeInRange:(id *)a3;
@end

@implementation SNAudioFileAnalyzer

- (SNAudioFileAnalyzer)initWithURL:(NSURL *)url error:(NSError *)error
{
  v6 = url;
  v12.receiver = self;
  v12.super_class = SNAudioFileAnalyzer;
  v7 = [(SNAudioFileAnalyzer *)&v12 init];
  if (v7 && (v8 = [[_SNAudioFileAnalyzer alloc] initWithURL:v6 error:error], impl = v7->_impl, v7->_impl = v8, impl, !v7->_impl))
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (SNAudioFileAnalyzer)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SNAudioFileAnalyzer;
  v6 = [(SNAudioFileAnalyzer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
  }

  return v7;
}

- (void)analyzeInRange:(id *)a3
{
  impl = self->_impl;
  v4 = *&a3->var0.var3;
  v5[0] = *&a3->var0.var0;
  v5[1] = v4;
  v5[2] = *&a3->var1.var1;
  [(_SNAudioFileAnalyzer *)impl analyzeInRange:v5];
}

@end