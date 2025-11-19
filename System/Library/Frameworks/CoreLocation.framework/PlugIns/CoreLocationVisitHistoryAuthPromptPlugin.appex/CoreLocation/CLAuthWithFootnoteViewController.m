@interface CLAuthWithFootnoteViewController
- (void)setUpFootnoteLabelWithText:(id)a3;
@end

@implementation CLAuthWithFootnoteViewController

- (void)setUpFootnoteLabelWithText:(id)a3
{
  v65 = a3;
  v4 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
  if (v4)
  {
  }

  else
  {
    v5 = [(CLAuthBaseViewController *)self mapView];

    if (v5)
    {
      v64 = [UIBlurEffect effectWithStyle:4];
      v6 = [[UIVisualEffectView alloc] initWithEffect:v64];
      [(CLAuthWithFootnoteViewController *)self setFootnoteLabelContainer:v6];

      v7 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v8 = [v7 layer];
      [v8 setCornerRadius:17.0];

      v9 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v10 = [v9 layer];
      [v10 setCornerCurve:kCACornerCurveContinuous];

      v11 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v12 = [v11 layer];
      [v12 setMaskedCorners:1];

      v13 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      [v13 setClipsToBounds:1];

      v14 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

      v15 = [(CLAuthBaseViewController *)self mapView];
      v16 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      [v15 addSubview:v16];

      v17 = objc_alloc_init(UILabel);
      [(CLAuthWithFootnoteViewController *)self setFootnoteLabel:v17];

      v18 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [v18 setText:v65];

      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      v20 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [v20 setFont:v19];

      v21 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [v21 setAdjustsFontForContentSizeCategory:1];

      v22 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v24 = [v23 contentView];
      v25 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [v24 addSubview:v25];

      v60 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      v63 = [v60 topAnchor];
      v59 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v58 = [v59 contentView];
      v57 = [v58 topAnchor];
      v56 = [v63 constraintEqualToAnchor:6.0 constant:?];
      v67[0] = v56;
      v55 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      v62 = [v55 bottomAnchor];
      v54 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v53 = [v54 contentView];
      v52 = [v53 bottomAnchor];
      v51 = [v62 constraintEqualToAnchor:-6.0 constant:?];
      v67[1] = v51;
      v50 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      v61 = [v50 leadingAnchor];
      v49 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v48 = [v49 contentView];
      v47 = [v48 leadingAnchor];
      v26 = [v61 constraintEqualToAnchor:10.0 constant:?];
      v67[2] = v26;
      v27 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      v28 = [v27 trailingAnchor];
      v29 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v30 = [v29 contentView];
      v31 = [v30 trailingAnchor];
      v32 = [v28 constraintEqualToAnchor:v31 constant:-10.0];
      v67[3] = v32;
      v33 = [NSArray arrayWithObjects:v67 count:4];
      [NSLayoutConstraint activateConstraints:v33];

      v34 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v35 = [v34 bottomAnchor];
      v36 = [(CLAuthBaseViewController *)self mapView];
      v37 = [v36 bottomAnchor];
      v38 = [v35 constraintEqualToAnchor:v37 constant:0.0];

      v39 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      v40 = [v39 trailingAnchor];
      v41 = [(CLAuthBaseViewController *)self mapView];
      v42 = [v41 trailingAnchor];
      v43 = [v40 constraintEqualToAnchor:v42 constant:0.0];

      LODWORD(v44) = 1148846080;
      [v38 setPriority:v44];
      LODWORD(v45) = 1148846080;
      [v43 setPriority:v45];
      v66[0] = v38;
      v66[1] = v43;
      v46 = [NSArray arrayWithObjects:v66 count:2];
      [NSLayoutConstraint activateConstraints:v46];
    }
  }
}

@end