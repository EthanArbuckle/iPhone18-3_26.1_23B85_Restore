@interface FMFenceMapViewController
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)searchBarShouldEndEditing:(id)a3;
- (_TtC6FindMy24FMFenceMapViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelActionWithSender:(id)a3;
- (void)chooseLargeRadiusActionWithSender:(id)a3;
- (void)chooseMediumRadiusActionWithSender:(id)a3;
- (void)chooseSmallRadiusActionWithSender:(id)a3;
- (void)didStopDraggingHandle:(id)a3;
- (void)doneActionWithSender:(id)a3;
- (void)longPressActionWithSender:(id)a3;
- (void)mapView:(id)a3 annotationView:(id)a4 didChangeDragState:(unint64_t)a5 fromOldState:(unint64_t)a6;
- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)refreshActionWithSender:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willStartDraggingHandle:(id)a3;
@end

@implementation FMFenceMapViewController

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_100278B64();

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_100276DBC(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return UITableViewAutomaticDimension;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10027761C(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10042FC0C(v6, v7);
}

- (void)mapView:(id)a3 didDeselectAnnotationView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100430ADC(v7);
}

- (void)mapView:(id)a3 didUpdateUserLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100430C20(v6);
}

- (void)mapView:(id)a3 regionWillChangeAnimated:(BOOL)a4
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (v4)
  {
    [v4 removeHandle:{0, a4}];
  }

  else
  {
    __break(1u);
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (v5)
  {
    [v5 addHandleForAnnotation:{*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation), a4}];
  }

  else
  {
    __break(1u);
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1004303C0(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)a3 annotationView:(id)a4 didChangeDragState:(unint64_t)a5 fromOldState:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100430DAC(v10, a5);
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_10043091C(v5);

  swift_unknownObjectRelease();

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v10 = self;
  v5 = [v4 searchBar];
  v6 = [v5 text];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100464D0C(v7, v9);
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100458380(v4);

  return 1;
}

- (BOOL)searchBarShouldEndEditing:(id)a3
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isResigningFromTableView) & 1) == 0)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView);
    if (!v3)
    {
      __break(1u);
      return v3;
    }

    [v3 setHidden:1];
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100458614(v4);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100458A38(v4);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10045DBB8();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_10045DDE0(v3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10045DF1C(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  sub_10046CF90(a4);
  swift_unknownObjectRelease();
}

- (void)willStartDraggingHandle:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100467F18(a3);
}

- (void)didStopDraggingHandle:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10046801C(a3);
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10046D160();
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  v6 = self;
  v3 = [(FMFenceMapViewController *)v6 navigationItem];
  v4 = [v3 searchController];

  if (v4)
  {
    v5 = [v4 searchBar];

    [v5 resignFirstResponder];
  }
}

- (void)chooseSmallRadiusActionWithSender:(id)a3
{
  v3 = self;
  sub_100467A98(0x4059000000000000, 0);
}

- (void)chooseMediumRadiusActionWithSender:(id)a3
{
  v3 = self;
  sub_100467A98(0x406F400000000000, 0);
}

- (void)chooseLargeRadiusActionWithSender:(id)a3
{
  v3 = self;
  sub_100467A98(0x4077700000000000, 0);
}

- (void)longPressActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100468460(v4);
}

- (void)refreshActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10046D208();
}

- (void)doneActionWithSender:(id)a3
{
  v3 = self;
  sub_100466DE4();
}

- (void)cancelActionWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (*(&v4->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage) == 1)
  {
    v5 = [(FMFenceMapViewController *)v4 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [(FMFenceMapViewController *)v5 popViewControllerAnimated:1];

      v4 = v6;
    }
  }

  else
  {
    [(FMFenceMapViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  }

  sub_100006060(&v8);
}

- (_TtC6FindMy24FMFenceMapViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end