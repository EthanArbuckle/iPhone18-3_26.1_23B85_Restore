@interface PPKPDFThumbnailsCollectionView
- (PPKPDFThumbnailsCollectionView)initWithCoder:(id)a3;
- (PPKPDFThumbnailsCollectionView)initWithFrame:(CGRect)a3;
- (id)initFromThumbnailView:(id)a3;
- (void)reloadPage:(id)a3;
- (void)updateImageForCell:(id)a3 indexPath:(id)a4 page:(id)a5;
@end

@implementation PPKPDFThumbnailsCollectionView

- (void)updateImageForCell:(id)a3 indexPath:(id)a4 page:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a5;
  v14 = self;
  specialized PPKPDFThumbnailsCollectionView.getImage(forCell:indexPath:page:completion:)(a3, v11, v13, v14);

  (*(v9 + 8))(v11, v8);
}

- (void)reloadPage:(id)a3
{
  v4 = a3;
  v5 = self;
  PPKPDFThumbnailsCollectionView.reload(_:)(v4);
}

- (id)initFromThumbnailView:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PPKPDFThumbnailsCollectionView();
  return [(PPKPDFThumbnailsCollectionViewBase *)&v5 initFromThumbnailView:a3];
}

- (PPKPDFThumbnailsCollectionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PPKPDFThumbnailsCollectionView();
  return [(PPKPDFThumbnailsCollectionView *)&v8 initWithFrame:x, y, width, height];
}

- (PPKPDFThumbnailsCollectionView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PPKPDFThumbnailsCollectionView();
  v4 = a3;
  v5 = [(PPKPDFThumbnailsCollectionView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end