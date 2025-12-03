@interface TUIFeedRendererOptions
- (TUIFeedRendererOptions)initWithResourceTimeout:(double)timeout;
@end

@implementation TUIFeedRendererOptions

- (TUIFeedRendererOptions)initWithResourceTimeout:(double)timeout
{
  v5.receiver = self;
  v5.super_class = TUIFeedRendererOptions;
  result = [(TUIFeedRendererOptions *)&v5 init];
  if (result)
  {
    result->_timeout = timeout;
  }

  return result;
}

@end