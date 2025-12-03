@interface LNOneShotActionExecutor
- (LNOneShotActionExecutor)initWithAction:(id)action executorOptions:(id)options appContext:(id)context;
@end

@implementation LNOneShotActionExecutor

- (LNOneShotActionExecutor)initWithAction:(id)action executorOptions:(id)options appContext:(id)context
{
  actionCopy = action;
  optionsCopy = options;
  contextCopy = context;
  return OneShotActionExecutor.init(action:executorOptions:appContext:)();
}

@end