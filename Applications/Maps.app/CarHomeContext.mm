@interface CarHomeContext
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (NSArray)carFocusOrderSequences;
- (id)desiredCards;
- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4;
- (void)carCardViewCloseButtonTapped:(id)a3;
- (void)configureCard:(id)a3 forKey:(id)a4;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)preciseLocationOffButtonCard:(id)a3 visibilityUpdated:(BOOL)a4;
- (void)preciseLocationOffButtonCardDidSelectAction:(id)a3;
- (void)prepareToEnterStackInChromeViewController:(id)a3;
@end

@implementation CarHomeContext

- (void)preciseLocationOffButtonCardDidSelectAction:(id)a3
{
  v3 = [objc_opt_self() sharedMapsDelegate];
  if (v3)
  {
    v4 = v3;
    [v3 interruptApplicationWithKind:15 userInfo:0 completionHandler:0];
  }
}

- (void)preciseLocationOffButtonCard:(id)a3 visibilityUpdated:(BOOL)a4
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard);
  *(&self->super.super.isa + OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard) = a4;
  v5 = self;
  sub_10039A7BC(v4);
}

- (NSArray)carFocusOrderSequences
{
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E47B0;
  *(v2 + 32) = [objc_opt_self() defaultSequence];
  sub_100014C84(0, &qword_101926EC0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)prepareToEnterStackInChromeViewController:(id)a3
{
  v5 = objc_opt_self();
  v6 = a3;
  v7 = self;
  v8 = @"Stark";
  v9 = [v6 currentTraits];
  v11[4] = UIView.annotateView(with:);
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1002ABAC8;
  v11[3] = &unk_1016154D8;
  v10 = _Block_copy(v11);
  [v5 precacheCategoriesForCacheKey:v8 withTraits:v9 completion:v10];
  _Block_release(v10);
}

- (void)becomeTopContextInChromeViewController:(id)a3 withAnimation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100399054(v6, v7);
}

- (id)desiredCards
{
  v2 = self;
  sub_100399B04();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)carCardViewCloseButtonTapped:(id)a3
{
  v5 = self;
  v3 = [(CarHomeContext *)v5 carChromeViewController];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    sub_100398A60();
    swift_endAccess();
    [v4 setNeedsUpdateComponent:@"cards" animated:1];
  }

  else
  {
  }
}

- (void)configureCard:(id)a3 forKey:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  v8 = self;
  sub_100399CE0(a3, v9, v7);
  swift_unknownObjectRelease();
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  v4 = self;
  v5 = sub_10039A62C();
  v7 = v6;
  v9 = v8;

  retstr->var0 = v5;
  retstr->var1 = v7;
  retstr->var2 = v9;
  return result;
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  v10 = a3;
  v11 = self;
  sub_10039AD38(v10, a4, a5, a6);
}

@end