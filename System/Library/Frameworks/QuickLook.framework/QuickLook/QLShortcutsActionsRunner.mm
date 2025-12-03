@interface QLShortcutsActionsRunner
- (void)runAction:(id)action withContext:(id)context completionHandler:(id)handler;
@end

@implementation QLShortcutsActionsRunner

- (void)runAction:(id)action withContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  actionCopy = action;
  v10 = _Block_copy(handler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v10;

  v12 = [objc_alloc(MEMORY[0x277D79EC8]) initWithContextualAction:actionCopy actionContext:contextCopy];
  [v12 setDelegate:self];
  [v12 start];
}

@end