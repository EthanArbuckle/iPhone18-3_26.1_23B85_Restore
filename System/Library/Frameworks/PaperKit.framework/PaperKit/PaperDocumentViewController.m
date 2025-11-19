@interface PaperDocumentViewController
- (_TtC8PaperKit27PaperDocumentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didScreenEdgePan;
- (void)pageDidChange:(id)a3;
- (void)pageDidScroll:(id)a3;
- (void)pageLabelViewTapped:(id)a3;
- (void)pageWillScroll:(id)a3;
- (void)toolPickerIsRulerActiveDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PaperDocumentViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PaperDocumentViewController(0);
  v2 = v5.receiver;
  [(PaperDocumentViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setClipsToBounds_];
  }

  else
  {
    __break(1u);
  }
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaperDocumentViewController(0);
  v2 = v3.receiver;
  [(PaperDocumentViewController *)&v3 updateViewConstraints];
  PaperDocumentViewController.updateThumbnailViewConstraints()();
}

- (void)pageDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperDocumentViewController.pageDidChange(_:)(v4);
}

- (void)pageWillScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperDocumentViewController.pageWillScroll(_:)(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PaperDocumentViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  PaperDocumentViewController.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)didScreenEdgePan
{
  v3 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_allowsUserInteractionToToggleThumbnailViewVisibility;
  swift_beginAccess();
  if (*(&self->super.super.super.isa + v3) == 1)
  {
    v4 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_isThumbnailViewCollapsed;
    swift_beginAccess();
    v5 = *(&self->super.super.super.isa + v4);
    *(&self->super.super.super.isa + v4) = 0;
    v6 = self;
    PaperDocumentViewController.isThumbnailViewCollapsed.didset(v5);
  }
}

- (void)toolPickerIsRulerActiveDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  PaperDocumentViewController.toolPickerIsRulerActiveDidChange(_:)(v4);
}

- (void)pageLabelViewTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  PaperDocumentViewController.pageLabelViewTapped(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sypSgMd);
}

- (_TtC8PaperKit27PaperDocumentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pageDidScroll:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PaperDocumentViewController.pageDidScroll(_:)(v9);
}

@end