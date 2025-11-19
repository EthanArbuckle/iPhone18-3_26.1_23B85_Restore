@interface WFStageManagerSettingsClient
+ (void)createClientWithCompletionHandler:(id)a3;
- (BOOL)showDock;
- (BOOL)showRecentApps;
- (void)getStateWithCompletionHandler:(id)a3;
- (void)setShowDock:(BOOL)a3;
- (void)setShowRecentApps:(BOOL)a3;
- (void)setState:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation WFStageManagerSettingsClient

+ (void)createClientWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_23DF36144(&unk_23E2236A0, v5);
}

- (BOOL)showRecentApps
{
  v2 = self;
  v3 = sub_23DE3A484();

  return v3 & 1;
}

- (void)setShowRecentApps:(BOOL)a3
{
  v3 = self;
  sub_23DE3A544();
}

- (BOOL)showDock
{
  v2 = self;
  v3 = sub_23DE3A5F4();

  return v3 & 1;
}

- (void)setShowDock:(BOOL)a3
{
  v3 = self;
  sub_23DE3A6B4();
}

- (void)getStateWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_23DF36144(&unk_23E223688, v5);
}

- (void)setState:(BOOL)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = self;
  v8 = self;

  sub_23DF36144(&unk_23E223670, v7);
}

@end