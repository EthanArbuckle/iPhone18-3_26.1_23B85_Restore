@interface LockScreenViewController
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (_TtC15SleepLockScreen24LockScreenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithUserInfo:(id)info contentBounds:(id)bounds endpoint:(id)endpoint;
- (void)didChangeContentBounds;
- (void)didDismissForDismissType:(int64_t)type;
- (void)getContentPreferencesWithReplyBlock:(id)block;
- (void)getInlinePresentationContentFrameWithReplyBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation LockScreenViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000043DC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100004878(appear, &selRef_viewDidAppear_, "[%{public}s] view did appear");
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100004878(disappear, &selRef_viewDidDisappear_, "[%{public}s] view did disappear");
}

+ (id)_remoteViewControllerInterface
{
  v2 = HKSPSleepLockScreenRemoteContentHostInterface();

  return v2;
}

+ (id)_exportedInterface
{
  v2 = HKSPSleepLockScreenRemoteContentServiceInterface();

  return v2;
}

- (void)configureWithUserInfo:(id)info contentBounds:(id)bounds endpoint:(id)endpoint
{
  if (info)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for MainActor();
  __chkstk_darwin(v9);
  v11[2] = self;
  v11[3] = v8;
  v11[4] = bounds;
  v11[5] = endpoint;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100007E00(sub_10000F25C, v11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)didChangeContentBounds
{
  selfCopy = self;
  sub_1000080A8();
}

- (void)getInlinePresentationContentFrameWithReplyBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for MainActor();
  v7[2] = self;
  v7[3] = sub_10000EE4C;
  v7[4] = v5;
  v7[5] = 0;
  v7[6] = 0;
  selfCopy = self;
  sub_100007E00(sub_10000F238, v7);
}

- (void)getContentPreferencesWithReplyBlock:(id)block
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(block);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  type metadata accessor for MainActor();
  selfCopy = self;

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = 0;
  v14[5] = 0;
  v14[6] = sub_10000EE4C;
  v14[7] = v10;
  v14[8] = selfCopy;
  sub_100008C3C(0, 0, v8, &unk_1000112E0, v14);
}

- (void)didDismissForDismissType:(int64_t)type
{
  type metadata accessor for MainActor();
  v6[2] = self;
  v6[3] = type;
  selfCopy = self;
  sub_100007E00(sub_10000EDC0, v6);
}

- (_TtC15SleepLockScreen24LockScreenViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end