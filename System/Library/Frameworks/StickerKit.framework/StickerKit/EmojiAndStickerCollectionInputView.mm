@interface EmojiAndStickerCollectionInputView
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (_TtC10StickerKit34EmojiAndStickerCollectionInputView)initWithFrame:(CGRect)frame;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dataSourceDidUpdate;
- (void)handleLongPressWithGestureRecognizer:(id)recognizer;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)permissionsDidChange;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)updateToCategory:(int64_t)category;
- (void)updateToIndexPath:(id)path;
@end

@implementation EmojiAndStickerCollectionInputView

- (void)dataSourceDidUpdate
{
  selfCopy = self;
  sub_19A67468C();
}

- (void)permissionsDidChange
{
  selfCopy = self;
  sub_19A674F00();
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(EmojiAndStickerCollectionInputView *)&v4 layoutSubviews];
  v3 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialLayout;
  if ((*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialLayout) & 1) == 0)
  {
    [v2 frame];
    if (!CGRectIsEmpty(v5))
    {
      *(v2 + v3) = 1;
      sub_19A674998(0);
    }
  }
}

- (void)updateToCategory:(int64_t)category
{
  selfCopy = self;
  sub_19A6779D8(category);
}

- (void)updateToIndexPath:(id)path
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  selfCopy = self;
  sub_19A67827C(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_19A678E34(event, x, y);

  return v10;
}

- (_TtC10StickerKit34EmojiAndStickerCollectionInputView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_19A6807C8();
}

- (void)handleLongPressWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_19A67BC54(recognizerCopy);
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_19A6802FC(cellCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  v6 = sub_19A7A9094();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  type metadata accessor for StickerCollectionViewCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView);
    cellCopy = cell;
    v13 = v11;
    sub_19A6C4E6C();
  }

  (*(v7 + 8))(v9, v6);
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v28 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - v18;
  sub_19A7A9024();
  sub_19A7A9024();
  sub_19A7A9024();
  selfCopy = self;
  v21 = sub_19A7A9064();
  if (sub_19A670300(v21))
  {

    v22 = *(v8 + 8);
    v22(v14, v7);
    v22(v17, v7);
    (*(v8 + 32))(v19, v11, v7);
  }

  else
  {
    v23 = sub_19A7A9064();
    v24 = sub_19A670300(v23);

    v22 = *(v8 + 8);
    v22(v11, v7);
    v25 = (v8 + 32);
    if (v24)
    {
      v22(v17, v7);
      (*v25)(v19, v14, v7);
    }

    else
    {
      v22(v14, v7);
      (*v25)(v19, v17, v7);
    }
  }

  v26 = sub_19A7A9014();
  v22(v19, v7);

  return v26;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A9024();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_19A67C9A4(scrollCopy);
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isDraggingInputView) = 1;
  selfCopy = self;
  sub_19A677EBC();
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_19A6808C4();
}

@end