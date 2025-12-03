@interface CarHomeContext
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration;
- (NSArray)carFocusOrderSequences;
- (id)desiredCards;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)carCardViewCloseButtonTapped:(id)tapped;
- (void)configureCard:(id)card forKey:(id)key;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)preciseLocationOffButtonCard:(id)card visibilityUpdated:(BOOL)updated;
- (void)preciseLocationOffButtonCardDidSelectAction:(id)action;
- (void)prepareToEnterStackInChromeViewController:(id)controller;
@end

@implementation CarHomeContext

- (void)preciseLocationOffButtonCardDidSelectAction:(id)action
{
  sharedMapsDelegate = [objc_opt_self() sharedMapsDelegate];
  if (sharedMapsDelegate)
  {
    v4 = sharedMapsDelegate;
    [sharedMapsDelegate interruptApplicationWithKind:15 userInfo:0 completionHandler:0];
  }
}

- (void)preciseLocationOffButtonCard:(id)card visibilityUpdated:(BOOL)updated
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard);
  *(&self->super.super.isa + OBJC_IVAR____TtC4Maps14CarHomeContext_showPreciseLocationCard) = updated;
  selfCopy = self;
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

- (void)prepareToEnterStackInChromeViewController:(id)controller
{
  v5 = objc_opt_self();
  controllerCopy = controller;
  selfCopy = self;
  v8 = @"Stark";
  currentTraits = [controllerCopy currentTraits];
  v11[4] = UIView.annotateView(with:);
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1002ABAC8;
  v11[3] = &unk_1016154D8;
  v10 = _Block_copy(v11);
  [v5 precacheCategoriesForCacheKey:v8 withTraits:currentTraits completion:v10];
  _Block_release(v10);
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  controllerCopy = controller;
  animationCopy = animation;
  selfCopy = self;
  sub_100399054(controllerCopy, animationCopy);
}

- (id)desiredCards
{
  selfCopy = self;
  sub_100399B04();

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)carCardViewCloseButtonTapped:(id)tapped
{
  selfCopy = self;
  carChromeViewController = [(CarHomeContext *)selfCopy carChromeViewController];
  if (carChromeViewController)
  {
    v4 = carChromeViewController;
    swift_beginAccess();
    sub_100398A60();
    swift_endAccess();
    [v4 setNeedsUpdateComponent:@"cards" animated:1];
  }

  else
  {
  }
}

- (void)configureCard:(id)card forKey:(id)key
{
  if (key)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100399CE0(card, v9, v7);
  swift_unknownObjectRelease();
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)mapControlsConfiguration
{
  selfCopy = self;
  v5 = sub_10039A62C();
  v7 = v6;
  v9 = v8;

  retstr->var0 = v5;
  retstr->var1 = v7;
  retstr->var2 = v9;
  return result;
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  viewCopy = view;
  selfCopy = self;
  sub_10039AD38(viewCopy, mode, animated, button);
}

@end