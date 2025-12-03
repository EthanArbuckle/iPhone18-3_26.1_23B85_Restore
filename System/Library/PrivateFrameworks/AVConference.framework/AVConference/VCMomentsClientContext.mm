@interface VCMomentsClientContext
- (VCMomentsClientContext)initWithStreamToken:(int64_t)token;
@end

@implementation VCMomentsClientContext

- (VCMomentsClientContext)initWithStreamToken:(int64_t)token
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMomentsClientContext;
  result = [(VCMomentsClientContext *)&v5 init];
  if (result)
  {
    result->_streamToken = token;
  }

  return result;
}

@end