@interface SearchResultsCollectionViewDelegate
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate)init;
- (id)_collectionView:(id)view layout:(id)layout flowLayoutRowAlignmentOptionsForSection:(int64_t)section;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
@end

@implementation SearchResultsCollectionViewDelegate

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v10 = sub_1000DBF28(viewCopy);
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
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v15 = sub_1000DCD94(layoutCopy, v11);
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
  if (sub_1000DCF04())
  {
    v5.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  selfCopy = self;
  sub_10074A064();
  (*(v6 + 8))(v8, v5);
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100753094();
  v15 = v14;
  sub_100741744();
  viewCopy = view;
  supplementaryViewCopy = supplementaryView;
  selfCopy = self;
  sub_100408AA0(supplementaryViewCopy, v13, v15);

  (*(v10 + 8))(v12, v9);
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  type metadata accessor for SearchTransparencyView();
  selfCopy = self;
  if (v11 == sub_1007539C4() && v13 == v15)
  {
  }

  else
  {
    v16 = sub_100754754();

    if ((v16 & 1) == 0)
    {
LABEL_7:

      goto LABEL_8;
    }
  }

  v17 = sub_10074A074();
  if (!v17)
  {
    goto LABEL_7;
  }

  sub_10040388C(v17, selfCopy);

LABEL_8:
  (*(v8 + 8))(v10, v7);
}

- (_TtC22SubscribePageExtension35SearchResultsCollectionViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end