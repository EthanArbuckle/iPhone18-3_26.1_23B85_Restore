@interface AMMessagesViewController
+ (_TtC22AudioMessagesExtension24AMMessagesViewController)sharedMessagesViewController;
+ (void)setSharedMessagesViewController:(id)a3;
- (UIStackView)stackView;
- (_TtC22AudioMessagesExtension24AMMessagesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)audioMessageDidCancelMessage;
- (void)audioMessageDidChangeAudioPowerLevel:(float)a3 duration:(double)a4;
- (void)audioMessageDidChangeCurrentPlaybackTime:(double)a3;
- (void)audioMessageDidEndPlayback;
- (void)audioMessageDidSendMessage;
- (void)audioMessageStartedRecordingFromMessages;
- (void)audioMessageStoppedRecordingFromMessages;
- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4;
- (void)didResignActiveWithConversation:(id)a3;
- (void)didStartSendingMessage:(id)a3 conversation:(id)a4;
- (void)didTransitionToPresentationStyle:(unint64_t)a3;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)updateSnapshotWithCompletionBlock:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willBecomeActiveWithConversation:(id)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation AMMessagesViewController

- (void)audioMessageDidChangeAudioPowerLevel:(float)a3 duration:(double)a4
{
  v6 = self;
  sub_2B13C(a3, a4);
}

- (void)audioMessageDidChangeCurrentPlaybackTime:(double)a3
{
  v4 = self;
  sub_2B3E8(a3);
}

- (void)audioMessageDidEndPlayback
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_36CA0(5u, 1, 0.0);
  }

  else
  {
    __break(1u);
  }
}

- (void)audioMessageDidSendMessage
{
  v2 = self;
  sub_2B614();
}

- (void)audioMessageDidCancelMessage
{
  v2 = self;
  sub_2B754();
}

- (void)audioMessageStartedRecordingFromMessages
{
  v2 = self;
  sub_2B898();
}

- (void)audioMessageStoppedRecordingFromMessages
{
  v2 = self;
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

+ (void)setSharedMessagesViewController:(id)a3
{
  v3 = qword_81A58;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2BF70();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_2C184(a3);
}

- (void)willMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2C2A8(a3);
}

- (void)willBecomeActiveWithConversation:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation);
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation) = a3;
  v5 = a3;
  v8 = self;

  v6 = sub_2B0C4();
  v7 = [v6 powerLevels];

  if (v7)
  {

    sub_2B960();
  }
}

- (void)didResignActiveWithConversation:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation);
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_conversation) = 0;
}

- (void)didStartSendingMessage:(id)a3 conversation:(id)a4
{
  sub_2D124(&qword_82010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5F5C0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0xD000000000000011;
  *(v4 + 40) = 0x80000000000631D0;
  sub_42BF8();
}

- (void)didCancelSendingMessage:(id)a3 conversation:(id)a4
{
  sub_2D124(&qword_82010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5F5C0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000000000631B0;
  sub_42BF8();
}

- (void)didTransitionToPresentationStyle:(unint64_t)a3
{
  *(self + OBJC_IVAR____TtC22AudioMessagesExtension24AMMessagesViewController_currentPresentationStyle) = a3;
  v4 = self;
  sub_2BD54(a3);
}

- (void)updateSnapshotWithCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2DDC0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC22AudioMessagesExtension24AMMessagesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_42AA8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_2CAB4(a3, v10);

  sub_2E3A0(v10, &unk_82040);
}

@end