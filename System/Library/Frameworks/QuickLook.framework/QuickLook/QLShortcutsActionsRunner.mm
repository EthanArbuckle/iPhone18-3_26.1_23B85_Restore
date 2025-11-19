@interface QLShortcutsActionsRunner
- (void)runAction:(id)a3 withContext:(id)a4 completionHandler:(id)a5;
@end

@implementation QLShortcutsActionsRunner

- (void)runAction:(id)a3 withContext:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = _Block_copy(a5);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v10;

  v12 = [objc_alloc(MEMORY[0x277D79EC8]) initWithContextualAction:v9 actionContext:v8];
  [v12 setDelegate:self];
  [v12 start];
}

@end