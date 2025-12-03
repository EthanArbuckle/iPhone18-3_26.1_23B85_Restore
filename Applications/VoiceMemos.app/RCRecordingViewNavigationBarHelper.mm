@interface RCRecordingViewNavigationBarHelper
- (RCControlsActionDelegate)controlsActionDelegate;
- (UINavigationItem)navigationItem;
- (_TtC10VoiceMemos34RCRecordingViewNavigationBarHelper)init;
- (void)applyButtonAction;
- (void)cancelButtonAction;
- (void)displayPlaybackSettings;
- (void)doneButtonAction:(id)action;
- (void)handleTrim;
- (void)setActivityMode:(int64_t)mode;
- (void)setCanSave:(BOOL)save;
- (void)setCanUndo:(BOOL)undo;
- (void)setDisplayMode:(int64_t)mode;
- (void)setDoneButtonItemShowsMenu:(BOOL)menu;
- (void)setHasCustomizedPlaybackSettings:(BOOL)settings;
- (void)setHasNoTranscribableContent:(BOOL)content;
- (void)setIsTranscriptViewDisplayed:(BOOL)displayed;
- (void)setMoreActionsMenu:(id)menu;
- (void)setNavigationItem:(id)item;
- (void)toggleTranscriptView;
- (void)undoButtonAction;
- (void)updateHasPlaybackSettings:(BOOL)settings;
- (void)updateTranscriptViewDisplayed:(BOOL)displayed;
@end

@implementation RCRecordingViewNavigationBarHelper

- (void)setDoneButtonItemShowsMenu:(BOOL)menu
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__doneButtonItemShowsMenu) = menu;
  selfCopy = self;
  sub_1000076C8();
}

- (void)setActivityMode:(int64_t)mode
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode) = mode;
  selfCopy = self;
  sub_1000076C8();
}

- (void)setDisplayMode:(int64_t)mode
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode) = mode;
  selfCopy = self;
  sub_1000076C8();
  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
}

- (void)setCanUndo:(BOOL)undo
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canUndo) = undo;
  selfCopy = self;
  sub_10001BFBC();
}

- (void)setMoreActionsMenu:(id)menu
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__moreMenu);
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__moreMenu) = menu;
  menuCopy = menu;
  selfCopy = self;

  sub_1000076C8();
}

- (UINavigationItem)navigationItem
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setNavigationItem:(id)item
{
  swift_unknownObjectWeakAssign();
  itemCopy = item;
  selfCopy = self;
  sub_1000076C8();
}

- (void)setCanSave:(BOOL)save
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canSave) = save;
  selfCopy = self;
  sub_1001B2B14();
}

- (void)setHasCustomizedPlaybackSettings:(BOOL)settings
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasPlaybackSettings) = settings;
  selfCopy = self;
  sub_1001B4354(settings);
}

- (void)setIsTranscriptViewDisplayed:(BOOL)displayed
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__isTranscriptViewDisplayed) = displayed;
  selfCopy = self;
  sub_1001B42E4(displayed);
}

- (void)setHasNoTranscribableContent:(BOOL)content
{
  *(self + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasNoTranscribableContent) = content;
  selfCopy = self;
  sub_1001B2BFC();
}

- (RCControlsActionDelegate)controlsActionDelegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)displayPlaybackSettings
{
  selfCopy = self;
  sub_1001B3DEC();
}

- (void)toggleTranscriptView
{
  selfCopy = self;
  sub_1001B3E44();
}

- (void)handleTrim
{
  selfCopy = self;
  sub_1001B3F14();
}

- (void)cancelButtonAction
{
  selfCopy = self;
  sub_1001B3F6C();
}

- (void)applyButtonAction
{
  selfCopy = self;
  sub_1001B3FC4();
}

- (void)undoButtonAction
{
  selfCopy = self;
  sub_1001B401C();
}

- (void)doneButtonAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1001B410C(v6);

  sub_10010D150(v6);
}

- (void)updateTranscriptViewDisplayed:(BOOL)displayed
{
  selfCopy = self;
  sub_1001B42E4(displayed);
}

- (void)updateHasPlaybackSettings:(BOOL)settings
{
  selfCopy = self;
  sub_1001B4354(settings);
}

- (_TtC10VoiceMemos34RCRecordingViewNavigationBarHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end