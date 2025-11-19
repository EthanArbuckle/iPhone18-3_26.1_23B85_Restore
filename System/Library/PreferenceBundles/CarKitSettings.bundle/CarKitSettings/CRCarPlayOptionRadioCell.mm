@interface CRCarPlayOptionRadioCell
- (CRCarPlayOptionRadioCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CRCarPlayOptionRadioCell

- (CRCarPlayOptionRadioCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v60.receiver = self;
  v60.super_class = CRCarPlayOptionRadioCell;
  v9 = [(CRCarPlayOptionRadioCell *)&v60 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(CRCarPlayOptionRadioCell *)v9 contentView];
    v12 = [(CRCarPlayOptionRadioCell *)v10 textLabel];
    [(CRCarPlayOptionRadioCell *)v10 setAccessoryType:0];
    v13 = [[CRCheckmarkView alloc] initWithChecked:[(CRCarPlayOptionRadioCell *)v10 isChecked]];
    [(CRCheckmarkView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 addSubview:v13];
    checkmarkView = v10->_checkmarkView;
    v10->_checkmarkView = v13;
    v57 = v13;

    v15 = objc_alloc_init(UILabel);
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = v12;
    v16 = [v12 font];
    [v15 setFont:v16];

    v17 = [v12 textColor];
    [v15 setTextColor:v17];

    [v15 setTextAlignment:4];
    v18 = [v8 name];
    [(CRCarPlayOptionRadioCell *)v10 setSpecifierName:v18];

    v19 = [(CRCarPlayOptionRadioCell *)v10 specifierName];
    [v15 setText:v19];

    v56 = v15;
    [(CRCarPlayOptionRadioCell *)v10 setNameLabel:v15];
    v20 = [(CRCarPlayOptionRadioCell *)v10 textLabel];
    [v20 setHidden:1];

    v21 = [UIStackView alloc];
    [(CRCarPlayOptionRadioCell *)v10 checkmarkView];
    v22 = v59 = v8;
    v63[0] = v22;
    v63[1] = v15;
    v23 = [NSArray arrayWithObjects:v63 count:2];
    v24 = [v21 initWithArrangedSubviews:v23];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setAxis:0];
    [v24 setAlignment:3];
    [v24 setDistribution:0];
    [v24 setSpacing:1.17549435e-38];
    v25 = v11;
    [v11 addSubview:v24];
    v54 = [v24 leadingAnchor];
    v52 = [v11 leadingAnchor];
    v50 = [v54 constraintEqualToSystemSpacingAfterAnchor:v52 multiplier:2.0];
    v62[0] = v50;
    v26 = [v11 trailingAnchor];
    v27 = [v24 trailingAnchor];
    v28 = [v26 constraintEqualToSystemSpacingAfterAnchor:v27 multiplier:2.0];
    v62[1] = v28;
    v29 = [v24 topAnchor];
    v30 = [v25 topAnchor];
    v31 = [v29 constraintEqualToSystemSpacingBelowAnchor:v30 multiplier:2.0];
    v62[2] = v31;
    v32 = [NSArray arrayWithObjects:v62 count:3];
    [v25 addConstraints:v32];

    v55 = [v59 propertyForKey:@"CRCarPlayOptionImageNameKey"];
    [(CRCarPlayOptionRadioCell *)v10 setDrawingName:v55];
    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v53 = [UIImage imageNamed:v55 inBundle:v33];

    v34 = [[UIImageView alloc] initWithImage:v53];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v34 setContentMode:2];
    [v25 addSubview:v34];
    [(CRCarPlayOptionRadioCell *)v10 setDrawingView:v34];
    v51 = [v34 leadingAnchor];
    v49 = [v25 leadingAnchor];
    v48 = [v51 constraintEqualToSystemSpacingAfterAnchor:v49 multiplier:2.0];
    v61[0] = v48;
    v35 = v25;
    v46 = [v25 trailingAnchor];
    v45 = [v34 trailingAnchor];
    v44 = [v46 constraintEqualToSystemSpacingAfterAnchor:v45 multiplier:2.0];
    v61[1] = v44;
    v36 = [v34 topAnchor];
    v37 = [v24 bottomAnchor];
    v38 = [v36 constraintEqualToSystemSpacingBelowAnchor:v37 multiplier:2.0];
    v61[2] = v38;
    [v25 bottomAnchor];
    v39 = v47 = v10;
    v40 = [v34 bottomAnchor];
    v41 = [v39 constraintEqualToSystemSpacingBelowAnchor:v40 multiplier:4.0];
    v61[3] = v41;
    v42 = [NSArray arrayWithObjects:v61 count:4];

    [v35 addConstraints:v42];
    v10 = v47;

    v8 = v59;
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = CRCarPlayOptionRadioCell;
  v4 = a3;
  [(CRCarPlayOptionRadioCell *)&v15 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 name];
  v6 = [v4 propertyForKey:@"CRCarPlayOptionImageNameKey"];

  v7 = [(CRCarPlayOptionRadioCell *)self specifierName];
  if ([v5 isEqualToString:v7])
  {
    v8 = [(CRCarPlayOptionRadioCell *)self drawingName];
    v9 = [v6 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(CRCarPlayOptionRadioCell *)self setAccessoryType:0];
  v10 = [(CRCarPlayOptionRadioCell *)self checkmarkView];
  [v10 setChecked:{-[CRCarPlayOptionRadioCell isChecked](self, "isChecked")}];

  [(CRCarPlayOptionRadioCell *)self setSpecifierName:v5];
  v11 = [(CRCarPlayOptionRadioCell *)self nameLabel];
  [v11 setText:v5];

  [(CRCarPlayOptionRadioCell *)self setDrawingName:v6];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [UIImage imageNamed:v6 inBundle:v12];

  v14 = [(CRCarPlayOptionRadioCell *)self drawingView];
  [v14 setImage:v13];

LABEL_6:
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = 0.5;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = [(CRCarPlayOptionRadioCell *)self checkmarkView];
  [v6 setAlpha:v5];

  v7 = [(CRCarPlayOptionRadioCell *)self nameLabel];
  [v7 setAlpha:v5];

  v8 = [(CRCarPlayOptionRadioCell *)self drawingView];
  [v8 setAlpha:v5];
}

@end