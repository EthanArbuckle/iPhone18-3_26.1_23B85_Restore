@interface RCFolderView
- (RCFolderViewDelegate)delegate;
- (UICollectionView)recordingsCollectionView;
- (_TtC10VoiceMemos12RCFolderView)initWithFrame:(CGRect)a3;
- (_TtC10VoiceMemos12RCFolderView)initWithRecordButtonFactory:(id)a3 recordingsCollectionViewControllerWrapperView:(id)a4 recordingsCollectionView:(id)a5 allowsNewRecordings:(BOOL)a6;
- (void)layoutSubviews;
- (void)setRecordingsCollectionViewControllerWrapperView:(id)a3;
- (void)setZoomTransitionSourceView:(id)a3;
- (void)updateBottomLayoutForEditing:(BOOL)a3 isSearching:(BOOL)a4 delegate:(id)a5;
@end

@implementation RCFolderView

- (void)layoutSubviews
{
  v2 = self;
  sub_10001EA94();
}

- (void)setRecordingsCollectionViewControllerWrapperView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView);
  *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_recordingsCollectionViewControllerWrapperView) = a3;
  v3 = a3;
}

- (UICollectionView)recordingsCollectionView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setZoomTransitionSourceView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView);
  *(self + OBJC_IVAR____TtC10VoiceMemos12RCFolderView_zoomTransitionSourceView) = a3;
  v3 = a3;
}

- (RCFolderViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC10VoiceMemos12RCFolderView)initWithRecordButtonFactory:(id)a3 recordingsCollectionViewControllerWrapperView:(id)a4 recordingsCollectionView:(id)a5 allowsNewRecordings:(BOOL)a6
{
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a5;
  return sub_1001905D4(a3, v10, a5, a6);
}

- (void)updateBottomLayoutForEditing:(BOOL)a3 isSearching:(BOOL)a4 delegate:(id)a5
{
  v6 = a4;
  v7 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1001908B0(v7, v6, a5);
  swift_unknownObjectRelease();
}

- (_TtC10VoiceMemos12RCFolderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end