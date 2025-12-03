@interface TransitLineContext
- (BOOL)chromeDidClearMapSelection;
- (BOOL)chromeDidSelectTransitLineMarker:(id)marker;
- (BOOL)isShowingLineWithIdentifier:(id)identifier;
- (BOOL)isShowingLineWithLabelMarker:(id)marker;
- (GEOMapServiceTraits)loadingTraits;
- (GEOTransitLineItem)lineItem;
- (_TtC4Maps18TransitLineContext)init;
- (_TtC4Maps18TransitLineContext)initWithLabelMarker:(id)marker preferredLayout:(unint64_t)layout;
- (id)desiredCards;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)containeeViewControllerGoToPreviousState:(id)state withSender:(id)sender;
- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)lineCardViewController:(id)controller displayMapRegion:(id)region;
- (void)lineCardViewController:(id)controller doDirectionItem:(id)item;
- (void)lineCardViewController:(id)controller openURL:(id)l;
- (void)lineCardViewController:(id)controller selectMapItem:(id)item;
- (void)prepareLineCardViewControllerForFirstUse;
- (void)selectLineFor:(id)for zoomToMapRegion:(BOOL)region;
- (void)selectLineWithLine:(id)line zoomToMapRegion:(BOOL)region;
- (void)setChromeViewController:(id)controller;
- (void)setDisambiguationViewController:(id)controller;
- (void)setLabelMarker:(id)marker;
- (void)setLineCardViewController:(id)controller;
- (void)setLineItem:(id)item;
@end

@implementation TransitLineContext

- (BOOL)chromeDidSelectTransitLineMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  LOBYTE(self) = sub_1002931EC(markerCopy);

  return self & 1;
}

- (BOOL)chromeDidClearMapSelection
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v2)
  {
    selfCopy = self;
    v4 = v2;
    LODWORD(v2) = [v4 isTopContext:selfCopy];
    if (v2)
    {
      [v4 popContext:selfCopy animated:1 completion:0];
    }
  }

  return v2;
}

- (void)lineCardViewController:(id)controller doDirectionItem:(id)item
{
  selfCopy = self;
  itemCopy = item;
  iosBasedChromeViewController = [(TransitLineContext *)selfCopy iosBasedChromeViewController];
  if (iosBasedChromeViewController)
  {
    v7 = iosBasedChromeViewController;
    appCoordinator = [iosBasedChromeViewController appCoordinator];

    if (appCoordinator)
    {
      [appCoordinator enterRoutePlanningWithDirectionItem:itemCopy allowToPromptEditing:1 withUserInfo:0];
    }
  }
}

- (void)lineCardViewController:(id)controller selectMapItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  selfCopy = self;
  sub_1002A2D54(item);
}

- (void)lineCardViewController:(id)controller displayMapRegion:(id)region
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v4)
  {
    controllerCopy = controller;
    selfCopy = self;
    regionCopy = region;
    mapCameraController = [v4 mapCameraController];
    if (mapCameraController)
    {
      if (!regionCopy)
      {
        __break(1u);
        return;
      }

      v10 = mapCameraController;
      [(TransitLineContext *)mapCameraController displayMapRegion:regionCopy animated:1 completion:0];

      controllerCopy = regionCopy;
      regionCopy = selfCopy;
      selfCopy = v10;
    }
  }
}

- (void)lineCardViewController:(id)controller openURL:(id)l
{
  v7 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (l)
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

  controllerCopy = controller;
  selfCopy = self;
  sub_1002A2EAC(v9);

  sub_1000FA5D4(v9);
}

- (void)setChromeViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController) = controller;
  controllerCopy = controller;
}

- (GEOTransitLineItem)lineItem
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setLineItem:(id)item
{
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_lineItem) = item;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setLabelMarker:(id)marker
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_labelMarker) = marker;
  markerCopy = marker;
}

- (void)setLineCardViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_lineCardViewController) = controller;
  controllerCopy = controller;
}

- (_TtC4Maps18TransitLineContext)initWithLabelMarker:(id)marker preferredLayout:(unint64_t)layout
{
  markerCopy = marker;
  v5 = sub_10032F840(markerCopy);

  return v5;
}

- (BOOL)isShowingLineWithLabelMarker:(id)marker
{
  markerCopy = marker;
  selfCopy = self;
  LOBYTE(self) = sub_10032DA00(markerCopy);

  return self & 1;
}

- (BOOL)isShowingLineWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  LOBYTE(self) = sub_10032DC10(identifierCopy);

  return self & 1;
}

- (GEOMapServiceTraits)loadingTraits
{
  selfCopy = self;
  sub_10032DDDC();
  v4 = v3;

  return v4;
}

- (void)selectLineFor:(id)for zoomToMapRegion:(BOOL)region
{
  regionCopy = region;
  forCopy = for;
  selfCopy = self;
  sub_10032DF04(forCopy, regionCopy);
}

- (void)selectLineWithLine:(id)line zoomToMapRegion:(BOOL)region
{
  regionCopy = region;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10032EBF4(line, regionCopy);
  swift_unknownObjectRelease();
}

- (void)prepareLineCardViewControllerForFirstUse
{
  selfCopy = self;
  sub_10032F450();
}

- (void)setDisambiguationViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController);
  *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_disambiguationViewController) = controller;
  controllerCopy = controller;
}

- (_TtC4Maps18TransitLineContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)desiredCards
{
  selfCopy = self;
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

- (void)enterStackInChromeViewController:(id)controller withAnimation:(id)animation
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
  selfCopy = self;
  animationCopy = animation;

  [animationCopy addPreparation:v7];

  _Block_release(v7);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v7 = swift_allocObject();
  *(v7 + 16) = controller;
  *(v7 + 24) = self;
  v14[4] = sub_1003327E8;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100039C64;
  v14[3] = &unk_101611C80;
  v8 = _Block_copy(v14);
  controllerCopy = controller;
  selfCopy = self;
  v11 = controllerCopy;
  v12 = selfCopy;
  animationCopy = animation;

  [animationCopy addPreparation:v8];

  _Block_release(v8);
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
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = *(&self->super.isa + OBJC_IVAR____TtC4Maps18TransitLineContext_chromeViewController);
  if (v7)
  {
    selfCopy3 = v7;
    if ([(TransitLineContext *)selfCopy3 isTopContext:self])
    {
      [(TransitLineContext *)selfCopy3 popContext:self animated:1 completion:0];
    }
  }

  else
  {
    selfCopy3 = self;
  }

  sub_1000DB2F4(v9);
}

@end