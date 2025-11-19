@interface CRLiOSMiniFormatterPresenter
- (BOOL)isPinnedToTopOfRep;
- (BOOL)isPresentingInFixedPosition;
- (BOOL)isPresentingSecondLayerPopover;
- (_TtC8Freeform28CRLiOSMiniFormatterPresenter)initWithEditorController:(id)a3 canvasLayerHosting:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)dismissMiniFormatter;
- (void)dismissMiniFormatterForRep:(id)a3;
- (void)dismissMiniFormatterWithAnimated:(BOOL)a3;
- (void)dismissPresentedMenus;
- (void)dismissSecondLayerPopover;
- (void)forceMiniFormatterVCToReposition;
- (void)handleSingleTapOnRep:(id)a3 withSelectionPath:(id)a4;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)presentMiniFormatterForSelectionPath:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)updateMiniFormatter;
@end

@implementation CRLiOSMiniFormatterPresenter

- (_TtC8Freeform28CRLiOSMiniFormatterPresenter)initWithEditorController:(id)a3 canvasLayerHosting:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  return sub_100719F64(v5, a4);
}

- (BOOL)isPresentingInFixedPosition
{
  v2 = self;
  v3 = sub_10071A17C();

  return v3 & 1;
}

- (void)handleSingleTapOnRep:(id)a3 withSelectionPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10071A21C(v6, v7);
}

- (void)presentMiniFormatterForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10071A710(v4, 1);
}

- (void)dismissMiniFormatter
{
  v2 = self;
  sub_10071B728(1, 1, 0);
}

- (void)dismissMiniFormatterWithAnimated:(BOOL)a3
{
  v4 = self;
  sub_10071B728(1, a3, 0);
}

- (void)dismissMiniFormatterForRep:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_repsForCurrentSelectionPath);
  if (v3)
  {
    v4 = self;
    v5 = a3;
    v6 = v4;

    LOBYTE(v4) = sub_10079EB78(v5, v3);

    if (v4)
    {
      sub_10071B728(1, 1, 0);
    }
  }
}

- (void)dismissPresentedMenus
{
  v2 = self;
  sub_10071BAF8();
}

- (void)updateMiniFormatter
{
  v2 = self;
  sub_10071C188();
}

- (BOOL)isPresentingSecondLayerPopover
{
  v2 = self;
  v3 = sub_10071C2B4();

  return v3 & 1;
}

- (BOOL)isPinnedToTopOfRep
{
  v2 = self;
  v3 = sub_10071C38C();

  return v3 & 1;
}

- (void)forceMiniFormatterVCToReposition
{
  v2 = self;
  sub_10071F0CC();
}

- (void)dismissSecondLayerPopover
{
  v2 = self;
  sub_10071BC94(1, 0, 0);
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10072567C(v7, v8);
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100723DF8(v6, v7);

  return v9;
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100723F38(v4);
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_canvasLayerHosting);
  v5 = self;
  v4 = [v3 interactiveCanvasController];
  [v4 unobscuredFrameDidChange];
}

@end