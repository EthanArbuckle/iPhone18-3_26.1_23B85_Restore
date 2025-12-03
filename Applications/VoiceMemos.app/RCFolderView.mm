@interface RCFolderView
- (RCFolderViewDelegate)delegate;
- (UICollectionView)recordingsCollectionView;
- (_TtC10VoiceMemos12RCFolderView)initWithFrame:(CGRect)frame;
- (_TtC10VoiceMemos12RCFolderView)initWithRecordButtonFactory:(id)factory recordingsCollectionViewControllerWrapperView:(id)view recordingsCollectionView:(id)collectionView allowsNewRecordings:(BOOL)recordings;
- (void)layoutSubviews;
- (void)setRecordingsCollectionViewControllerWrapperView:(id)view;
- (void)setZoomTransitionSourceView:(id)view;
- (void)updateBottomLayoutForEditing:(BOOL)editing isSearching:(BOOL)searching delegate:(id)delegate;
@end

@implementation RCFolderView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10001EA94();
}

- (void)setRecordingsCollectionViewControllerWrapperView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView);
  *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView) = view;
  viewCopy = view;
}

- (UICollectionView)recordingsCollectionView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setZoomTransitionSourceView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView);
  *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView) = view;
  viewCopy = view;
}

- (RCFolderViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC10VoiceMemos12RCFolderView)initWithRecordButtonFactory:(id)factory recordingsCollectionViewControllerWrapperView:(id)view recordingsCollectionView:(id)collectionView allowsNewRecordings:(BOOL)recordings
{
  swift_unknownObjectRetain();
  viewCopy = view;
  collectionViewCopy = collectionView;
  return sub_1001905D4(factory, viewCopy, collectionView, recordings);
}

- (void)updateBottomLayoutForEditing:(BOOL)editing isSearching:(BOOL)searching delegate:(id)delegate
{
  searchingCopy = searching;
  editingCopy = editing;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1001908B0(editingCopy, searchingCopy, delegate);
  swift_unknownObjectRelease();
}

- (_TtC10VoiceMemos12RCFolderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end