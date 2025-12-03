@interface DOCSBSceneRootViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (NSArray)keyCommands;
- (_TtC21DockFolderViewService28DOCSBSceneRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backgroundTappedWithSender:(id)sender;
- (void)performDismiss:(id)dismiss;
- (void)registerObserverForIdentifier:(id)identifier updateHandler:(id)handler;
- (void)removeFoldersForHiddenProviders;
- (void)unregisterObserverForIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation DOCSBSceneRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100043928();
}

- (_TtC21DockFolderViewService28DOCSBSceneRootViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10004849C(v5, v7, bundle);
}

- (NSArray)keyCommands
{
  selfCopy = self;
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

- (void)performDismiss:(id)dismiss
{
  if (dismiss)
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

  sub_10004896C(v6);

  sub_100006390(v6, &qword_1000BCA30, &unk_100090E80);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_100048F3C(beginCopy);

  return self & 1;
}

- (void)backgroundTappedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1000490B4(senderCopy);
}

- (void)registerObserverForIdentifier:(id)identifier updateHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_10004CFD4(v6, v8, sub_1000522D0, v9);
}

- (void)unregisterObserverForIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10004D524(v4, v6);
}

- (void)removeFoldersForHiddenProviders
{
  selfCopy = self;
  sub_10004D968();
}

@end