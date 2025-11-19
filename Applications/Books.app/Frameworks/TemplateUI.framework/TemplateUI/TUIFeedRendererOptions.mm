@interface TUIFeedRendererOptions
- (TUIFeedRendererOptions)initWithResourceTimeout:(double)a3;
@end

@implementation TUIFeedRendererOptions

- (TUIFeedRendererOptions)initWithResourceTimeout:(double)a3
{
  v5.receiver = self;
  v5.super_class = TUIFeedRendererOptions;
  result = [(TUIFeedRendererOptions *)&v5 init];
  if (result)
  {
    result->_timeout = a3;
  }

  return result;
}

@end