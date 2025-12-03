@interface FMFenceMapViewController
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)searchBarShouldEndEditing:(id)editing;
- (_TtC6FindMy24FMFenceMapViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelActionWithSender:(id)sender;
- (void)chooseLargeRadiusActionWithSender:(id)sender;
- (void)chooseMediumRadiusActionWithSender:(id)sender;
- (void)chooseSmallRadiusActionWithSender:(id)sender;
- (void)didStopDraggingHandle:(id)handle;
- (void)doneActionWithSender:(id)sender;
- (void)longPressActionWithSender:(id)sender;
- (void)mapView:(id)view annotationView:(id)annotationView didChangeDragState:(unint64_t)state fromOldState:(unint64_t)oldState;
- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didUpdateUserLocation:(id)location;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)refreshActionWithSender:(id)sender;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willStartDraggingHandle:(id)handle;
@end

@implementation FMFenceMapViewController

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_100278B64();

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_100276DBC(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v7, v4);
  return UITableViewAutomaticDimension;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10027761C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_10042FC0C(viewCopy, annotationViewCopy);
}

- (void)mapView:(id)view didDeselectAnnotationView:(id)annotationView
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_100430ADC(annotationViewCopy);
}

- (void)mapView:(id)view didUpdateUserLocation:(id)location
{
  viewCopy = view;
  locationCopy = location;
  selfCopy = self;
  sub_100430C20(viewCopy);
}

- (void)mapView:(id)view regionWillChangeAnimated:(BOOL)animated
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (v4)
  {
    [v4 removeHandle:{0, animated}];
  }

  else
  {
    __break(1u);
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView);
  if (v5)
  {
    [v5 addHandleForAnnotation:{*(&self->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_selectedAnnotation), animated}];
  }

  else
  {
    __break(1u);
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_1004303C0(viewCopy, annotation);

  swift_unknownObjectRelease();

  return v8;
}

- (void)mapView:(id)view annotationView:(id)annotationView didChangeDragState:(unint64_t)state fromOldState:(unint64_t)oldState
{
  viewCopy = view;
  annotationViewCopy = annotationView;
  selfCopy = self;
  sub_100430DAC(annotationViewCopy, state);
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  viewCopy = view;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_10043091C(viewCopy);

  swift_unknownObjectRelease();

  return v7;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  searchBar = [controllerCopy searchBar];
  text = [searchBar text];

  if (text)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100464D0C(v7, v9);
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_100458380(editingCopy);

  return 1;
}

- (BOOL)searchBarShouldEndEditing:(id)editing
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

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_100458614(clickedCopy);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  selfCopy = self;
  sub_100458A38(clickedCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10045DBB8();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_10045DDE0(disappearCopy);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10045DF1C(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10046CF90(coordinator);
  swift_unknownObjectRelease();
}

- (void)willStartDraggingHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_100467F18(handle);
}

- (void)didStopDraggingHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  sub_10046801C(handle);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_10046D160();
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  selfCopy = self;
  navigationItem = [(FMFenceMapViewController *)selfCopy navigationItem];
  searchController = [navigationItem searchController];

  if (searchController)
  {
    searchBar = [searchController searchBar];

    [searchBar resignFirstResponder];
  }
}

- (void)chooseSmallRadiusActionWithSender:(id)sender
{
  selfCopy = self;
  sub_100467A98(0x4059000000000000, 0);
}

- (void)chooseMediumRadiusActionWithSender:(id)sender
{
  selfCopy = self;
  sub_100467A98(0x406F400000000000, 0);
}

- (void)chooseLargeRadiusActionWithSender:(id)sender
{
  selfCopy = self;
  sub_100467A98(0x4077700000000000, 0);
}

- (void)longPressActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100468460(senderCopy);
}

- (void)refreshActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10046D208();
}

- (void)doneActionWithSender:(id)sender
{
  selfCopy = self;
  sub_100466DE4();
}

- (void)cancelActionWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_isOtherUsage) == 1)
  {
    navigationController = [(FMFenceMapViewController *)selfCopy navigationController];
    if (navigationController)
    {
      v6 = navigationController;
      v7 = [(FMFenceMapViewController *)navigationController popViewControllerAnimated:1];

      selfCopy = v6;
    }
  }

  else
  {
    [(FMFenceMapViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }

  sub_100006060(&v8);
}

- (_TtC6FindMy24FMFenceMapViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end