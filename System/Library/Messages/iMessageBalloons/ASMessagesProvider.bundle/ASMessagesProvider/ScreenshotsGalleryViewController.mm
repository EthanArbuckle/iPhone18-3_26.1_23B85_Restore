@interface ScreenshotsGalleryViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)swipeStateChangedOn:(id)on;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ScreenshotsGalleryViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_60D688(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_60D8A4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_60DDD4(change);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_60DF08(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)swipeStateChangedOn:(id)on
{
  onCopy = on;
  selfCopy = self;
  if ([onCopy state] == &dword_0 + 3)
  {
    [(ScreenshotsGalleryViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks);
  if (v4 >> 62)
  {
    return sub_76A860();
  }

  else
  {
    return *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_60E384(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_60F2E4();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_7575C0();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex;
  if (v12 == *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex))
  {

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    isa = sub_757550().super.isa;
    [viewCopy scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];

    v15 = sub_7575C0();
    (*(v7 + 8))(v9, v6);
    *(&selfCopy->super.super.super.super.super.isa + v13) = v15;
  }
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_60F8A0(viewCopy, layoutCopy);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_60FF8C(viewCopy);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_60EAC0(deceleratingCopy);
}

@end