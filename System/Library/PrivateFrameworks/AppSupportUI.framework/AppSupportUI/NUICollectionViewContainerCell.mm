@interface NUICollectionViewContainerCell
+ (Class)containerViewClass;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (NUICollectionViewContainerCell)initWithFrame:(CGRect)a3;
@end

@implementation NUICollectionViewContainerCell

+ (Class)containerViewClass
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"-[%@ %@] not implemented.", v6, v7}];

  return 0;
}

- (NUICollectionViewContainerCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = NUICollectionViewContainerCell;
  v3 = [(NUICollectionViewContainerCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(NUICollectionViewContainerCell *)v3 contentView];
    containerView = v4->_containerView;
    v4->_containerView = v5;

    [(UIView *)v4->_containerView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    [(NUIContainerView *)v4->_containerView setLayoutMarginsRelativeArrangement:1];
    v7 = v4->_containerView;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__NUICollectionViewContainerCell_initWithFrame___block_invoke;
    v9[3] = &unk_278329468;
    v10 = v4;
    [(NUIContainerView *)v7 performBatchUpdates:v9];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  if (a4 > 50.0)
  {
    width = a3.width;
  }

  else
  {
    width = 0.0;
  }

  if (a5 > 50.0)
  {
    height = a3.height;
  }

  else
  {
    height = 0.0;
  }

  v9 = [(NUICollectionViewContainerCell *)self containerView:a3.width];
  *&v10 = a4;
  *&v11 = a5;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NUICollectionViewContainerCell *)self containerView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end