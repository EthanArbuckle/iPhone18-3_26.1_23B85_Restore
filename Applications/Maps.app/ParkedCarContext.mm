@interface ParkedCarContext
- (BOOL)chromeDidClearMapSelection;
- (ChromeViewController)chromeViewController;
- (_TtC4Maps16ParkedCarContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)containeeViewControllerDidDismissExternally:(id)externally;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)parkedCarInfoCardViewController:(id)controller showDirectionsForItem:(id)item userInfo:(id)info;
- (void)parkedCarInfoCardViewControllerWantsDismiss:(id)dismiss;
- (void)shareItem:(id)item presentationOptions:(id)options completion:(id)completion;
@end

@implementation ParkedCarContext

- (void)shareItem:(id)item presentationOptions:(id)options completion:(id)completion
{
  v8 = _Block_copy(completion);
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
  optionsCopy = options;
  selfCopy = self;
  sub_10020403C(item, options, v8, v9);
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
  selfCopy = self;
  sub_1002680E8();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_1002683CC(controllerCopy, animationCopy);
}

- (BOOL)chromeDidClearMapSelection
{
  selfCopy = self;
  iosChromeViewController = [(ParkedCarContext *)selfCopy iosChromeViewController];
  if (iosChromeViewController)
  {
    v4 = iosChromeViewController;
    if ([iosChromeViewController isTopContext:selfCopy])
    {
      [v4 popContext:selfCopy animated:1 completion:0];
    }
  }

  return 1;
}

- (void)parkedCarInfoCardViewControllerWantsDismiss:(id)dismiss
{
  selfCopy = self;
  iosChromeViewController = [(ParkedCarContext *)selfCopy iosChromeViewController];
  v4 = selfCopy;
  if (iosChromeViewController)
  {
    v5 = iosChromeViewController;
    if ([iosChromeViewController isTopContext:selfCopy])
    {
      [v5 popContext:selfCopy animated:1 completion:0];
    }

    v4 = selfCopy;
  }
}

- (void)parkedCarInfoCardViewController:(id)controller showDirectionsForItem:(id)item userInfo:(id)info
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  itemCopy = item;
  selfCopy = self;
  iosBasedChromeViewController = [(ParkedCarContext *)selfCopy iosBasedChromeViewController];
  appCoordinator = [iosBasedChromeViewController appCoordinator];

  if (appCoordinator)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [appCoordinator enterRoutePlanningWithDirectionItem:itemCopy allowToPromptEditing:1 withUserInfo:isa];
  }

  else
  {
  }
}

- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    selfCopy2 = self;
  }

  v7 = [(ParkedCarContext *)self iosChromeViewController:v9];
  if (v7)
  {
    selfCopy3 = v7;
    if ([(ParkedCarContext *)v7 isTopContext:self])
    {
      [(ParkedCarContext *)selfCopy3 popContext:self animated:1 completion:0];
    }
  }

  else
  {
    selfCopy3 = self;
  }

  sub_1000DB2F4(&v9);
}

- (void)containeeViewControllerDidDismissExternally:(id)externally
{
  selfCopy = self;
  iosChromeViewController = [(ParkedCarContext *)selfCopy iosChromeViewController];
  v4 = selfCopy;
  if (iosChromeViewController)
  {
    v5 = iosChromeViewController;
    if ([iosChromeViewController isTopContext:selfCopy])
    {
      [v5 popContext:selfCopy animated:1 completion:0];
    }

    v4 = selfCopy;
  }
}

@end