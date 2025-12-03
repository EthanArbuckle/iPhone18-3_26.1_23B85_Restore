@interface LockupCollectionSearchResultContentView
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
@end

@implementation LockupCollectionSearchResultContentView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_20C3AC();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  viewCopy = view;
  selfCopy = self;
  sub_2106D0();

  (*(v7 + 8))(v9, v6);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = (self + OBJC_IVAR____TtC18ASMessagesProvider39LockupCollectionSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v11 = *v10;
  if (*v10)
  {
    selfCopy = self;
    v13 = sub_F714(v11);
    v11(v13);
    sub_F704(v11);
  }

  (*(v7 + 8))(v9, v6);
}

@end