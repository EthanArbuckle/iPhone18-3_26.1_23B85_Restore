@interface SearchResultsCollectionViewDelegate
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC20ProductPageExtension35SearchResultsCollectionViewDelegate)init;
- (id)_collectionView:(id)view layout:(id)layout flowLayoutRowAlignmentOptionsForSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
@end

@implementation SearchResultsCollectionViewDelegate

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  selfCopy = self;
  sub_100766C3C();
  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FF9C();
  v15 = v14;
  sub_10075E06C();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_1004E3254(supplementaryViewCopy, v13, v15);

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  type metadata accessor for SearchTransparencyView();
  selfCopy = self;
  if (v11 == sub_1007708EC() && v13 == v15)
  {
  }

  else
  {
    v16 = sub_10077167C();

    if ((v16 & 1) == 0)
    {
LABEL_7:

      goto LABEL_8;
    }
  }

  v17 = sub_100766C4C();
  if (!v17)
  {
    goto LABEL_7;
  }

  sub_1004DE04C(v17, selfCopy);

LABEL_8:
  (*(v8 + 8))(v10, v7);
}

- (_TtC20ProductPageExtension35SearchResultsCollectionViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v10 = sub_10071D6B8(viewCopy);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v15 = sub_10071D968(layoutCopy, v11);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (id)_collectionView:(id)view layout:(id)layout flowLayoutRowAlignmentOptionsForSection:(int64_t)section
{
  if (sub_10071DAD8())
  {
    v5.super.isa = sub_10076FE3C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

@end