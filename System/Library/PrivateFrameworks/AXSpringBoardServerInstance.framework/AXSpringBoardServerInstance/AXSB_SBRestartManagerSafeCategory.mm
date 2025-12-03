@interface AXSB_SBRestartManagerSafeCategory
- (void)initializeAndRunStartupTransition:(id)transition;
@end

@implementation AXSB_SBRestartManagerSafeCategory

- (void)initializeAndRunStartupTransition:(id)transition
{
  transitionCopy = transition;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__AXSB_SBRestartManagerSafeCategory_initializeAndRunStartupTransition___block_invoke;
  v7[3] = &unk_27842C288;
  v8 = transitionCopy;
  v6.receiver = self;
  v6.super_class = AXSB_SBRestartManagerSafeCategory;
  v5 = transitionCopy;
  [(AXSB_SBRestartManagerSafeCategory *)&v6 initializeAndRunStartupTransition:v7];
}

@end