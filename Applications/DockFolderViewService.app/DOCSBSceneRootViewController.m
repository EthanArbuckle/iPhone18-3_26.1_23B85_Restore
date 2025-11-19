@interface DOCSBSceneRootViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (NSArray)keyCommands;
- (_TtC21DockFolderViewService28DOCSBSceneRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backgroundTappedWithSender:(id)a3;
- (void)performDismiss:(id)a3;
- (void)registerObserverForIdentifier:(id)a3 updateHandler:(id)a4;
- (void)removeFoldersForHiddenProviders;
- (void)unregisterObserverForIdentifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation DOCSBSceneRootViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100043928();
}

- (_TtC21DockFolderViewService28DOCSBSceneRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10004849C(v5, v7, a4);
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_1000488A4();

  if (v3)
  {
    sub_10001A2A8(0, &unk_1000BC6A0, UIKeyCommand_ptr);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)performDismiss:(id)a3
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

  sub_10004896C(v6);

  sub_100006390(v6, &qword_1000BCA30, &unk_100090E80);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100048F3C(v4);

  return self & 1;
}

- (void)backgroundTappedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000490B4(v4);
}

- (void)registerObserverForIdentifier:(id)a3 updateHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_10004CFD4(v6, v8, sub_1000522D0, v9);
}

- (void)unregisterObserverForIdentifier:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10004D524(v4, v6);
}

- (void)removeFoldersForHiddenProviders
{
  v2 = self;
  sub_10004D968();
}

@end