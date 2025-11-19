@interface AXSB_SBRestartManagerSafeCategory
- (void)initializeAndRunStartupTransition:(id)a3;
@end

@implementation AXSB_SBRestartManagerSafeCategory

- (void)initializeAndRunStartupTransition:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__AXSB_SBRestartManagerSafeCategory_initializeAndRunStartupTransition___block_invoke;
  v7[3] = &unk_27842C288;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = AXSB_SBRestartManagerSafeCategory;
  v5 = v4;
  [(AXSB_SBRestartManagerSafeCategory *)&v6 initializeAndRunStartupTransition:v7];
}

@end