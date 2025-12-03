@interface GMEligibilityProvider
+ (_TtC24AssistantSettingsSupport21GMEligibilityProvider)shared;
- (BOOL)activeEnabled;
- (BOOL)deviceSupported;
- (PSListController)presenter;
- (_TtP24AssistantSettingsSupport29GMSpecifierControllerProcotol_)gmSpecifierController;
- (int64_t)eligibility;
- (int64_t)requestState;
- (void)fetchStatusAndForceDownloadIfNeededWithPresenter:(id)presenter;
- (void)fetchStatusWithPresenter:(id)presenter;
- (void)setEligibility:(int64_t)eligibility;
- (void)setPresenter:(id)presenter;
- (void)setRequestState:(int64_t)state;
- (void)updateADMState;
- (void)updateWithContext:(int64_t)context;
@end

@implementation GMEligibilityProvider

- (int64_t)eligibility
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setEligibility:(int64_t)eligibility
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  *(&self->super.isa + v5) = eligibility;
}

- (int64_t)requestState
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setRequestState:(int64_t)state
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  *(&self->super.isa + v5) = state;
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

- (void)setPresenter:(id)presenter
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = presenter;
  presenterCopy = presenter;
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

- (void)fetchStatusAndForceDownloadIfNeededWithPresenter:(id)presenter
{
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_shouldForceDownloadIfNeededOnFetch) = 1;
  presenterCopy = presenter;
  selfCopy = self;
  sub_2414093A8(presenter);
}

- (void)fetchStatusWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  selfCopy = self;
  sub_2414093A8(presenter);
}

- (void)updateWithContext:(int64_t)context
{
  selfCopy = self;
  sub_24140A3EC(context);
}

- (void)updateADMState
{
  selfCopy = self;
  sub_24140A8F4();
}

@end