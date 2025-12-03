@interface CollectionHandlerCollectionViewCell
- (CollectionHandlerCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation CollectionHandlerCollectionViewCell

- (CollectionHandlerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CollectionHandlerCollectionViewCell;
  v3 = [(CollectionHandlerCollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[CollectionView alloc] initWithCollectionViewSize:0];
    collectionView = v3->_collectionView;
    v3->_collectionView = v4;

    contentView = [(CollectionHandlerCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_collectionView];

    v7 = [MUEdgeLayout alloc];
    v8 = v3->_collectionView;
    contentView2 = [(CollectionHandlerCollectionViewCell *)v3 contentView];
    v10 = [v7 initWithItem:v8 container:contentView2];

    [v10 activate];
  }

  return v3;
}

@end