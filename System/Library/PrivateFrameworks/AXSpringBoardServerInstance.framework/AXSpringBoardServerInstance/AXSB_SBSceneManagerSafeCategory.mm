@interface AXSB_SBSceneManagerSafeCategory
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)userInterfaceStyleProvider:(id)a3 didUpdateStyle:(int64_t)a4 preferredAnimationSettings:(id)a5 completion:(id)a6;
@end

@implementation AXSB_SBSceneManagerSafeCategory

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSceneManager" conformsToProtocol:@"SBUserInterfaceStyleObserver"];
  [v3 validateProtocol:@"SBUserInterfaceStyleObserver" hasRequiredInstanceMethod:@"userInterfaceStyleProvider:didUpdateStyle:preferredAnimationSettings:completion:"];
}

- (void)userInterfaceStyleProvider:(id)a3 didUpdateStyle:(int64_t)a4 preferredAnimationSettings:(id)a5 completion:(id)a6
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXSB_SBSceneManagerSafeCategory;
  [(AXSB_SBSceneManagerSafeCategory *)&v12 userInterfaceStyleProvider:a3 didUpdateStyle:a4 preferredAnimationSettings:a5 completion:a6];
  v6 = +[AXSpringBoardServerHelper sharedServerHelper];
  if ([v6 _isDarkModeActive])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v13 = *MEMORY[0x277CE7C98];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v8 springBoardActionOccurred:13 withPayload:v10];

  v11 = *MEMORY[0x277D85DE8];
}

@end