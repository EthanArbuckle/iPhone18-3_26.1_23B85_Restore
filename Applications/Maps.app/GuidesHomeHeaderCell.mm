@interface GuidesHomeHeaderCell
- (GuidesHomeHeaderCell)initWithFrame:(CGRect)frame;
- (void)configureWithGuidesHomeHeaderViewModel:(id)model delegate:(id)delegate;
- (void)didChangeContentYOffset:(double)offset;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation GuidesHomeHeaderCell

- (void)setupConstraints
{
  heroHeaderView = [(GuidesHomeHeaderCell *)self heroHeaderView];
  leadingAnchor = [heroHeaderView leadingAnchor];
  contentView = [(GuidesHomeHeaderCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v19;
  heroHeaderView2 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  trailingAnchor = [heroHeaderView2 trailingAnchor];
  contentView2 = [(GuidesHomeHeaderCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v14;
  heroHeaderView3 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  topAnchor = [heroHeaderView3 topAnchor];
  contentView3 = [(GuidesHomeHeaderCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v6;
  heroHeaderView4 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  bottomAnchor = [heroHeaderView4 bottomAnchor];
  contentView4 = [(GuidesHomeHeaderCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = [[GuideHomeHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GuidesHomeHeaderCell *)self setHeroHeaderView:v3];

  heroHeaderView = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [heroHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(GuidesHomeHeaderCell *)self contentView];
  heroHeaderView2 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [contentView addSubview:heroHeaderView2];
}

- (void)didChangeContentYOffset:(double)offset
{
  heroHeaderView = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [heroHeaderView didChangeContentYOffset:offset];
}

- (void)configureWithGuidesHomeHeaderViewModel:(id)model delegate:(id)delegate
{
  delegateCopy = delegate;
  modelCopy = model;
  [(GuidesHomeHeaderCell *)self setupConstraints];
  heroHeaderView = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [(GuidesHomeHeaderCell *)self frame];
  [heroHeaderView configureWithGuidesHomeHeaderViewModel:modelCopy maxWidth:delegateCopy delegate:v8];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = GuidesHomeHeaderCell;
  [(GuidesHomeHeaderCell *)&v2 prepareForReuse];
}

- (GuidesHomeHeaderCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = GuidesHomeHeaderCell;
  v3 = [(GuidesHomeHeaderCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(GuidesHomeHeaderCell *)v3 setAccessibilityIdentifier:v5];

    [(GuidesHomeHeaderCell *)v3 setupSubviews];
  }

  return v3;
}

@end