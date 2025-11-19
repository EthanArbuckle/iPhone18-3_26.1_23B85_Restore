@interface GuidesHomeHeaderCell
- (GuidesHomeHeaderCell)initWithFrame:(CGRect)a3;
- (void)configureWithGuidesHomeHeaderViewModel:(id)a3 delegate:(id)a4;
- (void)didChangeContentYOffset:(double)a3;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)setupSubviews;
@end

@implementation GuidesHomeHeaderCell

- (void)setupConstraints
{
  v23 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  v21 = [v23 leadingAnchor];
  v22 = [(GuidesHomeHeaderCell *)self contentView];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v24[0] = v19;
  v18 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  v16 = [v18 trailingAnchor];
  v17 = [(GuidesHomeHeaderCell *)self contentView];
  v15 = [v17 trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v24[1] = v14;
  v13 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  v3 = [v13 topAnchor];
  v4 = [(GuidesHomeHeaderCell *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v24[2] = v6;
  v7 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  v8 = [v7 bottomAnchor];
  v9 = [(GuidesHomeHeaderCell *)self contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v24[3] = v11;
  v12 = [NSArray arrayWithObjects:v24 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setupSubviews
{
  v3 = [[GuideHomeHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(GuidesHomeHeaderCell *)self setHeroHeaderView:v3];

  v4 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(GuidesHomeHeaderCell *)self contentView];
  v5 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [v6 addSubview:v5];
}

- (void)didChangeContentYOffset:(double)a3
{
  v4 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [v4 didChangeContentYOffset:a3];
}

- (void)configureWithGuidesHomeHeaderViewModel:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(GuidesHomeHeaderCell *)self setupConstraints];
  v9 = [(GuidesHomeHeaderCell *)self heroHeaderView];
  [(GuidesHomeHeaderCell *)self frame];
  [v9 configureWithGuidesHomeHeaderViewModel:v7 maxWidth:v6 delegate:v8];
}

- (void)prepareForReuse
{
  v2.receiver = self;
  v2.super_class = GuidesHomeHeaderCell;
  [(GuidesHomeHeaderCell *)&v2 prepareForReuse];
}

- (GuidesHomeHeaderCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = GuidesHomeHeaderCell;
  v3 = [(GuidesHomeHeaderCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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