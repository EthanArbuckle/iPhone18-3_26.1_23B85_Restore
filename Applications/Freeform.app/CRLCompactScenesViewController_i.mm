@interface CRLCompactScenesViewController_i
- (UIResponder)nextResponder;
- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithCoder:(id)coder;
- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissScenesPopoverWithAnimated:(BOOL)animated completion:(id)completion;
- (void)presentScenesPopoverWith:(id)with;
- (void)updateSheetPresentationDetents;
- (void)viewDidLoad;
@end

@implementation CRLCompactScenesViewController_i

- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_isTornDown) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1006988E4();
}

- (UIResponder)nextResponder
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_icc);
  selfCopy = self;
  layerHost = [v2 layerHost];
  if (layerHost)
  {
    v5 = layerHost;
    if ([layerHost respondsToSelector:"asiOSCVC"])
    {
      asiOSCVC = [v5 asiOSCVC];
    }

    else
    {
      asiOSCVC = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    asiOSCVC = 0;
  }

  return asiOSCVC;
}

- (void)presentScenesPopoverWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_100698F6C(withCopy);
}

- (void)dismissScenesPopoverWithAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_10069931C(animated, v6, v7);
  sub_1000C1014(v6);
}

- (void)updateSheetPresentationDetents
{
  selfCopy = self;
  sheetPresentationController = [(CRLCompactScenesViewController_i *)selfCopy sheetPresentationController];
  if (sheetPresentationController)
  {
    v3 = sheetPresentationController;
    sub_100699634();
    sub_100006370(0, &qword_1019FB500);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setDetents:isa];
  }
}

- (_TtC8Freeform32CRLCompactScenesViewController_i)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end