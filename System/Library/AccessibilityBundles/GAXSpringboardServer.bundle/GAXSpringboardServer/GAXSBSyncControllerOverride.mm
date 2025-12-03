@interface GAXSBSyncControllerOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)beginRestoring;
- (void)resetService:(id)service willBeginDataResetWithMode:(int64_t)mode;
@end

@implementation GAXSBSyncControllerOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSyncController" hasInstanceMethod:@"resetService:willBeginDataResetWithMode:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"SBSyncController" hasInstanceMethod:@"beginRestoring" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBSyncController" hasInstanceMethod:@"isInUse" withFullSignature:{"B", 0}];
}

- (void)beginRestoring
{
  v3 = +[GAXSpringboard sharedInstance];
  if (([v3 isInactive] & 1) != 0 || objc_msgSend(v3, "profileConfiguration") != 1)
  {
    v6.receiver = self;
    v6.super_class = GAXSBSyncControllerOverride;
    [(GAXSBSyncControllerOverride *)&v6 beginRestoring];
  }

  else
  {
    v4 = GAXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Guided Access not allowing restore to begin", v5, 2u);
    }
  }
}

- (void)resetService:(id)service willBeginDataResetWithMode:(int64_t)mode
{
  serviceCopy = service;
  v7 = +[GAXSpringboard sharedInstance];
  if (([v7 isInactive] & 1) != 0 || objc_msgSend(v7, "profileConfiguration") != 1)
  {
    v10.receiver = self;
    v10.super_class = GAXSBSyncControllerOverride;
    [(GAXSBSyncControllerOverride *)&v10 resetService:serviceCopy willBeginDataResetWithMode:mode];
  }

  else
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Guided Access not allowing reset to begin", v9, 2u);
    }
  }
}

@end