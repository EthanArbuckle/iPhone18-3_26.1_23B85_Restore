@interface LNOneShotActionExecutor
- (LNOneShotActionExecutor)initWithAction:(id)a3 executorOptions:(id)a4 appContext:(id)a5;
@end

@implementation LNOneShotActionExecutor

- (LNOneShotActionExecutor)initWithAction:(id)a3 executorOptions:(id)a4 appContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return OneShotActionExecutor.init(action:executorOptions:appContext:)();
}

@end