@interface CycleTimelineCollectionViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout)collectionViewLayout;
- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)adaptToContentSizeChanges;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)didMoveToParentViewController:(id)a3;
- (void)didReceiveSignificantTimeChangeNotification;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CycleTimelineCollectionViewController

- (_TtC24MenstrualCyclesAppPlugin33CycleTimelineCollectionViewLayout)collectionViewLayout
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = [(CycleTimelineCollectionViewController *)&v5 collectionViewLayout];
  type metadata accessor for CycleTimelineCollectionViewLayout();
  v3 = swift_dynamicCastClassUnconditional();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29DF823FC();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_29DF82884(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(CycleTimelineCollectionViewController *)&v9 viewWillDisappear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 interactivePopGestureRecognizer];

    if (v7)
    {
      v8 = *&v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController_navControllerDelegateCache];
      swift_unknownObjectRetain();
      [v7 setDelegate_];
      swift_unknownObjectRelease();
    }
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_29DF82AF8(a3);
}

- (void)adaptToContentSizeChanges
{
  v2 = self;
  sub_29DF82D4C();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_29DF83210();
}

- (void)didReceiveSignificantTimeChangeNotification
{
  v2 = self;
  sub_29DF83C60();
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  v12 = sub_29DF84818(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  sub_29DEC65FC();
  sub_29E2C31A4();
  sub_29DF89378(&unk_2A18199E0, MEMORY[0x29EDBA2F8]);
  v5 = self;
  sub_29E2C4344();

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29DF89614(v9);

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_29DF89DC0(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_29DF8A388();

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DF8820C(v4);
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DF8A5BC();
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DF8A780();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_29DF8A840(a4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29DF8AA08();
}

- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC24MenstrualCyclesAppPlugin37CycleTimelineCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_29DF8910C(v4);

  return self & 1;
}

@end