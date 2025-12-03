@interface WFStageManagerSettingsClient
+ (void)createClientWithCompletionHandler:(id)handler;
- (BOOL)showDock;
- (BOOL)showRecentApps;
- (void)getStateWithCompletionHandler:(id)handler;
- (void)setShowDock:(BOOL)dock;
- (void)setShowRecentApps:(BOOL)apps;
- (void)setState:(BOOL)state completionHandler:(id)handler;
@end

@implementation WFStageManagerSettingsClient

+ (void)createClientWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_23DF36144(&unk_23E2236A0, v5);
}

- (BOOL)showRecentApps
{
  selfCopy = self;
  v3 = sub_23DE3A484();

  return v3 & 1;
}

- (void)setShowRecentApps:(BOOL)apps
{
  selfCopy = self;
  sub_23DE3A544();
}

- (BOOL)showDock
{
  selfCopy = self;
  v3 = sub_23DE3A5F4();

  return v3 & 1;
}

- (void)setShowDock:(BOOL)dock
{
  selfCopy = self;
  sub_23DE3A6B4();
}

- (void)getStateWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_23DF36144(&unk_23E223688, v5);
}

- (void)setState:(BOOL)state completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = state;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  selfCopy = self;

  sub_23DF36144(&unk_23E223670, v7);
}

@end