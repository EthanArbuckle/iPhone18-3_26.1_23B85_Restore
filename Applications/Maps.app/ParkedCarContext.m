@interface ParkedCarContext
- (BOOL)chromeDidClearMapSelection;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps16ParkedCarContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)containeeViewControllerDidDismissExternally:(id)a3;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)parkedCarInfoCardViewController:(id)a3 showDirectionsForItem:(id)a4 userInfo:(id)a5;
- (void)parkedCarInfoCardViewControllerWantsDismiss:(id)a3;
- (void)shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5;
@end

@implementation ParkedCarContext

- (void)shareItem:(id)a3 presentationOptions:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000FA694;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  v10 = a4;
  v11 = self;
  sub_10020403C(a3, a4, v8, v9);
  sub_1000D3B90(v8, v9);
  swift_unknownObjectRelease();
}

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps16ParkedCarContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)desiredCards
{
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011E47B0;
  v4 = *(self + OBJC_IVAR____TtC4Maps16ParkedCarContext_viewController);
  *(v3 + 32) = v4;
  v5 = v4;
  sub_1000CE6B8(&unk_10190B260);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)personalizedItemSources
{
  v2 = self;
  sub_1002680E8();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002683CC(v6, v7);
}

- (BOOL)chromeDidClearMapSelection
{
  v2 = self;
  v3 = [(ParkedCarContext *)v2 iosChromeViewController];
  if (v3)
  {
    v4 = v3;
    if ([v3 isTopContext:v2])
    {
      [v4 popContext:v2 animated:1 completion:0];
    }
  }

  return 1;
}

- (void)parkedCarInfoCardViewControllerWantsDismiss:(id)a3
{
  v6 = self;
  v3 = [(ParkedCarContext *)v6 iosChromeViewController];
  v4 = v6;
  if (v3)
  {
    v5 = v3;
    if ([v3 isTopContext:v6])
    {
      [v5 popContext:v6 animated:1 completion:0];
    }

    v4 = v6;
  }
}

- (void)parkedCarInfoCardViewController:(id)a3 showDirectionsForItem:(id)a4 userInfo:(id)a5
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v11 = self;
  v8 = [(ParkedCarContext *)v11 iosBasedChromeViewController];
  v9 = [v8 appCoordinator];

  if (v9)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 enterRoutePlanningWithDirectionItem:v7 allowToPromptEditing:1 withUserInfo:isa];
  }

  else
  {
  }
}

- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4
{
  if (a4)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v6 = self;
  }

  v7 = [(ParkedCarContext *)self iosChromeViewController:v9];
  if (v7)
  {
    v8 = v7;
    if ([(ParkedCarContext *)v7 isTopContext:self])
    {
      [(ParkedCarContext *)v8 popContext:self animated:1 completion:0];
    }
  }

  else
  {
    v8 = self;
  }

  sub_1000DB2F4(&v9);
}

- (void)containeeViewControllerDidDismissExternally:(id)a3
{
  v6 = self;
  v3 = [(ParkedCarContext *)v6 iosChromeViewController];
  v4 = v6;
  if (v3)
  {
    v5 = v3;
    if ([v3 isTopContext:v6])
    {
      [v5 popContext:v6 animated:1 completion:0];
    }

    v4 = v6;
  }
}

@end