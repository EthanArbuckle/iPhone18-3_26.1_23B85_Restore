@interface CLAuthWithFootnoteViewController
- (void)setUpFootnoteLabelWithText:(id)text;
@end

@implementation CLAuthWithFootnoteViewController

- (void)setUpFootnoteLabelWithText:(id)text
{
  textCopy = text;
  footnoteLabelContainer = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
  if (footnoteLabelContainer)
  {
  }

  else
  {
    mapView = [(CLAuthBaseViewController *)self mapView];

    if (mapView)
    {
      v64 = [UIBlurEffect effectWithStyle:4];
      v6 = [[UIVisualEffectView alloc] initWithEffect:v64];
      [(CLAuthWithFootnoteViewController *)self setFootnoteLabelContainer:v6];

      footnoteLabelContainer2 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      layer = [footnoteLabelContainer2 layer];
      [layer setCornerRadius:17.0];

      footnoteLabelContainer3 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      layer2 = [footnoteLabelContainer3 layer];
      [layer2 setCornerCurve:kCACornerCurveContinuous];

      footnoteLabelContainer4 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      layer3 = [footnoteLabelContainer4 layer];
      [layer3 setMaskedCorners:1];

      footnoteLabelContainer5 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      [footnoteLabelContainer5 setClipsToBounds:1];

      footnoteLabelContainer6 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      [footnoteLabelContainer6 setTranslatesAutoresizingMaskIntoConstraints:0];

      mapView2 = [(CLAuthBaseViewController *)self mapView];
      footnoteLabelContainer7 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      [mapView2 addSubview:footnoteLabelContainer7];

      v17 = objc_alloc_init(UILabel);
      [(CLAuthWithFootnoteViewController *)self setFootnoteLabel:v17];

      footnoteLabel = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [footnoteLabel setText:textCopy];

      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
      footnoteLabel2 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [footnoteLabel2 setFont:v19];

      footnoteLabel3 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [footnoteLabel3 setAdjustsFontForContentSizeCategory:1];

      footnoteLabel4 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [footnoteLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

      footnoteLabelContainer8 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      contentView = [footnoteLabelContainer8 contentView];
      footnoteLabel5 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      [contentView addSubview:footnoteLabel5];

      footnoteLabel6 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      topAnchor = [footnoteLabel6 topAnchor];
      footnoteLabelContainer9 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      contentView2 = [footnoteLabelContainer9 contentView];
      topAnchor2 = [contentView2 topAnchor];
      v56 = [topAnchor constraintEqualToAnchor:6.0 constant:?];
      v67[0] = v56;
      footnoteLabel7 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      bottomAnchor = [footnoteLabel7 bottomAnchor];
      footnoteLabelContainer10 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      contentView3 = [footnoteLabelContainer10 contentView];
      bottomAnchor2 = [contentView3 bottomAnchor];
      v51 = [bottomAnchor constraintEqualToAnchor:-6.0 constant:?];
      v67[1] = v51;
      footnoteLabel8 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      leadingAnchor = [footnoteLabel8 leadingAnchor];
      footnoteLabelContainer11 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      contentView4 = [footnoteLabelContainer11 contentView];
      leadingAnchor2 = [contentView4 leadingAnchor];
      v26 = [leadingAnchor constraintEqualToAnchor:10.0 constant:?];
      v67[2] = v26;
      footnoteLabel9 = [(CLAuthWithFootnoteViewController *)self footnoteLabel];
      trailingAnchor = [footnoteLabel9 trailingAnchor];
      footnoteLabelContainer12 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      contentView5 = [footnoteLabelContainer12 contentView];
      trailingAnchor2 = [contentView5 trailingAnchor];
      v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
      v67[3] = v32;
      v33 = [NSArray arrayWithObjects:v67 count:4];
      [NSLayoutConstraint activateConstraints:v33];

      footnoteLabelContainer13 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      bottomAnchor3 = [footnoteLabelContainer13 bottomAnchor];
      mapView3 = [(CLAuthBaseViewController *)self mapView];
      bottomAnchor4 = [mapView3 bottomAnchor];
      v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];

      footnoteLabelContainer14 = [(CLAuthWithFootnoteViewController *)self footnoteLabelContainer];
      trailingAnchor3 = [footnoteLabelContainer14 trailingAnchor];
      mapView4 = [(CLAuthBaseViewController *)self mapView];
      trailingAnchor4 = [mapView4 trailingAnchor];
      v43 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];

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