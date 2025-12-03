@interface FamilyPurchasesViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (unint64_t)supportedInterfaceOrientations;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FamilyPurchasesViewController

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(FamilyPurchasesViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FamilyPurchasesViewController();
  v4 = v7.receiver;
  [(StoreCollectionViewController *)&v7 viewWillAppear:appearCopy];
  collectionView = [v4 collectionView];
  if (collectionView)
  {
    v6 = collectionView;
    [collectionView selectItemAtIndexPath:0 animated:1 scrollPosition:0];
  }
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2CFF0();
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = sub_760B90();

  return v5;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  selfCopy = self;
  v4 = sub_760BB0();

  return v4;
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
  v12 = sub_2D2D8(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  v16 = sub_2EC30(viewCopy, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  selfCopy = self;
  sub_760BA0();
  (*(v6 + 8))(v8, v5);
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
  sub_2ED6C(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_769240();
  v15 = v14;
  sub_757590();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_2F41C(supplementaryViewCopy, v13, v15);

  (*(v10 + 8))(v12, v9);
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
  sub_2F7D4(viewCopy);
  v16 = v15;
  v18 = v17;

  (*(v9 + 8))(v11, v8);
  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = sub_75FAD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_760B60();
  if ((*(v7 + 88))(v9, v6) == enum case for FamilyPurchasesSection.loggedInUser(_:))
  {

    left = 0.0;
    bottom = 27.5;
    top = 35.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;

    (*(v7 + 8))(v9, v6);
  }

  v15 = top;
  v16 = left;
  v17 = bottom;
  v18 = right;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  sub_30120();
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end