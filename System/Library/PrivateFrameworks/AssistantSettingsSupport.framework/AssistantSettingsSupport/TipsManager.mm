@interface TipsManager
+ (_TtC24AssistantSettingsSupport11TipsManager)shared;
- (BOOL)shouldShowTip;
- (_TtC24AssistantSettingsSupport11TipsManager)init;
- (void)configureTipsWithController:(id)controller;
- (void)setShouldShowTip:(BOOL)tip;
@end

@implementation TipsManager

+ (_TtC24AssistantSettingsSupport11TipsManager)shared
{
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v3 = qword_27E542760;

  return v3;
}

- (BOOL)shouldShowTip
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldShowTip:(BOOL)tip
{
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip;
  swift_beginAccess();
  *(&self->super.isa + v5) = tip;
}

- (void)configureTipsWithController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2413E9758(controller);
}

- (_TtC24AssistantSettingsSupport11TipsManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_shouldShowTip) = 0;
  v2 = self + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_tipToDisplay;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_appleIntelligenceTipObservationTask) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_imageCreateTipObservationTask) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC24AssistantSettingsSupport11TipsManager_hostController) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for TipsManager();
  return [(TipsManager *)&v4 init];
}

@end