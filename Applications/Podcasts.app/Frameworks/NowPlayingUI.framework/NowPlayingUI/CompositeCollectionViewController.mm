@interface CompositeCollectionViewController
- (_TtC12NowPlayingUI33CompositeCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CompositeCollectionViewController

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  sub_A9C8(editing, animated);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_AB60();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_D53C();
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_DB18(collectionCopy, coordinator);

  swift_unknownObjectRelease();
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_10528();

  return v6;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_DFB4(viewCopy, section);

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  v6 = sub_140C2C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_105F4(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1448DC();
  v13 = v12;
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_10C68(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)collectionView:(id)view moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  sub_140BAC();
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  sub_11888(v13, v11);

  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
}

- (id)collectionView:(id)view targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  v7 = sub_140C2C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - v13;
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_140BAC();
  sub_140BAC();
  viewCopy = view;
  selfCopy = self;
  sub_EBAC(viewCopy, v14, v11, v16);

  v19 = *(v8 + 8);
  v19(v11, v7);
  v19(v14, v7);
  v20.super.isa = sub_140B9C().super.isa;
  v19(v16, v7);

  return v20.super.isa;
}

- (void)scrollViewDidScroll:(id)scroll
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"scrollViewDidScroll:"])
    {
      [v5 scrollViewDidScroll:scroll];
    }

    swift_unknownObjectRelease();
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector:"scrollViewWillEndDragging:withVelocity:targetContentOffset:"])
    {
      [v10 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:{x, y}];
    }

    swift_unknownObjectRelease();
  }
}

- (_TtC12NowPlayingUI33CompositeCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1448DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_FF90(v5, v7, bundle);
}

@end