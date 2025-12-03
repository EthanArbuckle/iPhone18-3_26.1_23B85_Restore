@interface PersonalTranslationApertureElementViewController
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)associatedAppBundleIdentifier;
- (NSString)associatedScenePersistenceIdentifier;
- (_TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setAssociatedScenePersistenceIdentifier:(id)identifier;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation PersonalTranslationApertureElementViewController

- (void)setActiveLayoutMode:(int64_t)mode
{
  *(self + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_activeLayoutMode) = mode;
  selfCopy = self;
  sub_1001A4C00();
}

- (NSString)associatedScenePersistenceIdentifier
{
  if (*(self + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_associatedScenePersistenceIdentifier + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setAssociatedScenePersistenceIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController_associatedScenePersistenceIdentifier);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtC17SequoiaTranslator48PersonalTranslationApertureElementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1001A5104(v5, v7, bundle);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001A5408();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001A6A74();
  swift_unknownObjectRelease();
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for PersonalTranslationApertureElementViewController();
  swift_unknownObjectRetain();
  v4 = v8.receiver;
  [(PersonalTranslationApertureElementViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:container];
  systemApertureElementContext = [v4 systemApertureElementContext];
  v7[4] = nullsub_1;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100096948;
  v7[3] = &unk_100388070;
  v6 = _Block_copy(v7);
  [systemApertureElementContext setElementNeedsUpdateWithCoordinatedAnimations:v6];
  swift_unknownObjectRelease();

  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (NSSet)backgroundActivitiesToSuppress
{
  sub_100005AD4(&unk_1003BA340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002D3160;
  v3 = STBackgroundActivityIdentifierRecording;
  *(inited + 32) = STBackgroundActivityIdentifierRecording;
  v4 = v3;
  sub_100121058(inited);
  swift_setDeallocating();
  sub_1001A6BB0(inited + 32);
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_1001A6C24(&qword_1003A98C0, type metadata accessor for STBackgroundActivityIdentifier);
  v5.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (NSString)associatedAppBundleIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end