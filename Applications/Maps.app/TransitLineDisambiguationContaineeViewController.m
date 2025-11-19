@interface TransitLineDisambiguationContaineeViewController
- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)initWithCoder:(id)a3;
- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)initWithLabelMarker:(id)a3;
- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)onLineSelection;
- (id)onRefinementError;
- (void)handleDismissAction:(id)a3;
- (void)setLabelMarker:(id)a3;
- (void)setOnLineSelection:(id)a3;
- (void)setOnRefinementError:(id)a3;
- (void)shouldDismissForHorizontalSwipe_nonUIKitCardsOnly;
- (void)viewDidLoad;
@end

@implementation TransitLineDisambiguationContaineeViewController

- (void)setLabelMarker:(id)a3
{
  v5 = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker);
  *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker) = a3;
  v6 = a3;
  v7 = self;

  sub_10041A8F4(a3);
}

- (id)onLineSelection
{
  if (*(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100132998;
    v5[3] = &unk_101605490;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOnLineSelection:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100133EC8;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection);
  v8 = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (id)onRefinementError
{
  if (*(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError))
  {
    v2 = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError + 8);
    v5[4] = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_100132B94;
    v5[3] = &unk_101605440;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOnRefinementError:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_100133E64;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError);
  v8 = *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_1000588AC(v8);
}

- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)initWithLabelMarker:(id)a3
{
  v4 = a3;
  v5 = sub_100133C78(a3);

  return v5;
}

- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_labelMarker) = 0;
  v3 = (self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onLineSelection);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR____TtC4Maps48TransitLineDisambiguationContaineeViewController_onRefinementError);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100132E44();
}

- (void)handleDismissAction:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v5 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v6 = [objc_opt_self() sharedService];
  if (v6)
  {
    v7 = v6;
    [v6 captureUserAction:4 onTarget:638 eventValue:0];

    sub_10005E838(v10, v10[3]);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    v9.receiver = v5;
    v9.super_class = ObjectType;
    [(ContaineeViewController *)&v9 handleDismissAction:v8];
    swift_unknownObjectRelease();

    sub_10004E3D0(v10);
  }

  else
  {
    __break(1u);
  }
}

- (void)shouldDismissForHorizontalSwipe_nonUIKitCardsOnly
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 sharedService];
  if (v6)
  {
    v7 = v6;
    [v6 captureUserAction:4 onTarget:638 eventValue:0];

    v8.receiver = v5;
    v8.super_class = ObjectType;
    [(ContaineeViewController *)&v8 handleDismissAction:v5];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps48TransitLineDisambiguationContaineeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end