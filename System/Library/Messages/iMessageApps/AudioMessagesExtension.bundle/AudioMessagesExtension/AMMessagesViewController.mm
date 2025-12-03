@interface AMMessagesViewController
+ (_TtC22AudioMessagesExtension24AMMessagesViewController)sharedMessagesViewController;
+ (void)setSharedMessagesViewController:(id)controller;
- (UIStackView)stackView;
- (_TtC22AudioMessagesExtension24AMMessagesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)audioMessageDidCancelMessage;
- (void)audioMessageDidChangeAudioPowerLevel:(float)level duration:(double)duration;
- (void)audioMessageDidChangeCurrentPlaybackTime:(double)time;
- (void)audioMessageDidEndPlayback;
- (void)audioMessageDidSendMessage;
- (void)audioMessageStartedRecordingFromMessages;
- (void)audioMessageStoppedRecordingFromMessages;
- (void)didCancelSendingMessage:(id)message conversation:(id)conversation;
- (void)didResignActiveWithConversation:(id)conversation;
- (void)didStartSendingMessage:(id)message conversation:(id)conversation;
- (void)didTransitionToPresentationStyle:(unint64_t)style;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)updateSnapshotWithCompletionBlock:(id)block;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBecomeActiveWithConversation:(id)conversation;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation AMMessagesViewController

- (void)audioMessageDidChangeAudioPowerLevel:(float)level duration:(double)duration
{
  selfCopy = self;
  sub_2B13C(level, duration);
}

- (void)audioMessageDidChangeCurrentPlaybackTime:(double)time
{
  selfCopy = self;
  sub_2B3E8(time);
}

- (void)audioMessageDidEndPlayback
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_36CA0(5u, 1, 0.0);
  }

  else
  {
    __break(1u);
  }
}

- (void)audioMessageDidSendMessage
{
  selfCopy = self;
  sub_2B614();
}

- (void)audioMessageDidCancelMessage
{
  selfCopy = self;
  sub_2B754();
}

- (void)audioMessageStartedRecordingFromMessages
{
  selfCopy = self;
  sub_2B898();
}

- (void)audioMessageStoppedRecordingFromMessages
{
  selfCopy = self;
  sub_2B960();
}

- (UIStackView)stackView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (_TtC22AudioMessagesExtension24AMMessagesViewController)sharedMessagesViewController
{
  if (qword_81A58 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)setSharedMessagesViewController:(id)controller
{
  v3 = qword_81A58;
  controllerCopy = controller;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2BF70();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_2C184(disappear);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2C2A8(controller);
}

- (void)willBecomeActiveWithConversation:(id)conversation
{
  v4 = *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation);
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation) = conversation;
  conversationCopy = conversation;
  selfCopy = self;

  v6 = sub_2B0C4();
  powerLevels = [v6 powerLevels];

  if (powerLevels)
  {

    sub_2B960();
  }
}

- (void)didResignActiveWithConversation:(id)conversation
{
  v3 = *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation);
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation) = 0;
}

- (void)didStartSendingMessage:(id)message conversation:(id)conversation
{
  sub_2D124(&qword_82010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5F5C0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x80000000000631D0;
  sub_42BF8();
}

- (void)didCancelSendingMessage:(id)message conversation:(id)conversation
{
  sub_2D124(&qword_82010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5F5C0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000000000631B0;
  sub_42BF8();
}

- (void)didTransitionToPresentationStyle:(unint64_t)style
{
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_currentPresentationStyle) = style;
  selfCopy = self;
  sub_2BD54(style);
}

- (void)updateSnapshotWithCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_2DDC0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC22AudioMessagesExtension24AMMessagesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  if (sender)
  {
    segueCopy = segue;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_42AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    segueCopy2 = segue;
    selfCopy2 = self;
  }

  sub_2CAB4(segue, v10);

  sub_2E3A0(v10, &unk_82040);
}

@end