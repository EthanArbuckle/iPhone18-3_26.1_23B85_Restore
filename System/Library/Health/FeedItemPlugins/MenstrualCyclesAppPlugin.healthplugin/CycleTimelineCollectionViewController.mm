@interface CycleTimelineCollectionViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout)collectionViewLayout;
- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)adaptToContentSizeChanges;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)didMoveToParentViewController:(id)controller;
- (void)didReceiveSignificantTimeChangeNotification;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CycleTimelineCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout)collectionViewLayout
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  collectionViewLayout = [(CycleTimelineCollectionViewController *)&v5 collectionViewLayout];
  type metadata accessor for CycleTimelineCollectionViewLayout();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29DF823FC();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_29DF82884(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(CycleTimelineCollectionViewController *)&v9 viewWillDisappear:disappearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];

    if (interactivePopGestureRecognizer)
    {
      v8 = *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_navControllerDelegateCache];
      swift_unknownObjectRetain();
      [interactivePopGestureRecognizer setDelegate_];
      swift_unknownObjectRelease();
    }
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_29DF82AF8(controller);
}

- (void)adaptToContentSizeChanges
{
  selfCopy = self;
  sub_29DF82D4C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_29DF83210();
}

- (void)didReceiveSignificantTimeChangeNotification
{
  selfCopy = self;
  sub_29DF83C60();
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_29DF84818(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  sub_29DEC65FC();
  sub_29E2C31A4();
  sub_29DF89378(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
  selfCopy = self;
  sub_29E2C4344();

  return v7;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29DF89614(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_29DF89DC0(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_29DF8A388();

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_29DF8820C(scrollCopy);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  sub_29DF8A5BC();
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_29DF8A780();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  selfCopy = self;
  sub_29DF8A840(decelerate);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_29DF8AA08();
}

- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_29DF8910C(beginCopy);

  return self & 1;
}

@end