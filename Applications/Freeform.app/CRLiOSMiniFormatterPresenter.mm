@interface CRLiOSMiniFormatterPresenter
- (BOOL)isPinnedToTopOfRep;
- (BOOL)isPresentingInFixedPosition;
- (BOOL)isPresentingSecondLayerPopover;
- (_TtC8Freeform28CRLiOSMiniFormatterPresenter)initWithEditorController:(id)controller canvasLayerHosting:(id)hosting;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)dismissMiniFormatter;
- (void)dismissMiniFormatterForRep:(id)rep;
- (void)dismissMiniFormatterWithAnimated:(BOOL)animated;
- (void)dismissPresentedMenus;
- (void)dismissSecondLayerPopover;
- (void)forceMiniFormatterVCToReposition;
- (void)handleSingleTapOnRep:(id)rep withSelectionPath:(id)path;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentMiniFormatterForSelectionPath:(id)path;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)updateMiniFormatter;
@end

@implementation CRLiOSMiniFormatterPresenter

- (_TtC8Freeform28CRLiOSMiniFormatterPresenter)initWithEditorController:(id)controller canvasLayerHosting:(id)hosting
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  return sub_100719F64(controllerCopy, hosting);
}

- (BOOL)isPresentingInFixedPosition
{
  selfCopy = self;
  v3 = sub_10071A17C();

  return v3 & 1;
}

- (void)handleSingleTapOnRep:(id)rep withSelectionPath:(id)path
{
  repCopy = rep;
  pathCopy = path;
  selfCopy = self;
  sub_10071A21C(repCopy, pathCopy);
}

- (void)presentMiniFormatterForSelectionPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  sub_10071A710(pathCopy, 1);
}

- (void)dismissMiniFormatter
{
  selfCopy = self;
  sub_10071B728(1, 1, 0);
}

- (void)dismissMiniFormatterWithAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_10071B728(1, animated, 0);
}

- (void)dismissMiniFormatterForRep:(id)rep
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
  if (v3)
  {
    selfCopy = self;
    repCopy = rep;
    v6 = selfCopy;

    LOBYTE(selfCopy) = sub_10079EB78(repCopy, v3);

    if (selfCopy)
    {
      sub_10071B728(1, 1, 0);
    }
  }
}

- (void)dismissPresentedMenus
{
  selfCopy = self;
  sub_10071BAF8();
}

- (void)updateMiniFormatter
{
  selfCopy = self;
  sub_10071C188();
}

- (BOOL)isPresentingSecondLayerPopover
{
  selfCopy = self;
  v3 = sub_10071C2B4();

  return v3 & 1;
}

- (BOOL)isPinnedToTopOfRep
{
  selfCopy = self;
  v3 = sub_10071C38C();

  return v3 & 1;
}

- (void)forceMiniFormatterVCToReposition
{
  selfCopy = self;
  sub_10071F0CC();
}

- (void)dismissSecondLayerPopover
{
  selfCopy = self;
  sub_10071BC94(1, 0, 0);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  selfCopy = self;
  sub_10072567C(controllerCopy, viewControllerCopy);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = sub_100723DF8(controllerCopy, collectionCopy);

  return v9;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_100723F38(dismissCopy);
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting);
  selfCopy = self;
  interactiveCanvasController = [v3 interactiveCanvasController];
  [interactiveCanvasController unobscuredFrameDidChange];
}

@end