@interface VCMediaAnalyzerClientContext
- (VCMediaAnalyzerClientContext)initWithStreamToken:(int64_t)a3;
@end

@implementation VCMediaAnalyzerClientContext

- (VCMediaAnalyzerClientContext)initWithStreamToken:(int64_t)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMediaAnalyzerClientContext;
  result = [(VCMediaAnalyzerClientContext *)&v5 init];
  if (result)
  {
    result->_streamToken = a3;
  }

  return result;
}

@end