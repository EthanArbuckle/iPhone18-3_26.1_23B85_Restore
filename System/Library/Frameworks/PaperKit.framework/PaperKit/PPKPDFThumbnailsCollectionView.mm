@interface PPKPDFThumbnailsCollectionView
- (PPKPDFThumbnailsCollectionView)initWithCoder:(id)coder;
- (PPKPDFThumbnailsCollectionView)initWithFrame:(CGRect)frame;
- (id)initFromThumbnailView:(id)view;
- (void)reloadPage:(id)page;
- (void)updateImageForCell:(id)cell indexPath:(id)path page:(id)page;
@end

@implementation PPKPDFThumbnailsCollectionView

- (void)updateImageForCell:(id)cell indexPath:(id)path page:(id)page
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  cellCopy = cell;
  pageCopy = page;
  selfCopy = self;
  specialized PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(cell, v11, pageCopy, selfCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)reloadPage:(id)page
{
  pageCopy = page;
  selfCopy = self;
  PPKPDFThumbnailsCollectionView.reload(_:)(pageCopy);
}

- (id)initFromThumbnailView:(id)view
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PPKPDFThumbnailsCollectionView();
  return [(PPKPDFThumbnailsCollectionViewBase *)&v5 initFromThumbnailView:view];
}

- (PPKPDFThumbnailsCollectionView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PPKPDFThumbnailsCollectionView();
  return [(PPKPDFThumbnailsCollectionView *)&v8 initWithFrame:x, y, width, height];
}

- (PPKPDFThumbnailsCollectionView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PPKPDFThumbnailsCollectionView();
  coderCopy = coder;
  v5 = [(PPKPDFThumbnailsCollectionView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end