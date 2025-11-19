@interface TransitLineContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectTransitLineMarker:(id)a3;
- (BOOL)isShowingLineWithIdentifier:(id)a3;
- (BOOL)isShowingLineWithLabelMarker:(id)a3;
- (GEOMapServiceTraits)loadingTraits;
- (GEOTransitLineItem)lineItem;
- (_TtC4Maps18TransitLineContext)init;
- (_TtC4Maps18TransitLineContext)initWithLabelMarker:(id)a3 preferredLayout:(unint64_t)a4;
- (id)desiredCards;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)containeeViewControllerGoToPreviousState:(id)a3 withSender:(id)a4;
- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)lineCardViewController:(id)a3 displayMapRegion:(id)a4;
- (void)lineCardViewController:(id)a3 doDirectionItem:(id)a4;
- (void)lineCardViewController:(id)a3 openURL:(id)a4;
- (void)lineCardViewController:(id)a3 selectMapItem:(id)a4;
- (void)prepareLineCardViewControllerForFirstUse;
- (void)selectLineFor:(id)a3 zoomToMapRegion:(BOOL)a4;
- (void)selectLineWithLine:(id)a3 zoomToMapRegion:(BOOL)a4;
- (void)setChromeViewController:(id)a3;
- (void)setDisambiguationViewController:(id)a3;
- (void)setLabelMarker:(id)a3;
- (void)setLineCardViewController:(id)a3;
- (void)setLineItem:(id)a3;
@end

@implementation TransitLineContext

- (BOOL)chromeDidSelectTransitLineMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1002931EC(v4);

  return self & 1;
}

- (BOOL)chromeDidClearMapSelection
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v2)
  {
    v3 = self;
    v4 = v2;
    LODWORD(v2) = [v4 isTopContext:v3];
    if (v2)
    {
      [v4 popContext:v3 animated:1 completion:0];
    }
  }

  return v2;
}

- (void)lineCardViewController:(id)a3 doDirectionItem:(id)a4
{
  v9 = self;
  v5 = a4;
  v6 = [(TransitLineContext *)v9 iosBasedChromeViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 appCoordinator];

    if (v8)
    {
      [v8 enterRoutePlanningWithDirectionItem:v5 allowToPromptEditing:1 withUserInfo:0];
    }
  }
}

- (void)lineCardViewController:(id)a3 selectMapItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1002A2D54(a4);
}

- (void)lineCardViewController:(id)a3 displayMapRegion:(id)a4
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v4)
  {
    v7 = a3;
    v11 = self;
    v8 = a4;
    v9 = [v4 mapCameraController];
    if (v9)
    {
      if (!v8)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      [(TransitLineContext *)v9 displayMapRegion:v8 animated:1 completion:0];

      v7 = v8;
      v8 = v11;
      v11 = v10;
    }
  }
}

- (void)lineCardViewController:(id)a3 openURL:(id)a4
{
  v7 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = self;
  sub_1002A2EAC(v9);

  sub_1000FA5D4(v9);
}

- (void)setChromeViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController) = a3;
  v3 = a3;
}

- (GEOTransitLineItem)lineItem
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLineItem:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setLabelMarker:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker) = a3;
  v3 = a3;
}

- (void)setLineCardViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController) = a3;
  v3 = a3;
}

- (_TtC4Maps18TransitLineContext)initWithLabelMarker:(id)a3 preferredLayout:(unint64_t)a4
{
  v4 = a3;
  v5 = sub_10032F840(v4);

  return v5;
}

- (BOOL)isShowingLineWithLabelMarker:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10032DA00(v4);

  return self & 1;
}

- (BOOL)isShowingLineWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10032DC10(v4);

  return self & 1;
}

- (GEOMapServiceTraits)loadingTraits
{
  v2 = self;
  sub_10032DDDC();
  v4 = v3;

  return v4;
}

- (void)selectLineFor:(id)a3 zoomToMapRegion:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_10032DF04(v6, v4);
}

- (void)selectLineWithLine:(id)a3 zoomToMapRegion:(BOOL)a4
{
  v4 = a4;
  swift_unknownObjectRetain();
  v7 = self;
  sub_10032EBF4(a3, v4);
  swift_unknownObjectRelease();
}

- (void)prepareLineCardViewControllerForFirstUse
{
  v2 = self;
  sub_10032F450();
}

- (void)setDisambiguationViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController) = a3;
  v3 = a3;
}

- (_TtC4Maps18TransitLineContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)desiredCards
{
  v2 = self;
  v3 = sub_100332220();

  if (v3)
  {
    sub_1000CE6B8(&unk_10190B260);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)enterStackInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  v10[4] = sub_1003327F0;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100039C64;
  v10[3] = &unk_101611CD0;
  v7 = _Block_copy(v10);
  v8 = self;
  v9 = a4;

  [v9 addPreparation:v7];

  _Block_release(v7);
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = self;
  v14[4] = sub_1003327E8;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100039C64;
  v14[3] = &unk_101611C80;
  v8 = _Block_copy(v14);
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = v10;
  v13 = a4;

  [v13 addPreparation:v8];

  _Block_release(v8);
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
    memset(v9, 0, sizeof(v9));
    v6 = self;
  }

  v7 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v7)
  {
    v8 = v7;
    if ([(TransitLineContext *)v8 isTopContext:self])
    {
      [(TransitLineContext *)v8 popContext:self animated:1 completion:0];
    }
  }

  else
  {
    v8 = self;
  }

  sub_1000DB2F4(v9);
}

@end