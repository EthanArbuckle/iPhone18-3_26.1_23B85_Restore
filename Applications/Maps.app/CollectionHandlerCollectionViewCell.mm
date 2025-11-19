@interface CollectionHandlerCollectionViewCell
- (CollectionHandlerCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation CollectionHandlerCollectionViewCell

- (CollectionHandlerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CollectionHandlerCollectionViewCell;
  v3 = [(CollectionHandlerCollectionViewCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[CollectionView alloc] initWithCollectionViewSize:0];
    collectionView = v3->_collectionView;
    v3->_collectionView = v4;

    v6 = [(CollectionHandlerCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_collectionView];

    v7 = [MUEdgeLayout alloc];
    v8 = v3->_collectionView;
    v9 = [(CollectionHandlerCollectionViewCell *)v3 contentView];
    v10 = [v7 initWithItem:v8 container:v9];

    [v10 activate];
  }

  return v3;
}

@end