@interface RCRecordingViewNavigationBarHelper
- (RCControlsActionDelegate)controlsActionDelegate;
- (UINavigationItem)navigationItem;
- (_TtC10VoiceMemos34RCRecordingViewNavigationBarHelper)init;
- (void)applyButtonAction;
- (void)cancelButtonAction;
- (void)displayPlaybackSettings;
- (void)doneButtonAction:(id)a3;
- (void)handleTrim;
- (void)setActivityMode:(int64_t)a3;
- (void)setCanSave:(BOOL)a3;
- (void)setCanUndo:(BOOL)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setDoneButtonItemShowsMenu:(BOOL)a3;
- (void)setHasCustomizedPlaybackSettings:(BOOL)a3;
- (void)setHasNoTranscribableContent:(BOOL)a3;
- (void)setIsTranscriptViewDisplayed:(BOOL)a3;
- (void)setMoreActionsMenu:(id)a3;
- (void)setNavigationItem:(id)a3;
- (void)toggleTranscriptView;
- (void)undoButtonAction;
- (void)updateHasPlaybackSettings:(BOOL)a3;
- (void)updateTranscriptViewDisplayed:(BOOL)a3;
@end

@implementation RCRecordingViewNavigationBarHelper

- (void)setDoneButtonItemShowsMenu:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__doneButtonItemShowsMenu) = a3;
  v3 = self;
  sub_1000076C8();
}

- (void)setActivityMode:(int64_t)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode) = a3;
  v3 = self;
  sub_1000076C8();
}

- (void)setDisplayMode:(int64_t)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode) = a3;
  v3 = self;
  sub_1000076C8();
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)setCanUndo:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canUndo) = a3;
  v3 = self;
  sub_10001BFBC();
}

- (void)setMoreActionsMenu:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__moreMenu);
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__moreMenu) = a3;
  v5 = a3;
  v6 = self;

  sub_1000076C8();
}

- (UINavigationItem)navigationItem
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setNavigationItem:(id)a3
{
  swift_unknownObjectWeakAssign();
  v5 = a3;
  v6 = self;
  sub_1000076C8();
}

- (void)setCanSave:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canSave) = a3;
  v3 = self;
  sub_1001B2B14();
}

- (void)setHasCustomizedPlaybackSettings:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasPlaybackSettings) = a3;
  v4 = self;
  sub_1001B4354(a3);
}

- (void)setIsTranscriptViewDisplayed:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__isTranscriptViewDisplayed) = a3;
  v4 = self;
  sub_1001B42E4(a3);
}

- (void)setHasNoTranscribableContent:(BOOL)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasNoTranscribableContent) = a3;
  v3 = self;
  sub_1001B2BFC();
}

- (RCControlsActionDelegate)controlsActionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)displayPlaybackSettings
{
  v2 = self;
  sub_1001B3DEC();
}

- (void)toggleTranscriptView
{
  v2 = self;
  sub_1001B3E44();
}

- (void)handleTrim
{
  v2 = self;
  sub_1001B3F14();
}

- (void)cancelButtonAction
{
  v2 = self;
  sub_1001B3F6C();
}

- (void)applyButtonAction
{
  v2 = self;
  sub_1001B3FC4();
}

- (void)undoButtonAction
{
  v2 = self;
  sub_1001B401C();
}

- (void)doneButtonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1001B410C(v6);

  sub_10010D150(v6);
}

- (void)updateTranscriptViewDisplayed:(BOOL)a3
{
  v4 = self;
  sub_1001B42E4(a3);
}

- (void)updateHasPlaybackSettings:(BOOL)a3
{
  v4 = self;
  sub_1001B4354(a3);
}

- (_TtC10VoiceMemos34RCRecordingViewNavigationBarHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end