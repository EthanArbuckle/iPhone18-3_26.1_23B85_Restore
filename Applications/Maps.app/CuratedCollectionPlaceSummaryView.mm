@interface CuratedCollectionPlaceSummaryView
- (CuratedCollectionPlaceSummaryView)initWithFrame:(CGRect)a3;
- (void)_createSubviews;
- (void)_setupConstraints;
- (void)configureWithModel:(id)a3;
@end

@implementation CuratedCollectionPlaceSummaryView

- (void)_setupConstraints
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = 2.0;
  }

  else
  {
    v3 = 1.0;
  }

  v46 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  v45 = [v46 topAnchor];
  v44 = [(CuratedCollectionPlaceSummaryView *)self topAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v47[0] = v43;
  v42 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  v41 = [v42 leadingAnchor];
  v40 = [(CuratedCollectionPlaceSummaryView *)self leadingAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v47[1] = v39;
  v38 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  v37 = [v38 trailingAnchor];
  v36 = [(CuratedCollectionPlaceSummaryView *)self trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v47[2] = v35;
  v34 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  v32 = [v34 topAnchor];
  v33 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  v31 = [v33 bottomAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:v3];
  v47[3] = v30;
  v29 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  v28 = [v29 leadingAnchor];
  v27 = [(CuratedCollectionPlaceSummaryView *)self leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v47[4] = v26;
  v25 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  v24 = [v25 trailingAnchor];
  v23 = [(CuratedCollectionPlaceSummaryView *)self trailingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v47[5] = v22;
  v21 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  v19 = [v21 topAnchor];
  v20 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  v18 = [v20 bottomAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:2.0];
  v47[6] = v17;
  v16 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  v15 = [v16 leadingAnchor];
  v14 = [(CuratedCollectionPlaceSummaryView *)self leadingAnchor];
  v4 = [v15 constraintEqualToAnchor:v14];
  v47[7] = v4;
  v5 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  v6 = [v5 trailingAnchor];
  v7 = [(CuratedCollectionPlaceSummaryView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v47[8] = v8;
  v9 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  v10 = [v9 bottomAnchor];
  v11 = [(CuratedCollectionPlaceSummaryView *)self bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v47[9] = v12;
  v13 = [NSArray arrayWithObjects:v47 count:10];
  [NSLayoutConstraint activateConstraints:v13];
}

- (void)_createSubviews
{
  v3 = +[UIColor clearColor];
  [(CuratedCollectionPlaceSummaryView *)self setBackgroundColor:v3];

  v4 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionPlaceSummaryView *)self setTitleLabel:v8];

  v9 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (sub_10000FA08(self) == 5)
  {
    v10 = +[UIFont system20Semibold];
    v11 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
    [v11 setFont:v10];
  }

  else
  {
    v10 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
    [DynamicTypeWizard autorefreshLabel:v10 withFontProvider:&stru_10165DA68];
  }

  v12 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [v12 setNumberOfLines:0];

  v13 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [v13 setAccessibilityIdentifier:@"TitleLabel"];

  v14 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [(CuratedCollectionPlaceSummaryView *)self addSubview:v14];

  v15 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionPlaceSummaryView *)self setSecondaryLabel:v15];

  v16 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (sub_10000FA08(self) == 5)
  {
    v17 = +[UIFont system17Tall];
    v18 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
    [v18 setFont:v17];
  }

  else
  {
    v17 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
    [DynamicTypeWizard autorefreshLabel:v17 withFontProvider:&stru_10165D908];
  }

  v19 = +[UIColor secondaryLabelColor];
  v20 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [v20 setTextColor:v19];

  v21 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [v21 setAccessibilityIdentifier:@"SecondaryLabel"];

  v22 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [(CuratedCollectionPlaceSummaryView *)self addSubview:v22];

  v23 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionPlaceSummaryView *)self setTertiaryLabel:v23];

  v24 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (sub_10000FA08(self) == 5)
  {
    v25 = +[UIFont system17Tall];
    v26 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
    [v26 setFont:v25];
  }

  else
  {
    v25 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
    [DynamicTypeWizard autorefreshLabel:v25 withFontProvider:&stru_10165D908];
  }

  v27 = +[UIColor secondaryLabelColor];
  v28 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [v28 setTextColor:v27];

  v29 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [v29 setAccessibilityIdentifier:@"TertiaryLabel"];

  v30 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [(CuratedCollectionPlaceSummaryView *)self addSubview:v30];
}

- (void)configureWithModel:(id)a3
{
  v19 = a3;
  v4 = [v19 title];
  v5 = [(CuratedCollectionPlaceSummaryView *)self titleLabel];
  [v5 setText:v4];

  v6 = +[NSMutableArray array];
  v7 = [v19 category];

  if (v7)
  {
    v8 = [v19 category];
    [v6 addObject:v8];
  }

  v9 = [v19 distance];

  if (v9)
  {
    v10 = [v19 distance];
    [v6 addObject:v10];
  }

  v11 = [v19 price];

  if (v11)
  {
    v12 = [v19 price];
    [v6 addObject:v12];
  }

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

  v15 = [v6 componentsJoinedByString:v14];
  v16 = [(CuratedCollectionPlaceSummaryView *)self secondaryLabel];
  [v16 setText:v15];

  v17 = [v19 hours];
  v18 = [(CuratedCollectionPlaceSummaryView *)self tertiaryLabel];
  [v18 setAttributedText:v17];
}

- (CuratedCollectionPlaceSummaryView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionPlaceSummaryView;
  v3 = [(CuratedCollectionPlaceSummaryView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionPlaceSummaryView *)v3 setAccessibilityIdentifier:@"CuratedCollectionPlaceSummary"];
    [(CuratedCollectionPlaceSummaryView *)v4 _createSubviews];
    [(CuratedCollectionPlaceSummaryView *)v4 _setupConstraints];
  }

  return v4;
}

@end