@interface GMEligibilityProvider
+ (_TtC24AssistantSettingsSupport21GMEligibilityProvider)shared;
- (BOOL)activeEnabled;
- (BOOL)deviceSupported;
- (PSListController)presenter;
- (_TtP24AssistantSettingsSupport29GMSpecifierControllerProcotol_)gmSpecifierController;
- (int64_t)eligibility;
- (int64_t)requestState;
- (void)fetchStatusAndForceDownloadIfNeededWithPresenter:(id)a3;
- (void)fetchStatusWithPresenter:(id)a3;
- (void)setEligibility:(int64_t)a3;
- (void)setPresenter:(id)a3;
- (void)setRequestState:(int64_t)a3;
- (void)updateADMState;
- (void)updateWithContext:(int64_t)a3;
@end

@implementation GMEligibilityProvider

- (int64_t)eligibility
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEligibility:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)requestState
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

+ (_TtC24AssistantSettingsSupport21GMEligibilityProvider)shared
{
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v3 = qword_28120FCD8;

  return v3;
}

- (PSListController)presenter
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setPresenter:(id)a3
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtP24AssistantSettingsSupport29GMSpecifierControllerProcotol_)gmSpecifierController
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (BOOL)deviceSupported
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  return !sub_241409038(*(&self->super.isa + v3), &unk_2853171D8);
}

- (BOOL)activeEnabled
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  if (*(&self->super.isa + v3) == 5)
  {
    return [*(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController) featureOptInStatus];
  }

  else
  {
    return 0;
  }
}

- (void)fetchStatusAndForceDownloadIfNeededWithPresenter:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_shouldForceDownloadIfNeededOnFetch) = 1;
  v5 = a3;
  v6 = self;
  sub_2414093A8(a3);
}

- (void)fetchStatusWithPresenter:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2414093A8(a3);
}

- (void)updateWithContext:(int64_t)a3
{
  v4 = self;
  sub_24140A3EC(a3);
}

- (void)updateADMState
{
  v2 = self;
  sub_24140A8F4();
}

@end