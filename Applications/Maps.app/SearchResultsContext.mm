@interface SearchResultsContext
- (ChromeViewController)chromeViewController;
- (_TtC4Maps20SearchResultsContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
- (void)searchRedoFloatingControlPressed;
@end

@implementation SearchResultsContext

- (ChromeViewController)chromeViewController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Maps20SearchResultsContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1001815C4(controllerCopy);
}

- (void)leaveStackInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_1001817C8(controllerCopy, animationCopy);
}

- (id)desiredCards
{
  if (sub_100181AF4())
  {
    sub_1000CE6B8(&unk_10190B260);
    v2.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (id)personalizedItemSources
{
  selfCopy = self;
  sub_100181BFC();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)searchRedoFloatingControlPressed
{
  selfCopy = self;
  sub_100181E48();
}

@end