@interface CollectionsFilterCell
- (CollectionsFilterCell)initWithFrame:(CGRect)a3;
- (void)configureWithModel:(id)a3;
- (void)prepareForReuse;
- (void)setFilterLabel;
- (void)setUpCornerRadius;
- (void)setUpSelectedBorder;
- (void)setUpSelectedShadows;
- (void)setUpUnselectedBorder;
- (void)setUpUnselectedShadows;
- (void)setupConstraints;
- (void)setupSelectedBackgroundView;
- (void)setupSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateUI;
@end

@implementation CollectionsFilterCell

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = CollectionsFilterCell;
  v4 = a3;
  [(CollectionsFilterCell *)&v10 traitCollectionDidChange:v4];
  v5 = [(CollectionsFilterCell *)self traitCollection:v10.receiver];
  v6 = [v5 userInterfaceStyle];

  v7 = [v4 userInterfaceStyle];
  if (v6 != v7)
  {
    v8 = [(CollectionsFilterCell *)self viewModel];
    v9 = [(CollectionsFilterCell *)self viewModel];
    [v8 modelSelected:objc_msgSend(v9 isDarkMode:{"isSelected"), v6 == 2}];

    [(CollectionsFilterCell *)self updateUI];
  }
}

- (void)updateUI
{
  v3 = [(CollectionsFilterCell *)self viewModel];
  v4 = [v3 filterTitle];
  v5 = [(CollectionsFilterCell *)self filterLabel];
  [v5 setText:v4];

  v6 = [(CollectionsFilterCell *)self viewModel];
  v7 = [v6 textColor];
  v8 = [(CollectionsFilterCell *)self filterLabel];
  [v8 setTextColor:v7];

  v9 = [(CollectionsFilterCell *)self viewModel];
  v10 = [v9 filterFont];
  v11 = [(CollectionsFilterCell *)self filterLabel];
  [v11 setFont:v10];

  v12 = [(CollectionsFilterCell *)self viewModel];
  v13 = [v12 backgroundColor];
  v14 = [(CollectionsFilterCell *)self contentView];
  [v14 setBackgroundColor:v13];

  LODWORD(v12) = MapsFeature_IsEnabled_Maps269();
  v16 = [(CollectionsFilterCell *)self viewModel];
  v15 = [v16 isSelected];
  if (v12)
  {
    if (v15)
    {
      [(CollectionsFilterCell *)self setUpSelectedBorder];
    }

    else
    {
      [(CollectionsFilterCell *)self setUpUnselectedBorder];
    }
  }

  else if (v15)
  {
    [(CollectionsFilterCell *)self setUpSelectedShadows];
  }

  else
  {
    [(CollectionsFilterCell *)self setUpUnselectedShadows];
  }
}

- (void)setUpUnselectedBorder
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    +[UIColor systemGray3Color];
  }

  else
  {
    +[UIColor lightGrayColor];
  }
  v7 = ;
  v3 = v7;
  v4 = [v7 CGColor];
  v5 = [(CollectionsFilterCell *)self contentView];
  v6 = [v5 layer];
  [v6 setBorderColor:v4];
}

- (void)setUpSelectedBorder
{
  v7 = +[UIColor clearColor];
  v3 = v7;
  v4 = [v7 CGColor];
  v5 = [(CollectionsFilterCell *)self contentView];
  v6 = [v5 layer];
  [v6 setBorderColor:v4];
}

- (void)setUpCornerRadius
{
  IsEnabled_Maps269 = MapsFeature_IsEnabled_Maps269();
  v4 = [(CollectionsFilterCell *)self contentView];
  v5 = v4;
  if (IsEnabled_Maps269)
  {
    [v4 _setContinuousCornerRadius:16.0];

    v6 = [(CollectionsFilterCell *)self contentView];
    v7 = [v6 layer];
    [v7 setMasksToBounds:1];

    if (MapsFeature_IsEnabled_Maps269())
    {
      v8 = 0.5;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = [(CollectionsFilterCell *)self contentView];
    v10 = [v9 layer];
    [v10 setBorderWidth:v8];

    v14 = +[UIColor lightGrayColor];
    v11 = [v14 CGColor];
    v12 = [(CollectionsFilterCell *)self contentView];
    v13 = [v12 layer];
    [v13 setBorderColor:v11];
  }

  else
  {
    [v4 _setContinuousCornerRadius:8.0];

    v14 = [(CollectionsFilterCell *)self contentView];
    v12 = [v14 layer];
    [v12 setMasksToBounds:1];
  }
}

- (void)setUpUnselectedShadows
{
  v3 = [(CollectionsFilterCell *)self layer];
  [v3 setShadowOpacity:0.0];

  v4 = [(CollectionsFilterCell *)self layer];
  [v4 setShadowRadius:0.0];
}

- (void)setUpSelectedShadows
{
  v3 = [(CollectionsFilterCell *)self layer];
  [v3 setMasksToBounds:0];

  v4 = +[UIColor blackColor];
  v5 = [v4 CGColor];
  v6 = [(CollectionsFilterCell *)self layer];
  [v6 setShadowColor:v5];

  v7 = [(CollectionsFilterCell *)self layer];
  LODWORD(v8) = 1036831949;
  [v7 setShadowOpacity:v8];

  v9 = [(CollectionsFilterCell *)self layer];
  [v9 setShadowOffset:{0.0, 1.0}];

  v10 = [(CollectionsFilterCell *)self layer];
  [v10 setShadowRadius:4.0];
}

- (void)setupConstraints
{
  v45 = objc_alloc_init(NSMutableArray);
  if (MapsFeature_IsEnabled_Maps269())
  {
    v43 = [(CollectionsFilterCell *)self selectedBackgroundView];
    v39 = [v43 leadingAnchor];
    v41 = [(CollectionsFilterCell *)self contentView];
    v37 = [v41 leadingAnchor];
    v35 = [v39 constraintEqualToAnchor:v37];
    v47[0] = v35;
    v33 = [(CollectionsFilterCell *)self selectedBackgroundView];
    v29 = [v33 trailingAnchor];
    v31 = [(CollectionsFilterCell *)self contentView];
    v27 = [v31 trailingAnchor];
    v25 = [v29 constraintEqualToAnchor:v27];
    v47[1] = v25;
    v23 = [(CollectionsFilterCell *)self selectedBackgroundView];
    v20 = [v23 topAnchor];
    v21 = [(CollectionsFilterCell *)self contentView];
    v3 = [v21 topAnchor];
    v4 = [v20 constraintEqualToAnchor:v3];
    v47[2] = v4;
    v5 = [(CollectionsFilterCell *)self selectedBackgroundView];
    v6 = [v5 bottomAnchor];
    v7 = [(CollectionsFilterCell *)self contentView];
    v8 = [v7 bottomAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v47[3] = v9;
    v10 = [NSArray arrayWithObjects:v47 count:4];
    [v45 addObjectsFromArray:v10];
  }

  v44 = [(CollectionsFilterCell *)self filterLabel];
  v40 = [v44 leadingAnchor];
  v42 = [(CollectionsFilterCell *)self contentView];
  v38 = [v42 leadingAnchor];
  v36 = [v40 constraintEqualToAnchor:v38];
  v46[0] = v36;
  v34 = [(CollectionsFilterCell *)self filterLabel];
  v30 = [v34 trailingAnchor];
  v32 = [(CollectionsFilterCell *)self contentView];
  v28 = [v32 trailingAnchor];
  v26 = [v30 constraintEqualToAnchor:v28];
  v46[1] = v26;
  v24 = [(CollectionsFilterCell *)self filterLabel];
  v22 = [v24 topAnchor];
  v11 = [(CollectionsFilterCell *)self contentView];
  v12 = [v11 topAnchor];
  v13 = [v22 constraintEqualToAnchor:v12];
  v46[2] = v13;
  v14 = [(CollectionsFilterCell *)self filterLabel];
  v15 = [v14 bottomAnchor];
  v16 = [(CollectionsFilterCell *)self contentView];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v46[3] = v18;
  v19 = [NSArray arrayWithObjects:v46 count:4];
  [v45 addObjectsFromArray:v19];

  [NSLayoutConstraint activateConstraints:v45];
}

- (void)setFilterLabel
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CollectionsFilterCell *)self setFilterLabel:v3];

  v4 = [(CollectionsFilterCell *)self filterLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CollectionsFilterCell *)self filterLabel];
  [v5 setTextAlignment:1];

  v6 = +[UIColor clearColor];
  v7 = [(CollectionsFilterCell *)self filterLabel];
  [v7 setBackgroundColor:v6];

  v8 = [(CollectionsFilterCell *)self filterLabel];
  [v8 setNumberOfLines:1];

  v9 = [(CollectionsFilterCell *)self filterLabel];
  [v9 setAccessibilityIdentifier:@"CollectionsFilterCellLabel"];

  v11 = [(CollectionsFilterCell *)self contentView];
  v10 = [(CollectionsFilterCell *)self filterLabel];
  [v11 addSubview:v10];
}

- (void)setupSelectedBackgroundView
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 _setContinuousCornerRadius:16.0];
  [v3 setAccessibilityIdentifier:@"CollectionsFilterCellBackground"];
  [(CollectionsFilterCell *)self setSelectedBackgroundView:v3];
}

- (void)setupSubviews
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    [(CollectionsFilterCell *)self setupSelectedBackgroundView];
  }

  [(CollectionsFilterCell *)self setFilterLabel];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CollectionsFilterCell;
  [(CollectionsFilterCell *)&v7 prepareForReuse];
  [(CollectionsFilterCell *)self setViewModel:0];
  v3 = [(CollectionsFilterCell *)self filterLabel];
  [v3 setText:0];

  v4 = [(CollectionsFilterCell *)self filterLabel];
  [v4 setTextColor:0];

  v5 = [(CollectionsFilterCell *)self contentView];
  [v5 setBackgroundColor:0];

  v6 = [(CollectionsFilterCell *)self selectedBackgroundView];
  [v6 setBackgroundColor:0];
}

- (void)configureWithModel:(id)a3
{
  [(CollectionsFilterCell *)self setViewModel:a3];
  [(CollectionsFilterCell *)self updateUI];
  v4 = [(CollectionsFilterCell *)self selectedBackgroundView];
  [v4 setAlpha:0.0];

  v6 = +[UIColor quaternarySystemFillColor];
  v5 = [(CollectionsFilterCell *)self selectedBackgroundView];
  [v5 setBackgroundColor:v6];
}

- (CollectionsFilterCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CollectionsFilterCell;
  v3 = [(CollectionsFilterCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(CollectionsFilterCell *)v3 setAccessibilityIdentifier:v5];

    [(CollectionsFilterCell *)v3 setupSubviews];
    [(CollectionsFilterCell *)v3 setupConstraints];
    [(CollectionsFilterCell *)v3 setUpCornerRadius];
  }

  return v3;
}

@end