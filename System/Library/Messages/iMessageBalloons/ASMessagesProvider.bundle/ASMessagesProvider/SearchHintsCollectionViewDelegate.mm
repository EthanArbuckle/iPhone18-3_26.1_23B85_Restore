@interface SearchHintsCollectionViewDelegate
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (_TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate)init;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation SearchHintsCollectionViewDelegate

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_93DEE0;
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_766CA0();
  sub_BE38(v12, qword_9A03D0);
  swift_unknownObjectRetain();
  sub_766470();
  sub_766700();
  v14 = v13;

  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = v14;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v18;
  return result;
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
  sub_5F3874(cellCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)scrollViewDidScroll:(id)scroll
{
  if (*(&self->super.isa + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator))
  {
    scrollCopy = scroll;
    selfCopy = self;

    [scrollCopy bounds];
    sub_75F4C0();
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_5F3C20();

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  selfCopy = self;
  sub_7575C0();
  sub_75ED40();
  (*(v6 + 8))(v8, v5);
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  layoutCopy = layout;
  selfCopy = self;
  v15 = sub_5F3FB8(viewCopy);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (_TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end