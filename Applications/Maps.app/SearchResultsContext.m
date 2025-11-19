@interface SearchResultsContext
- (ChromeViewController)chromeViewController;
- (_TtC4Maps20SearchResultsContext)init;
- (id)desiredCards;
- (id)personalizedItemSources;
- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
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

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1001815C4(v4);
}

- (void)leaveStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1001817C8(v6, v7);
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
  v2 = self;
  sub_100181BFC();

  sub_1000E2690();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)searchRedoFloatingControlPressed
{
  v2 = self;
  sub_100181E48();
}

@end