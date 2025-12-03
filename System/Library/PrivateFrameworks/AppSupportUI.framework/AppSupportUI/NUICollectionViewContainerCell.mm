@interface NUICollectionViewContainerCell
+ (Class)containerViewClass;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NUICollectionViewContainerCell)initWithFrame:(CGRect)frame;
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

- (NUICollectionViewContainerCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = NUICollectionViewContainerCell;
  v3 = [(NUICollectionViewContainerCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(NUICollectionViewContainerCell *)v3 contentView];
    containerView = v4->_containerView;
    v4->_containerView = contentView;

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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  if (priority > 50.0)
  {
    width = size.width;
  }

  else
  {
    width = 0.0;
  }

  if (fittingPriority > 50.0)
  {
    height = size.height;
  }

  else
  {
    height = 0.0;
  }

  v9 = [(NUICollectionViewContainerCell *)self containerView:size.width];
  *&v10 = priority;
  *&v11 = fittingPriority;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v10, v11}];
  v13 = v12;
  v15 = v14;

  v16 = v13;
  v17 = v15;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  containerView = [(NUICollectionViewContainerCell *)self containerView];
  [containerView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end