@interface NUITableViewContainerCell
+ (Class)containerViewClass;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NUITableViewContainerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation NUITableViewContainerCell

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

- (NUITableViewContainerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = NUITableViewContainerCell;
  v4 = [(NUITableViewContainerCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc([objc_opt_class() containerViewClass]);
    contentView = [(NUITableViewContainerCell *)v4 contentView];
    [contentView bounds];
    v7 = [v5 initWithFrame:?];
    containerView = v4->_containerView;
    v4->_containerView = v7;

    [(NUIContainerView *)v4->_containerView setPreservesSuperviewLayoutMargins:1];
    [(NUIContainerView *)v4->_containerView setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerView *)v4->_containerView setAutoresizingMask:18];
    contentView2 = [(NUITableViewContainerCell *)v4 contentView];
    [contentView2 addSubview:v4->_containerView];

    [(UIView *)v4->_containerView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    v10 = v4->_containerView;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__NUITableViewContainerCell_initWithStyle_reuseIdentifier___block_invoke;
    v12[3] = &unk_278329468;
    v13 = v4;
    [(NUIContainerView *)v10 performBatchUpdates:v12];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  if (priority <= 50.0)
  {
    size.width = 0.0;
  }

  if (fittingPriority <= 50.0)
  {
    size.height = 0.0;
  }

  v7.receiver = self;
  v7.super_class = NUITableViewContainerCell;
  [(NUITableViewContainerCell *)&v7 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(NUITableViewContainerCell *)self contentView];
  [contentView bounds];
  v8 = v7;

  if (width >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = width;
  }

  containerView = self->_containerView;

  [(NUIContainerView *)containerView effectiveLayoutSizeFittingSize:v9, height];
  result.height = v12;
  result.width = v11;
  return result;
}

@end