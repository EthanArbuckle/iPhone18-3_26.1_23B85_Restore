@interface AVFigRoutingContextInputContextCompletionContext
- (AVFigRoutingContextInputContextCompletionContext)initWithCompletionHandler:(id)handler;
- (void)dealloc;
@end

@implementation AVFigRoutingContextInputContextCompletionContext

- (AVFigRoutingContextInputContextCompletionContext)initWithCompletionHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = AVFigRoutingContextInputContextCompletionContext;
  v4 = [(AVFigRoutingContextInputContextCompletionContext *)&v6 init];
  v4->_completionHandler = [handler copy];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigRoutingContextInputContextCompletionContext;
  [(AVFigRoutingContextInputContextCompletionContext *)&v3 dealloc];
}

@end