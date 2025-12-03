@interface PaperDocumentViewController
- (_TtC8PaperKit27PaperDocumentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didScreenEdgePan;
- (void)pageDidChange:(id)change;
- (void)pageDidScroll:(id)scroll;
- (void)pageLabelViewTapped:(id)tapped;
- (void)pageWillScroll:(id)scroll;
- (void)toolPickerIsRulerActiveDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PaperDocumentViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PaperDocumentViewController(0);
  v2 = v5.receiver;
  [(PaperDocumentViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setClipsToBounds_];
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

- (void)pageDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PaperDocumentViewController.pageDidChange(_:)(changeCopy);
}

- (void)pageWillScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  PaperDocumentViewController.pageWillScroll(_:)(scrollCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  PaperDocumentViewController.traitCollectionDidChange(_:)(v9);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  PaperDocumentViewController.viewWillTransition(to:with:)(coordinator, width, height);
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
    selfCopy = self;
    PaperDocumentViewController.isThumbnailViewCollapsed.didset(v5);
  }
}

- (void)toolPickerIsRulerActiveDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  PaperDocumentViewController.toolPickerIsRulerActiveDidChange(_:)(changeCopy);
}

- (void)pageLabelViewTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  PaperDocumentViewController.pageLabelViewTapped(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sypSgMd);
}

- (_TtC8PaperKit27PaperDocumentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pageDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = scroll;
  PaperDocumentViewController.pageDidScroll(_:)(v9);
}

@end