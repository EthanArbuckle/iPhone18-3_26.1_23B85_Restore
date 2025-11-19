@interface CRLCompactScenesViewController_i
- (UIResponder)nextResponder;
- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithCoder:(id)a3;
- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissScenesPopoverWithAnimated:(BOOL)a3 completion:(id)a4;
- (void)presentScenesPopoverWith:(id)a3;
- (void)updateSheetPresentationDetents;
- (void)viewDidLoad;
@end

@implementation CRLCompactScenesViewController_i

- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_isTornDown) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1006988E4();
}

- (UIResponder)nextResponder
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_icc);
  v3 = self;
  v4 = [v2 layerHost];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector:"asiOSCVC"])
    {
      v6 = [v5 asiOSCVC];
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)presentScenesPopoverWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100698F6C(v4);
}

- (void)dismissScenesPopoverWithAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100685EBC;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_10069931C(a3, v6, v7);
  sub_1000C1014(v6);
}

- (void)updateSheetPresentationDetents
{
  v5 = self;
  v2 = [(CRLCompactScenesViewController_i *)v5 sheetPresentationController];
  if (v2)
  {
    v3 = v2;
    sub_100699634();
    sub_100006370(0, &qword_1019FB500);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setDetents:isa];
  }
}

- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end