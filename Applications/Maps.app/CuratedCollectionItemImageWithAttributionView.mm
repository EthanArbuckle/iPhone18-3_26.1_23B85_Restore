@interface CuratedCollectionItemImageWithAttributionView
- (CuratedCollectionItemImageWithAttributionView)initWithCoder:(id)coder;
- (CuratedCollectionItemImageWithAttributionView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)setAttributionString:(id)string;
- (void)setImage:(id)image;
@end

@implementation CuratedCollectionItemImageWithAttributionView

- (void)setAttributionString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_attributionString isEqualToString:?])
  {
    objc_storeStrong(&self->_attributionString, string);
    v5 = [(NSString *)self->_attributionString length]== 0;
    attributionBackgroundView = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
    [attributionBackgroundView setHidden:v5];

    attributionString = self->_attributionString;
    attributionLabel = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
    [attributionLabel setText:attributionString];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_image, image);
    image = self->_image;
    imageView = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
    [imageView setImage:image];

    imageCopy = v8;
  }
}

- (void)_commonInit
{
  theme = [(CuratedCollectionItemImageWithAttributionView *)self theme];
  imageBackgroundColor = [theme imageBackgroundColor];
  [(CuratedCollectionItemImageWithAttributionView *)self setBackgroundColor:imageBackgroundColor];

  v5 = [UIImageView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionItemImageWithAttributionView *)self setImageView:v9];

  imageView = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView2 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  [imageView2 setContentMode:2];

  imageView3 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  [imageView3 setAccessibilityIdentifier:@"ImageView"];

  imageView4 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  [(CuratedCollectionItemImageWithAttributionView *)self addSubview:imageView4];

  v14 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v14 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v98 = [UIColorEffect colorEffectSaturate:1.0];
  v97 = [UIBlurEffect effectWithBlurRadius:10.0];
  v17 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.200000003];
  v96 = [UIVisualEffect effectCompositingColor:v17];

  v100[0] = v97;
  v100[1] = v98;
  v100[2] = v96;
  v18 = [NSArray arrayWithObjects:v100 count:3];
  v95 = [UIVisualEffect effectCombiningEffects:v18];

  v19 = [[UIVisualEffectView alloc] initWithEffect:v95];
  [(CuratedCollectionItemImageWithAttributionView *)self setAttributionBackgroundView:v19];

  attributionBackgroundView = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  [attributionBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];

  attributionBackgroundView2 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  [attributionBackgroundView2 _setCornerRadius:1 continuous:v16 maskedCorners:10.0];

  attributionBackgroundView3 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  [attributionBackgroundView3 setHidden:1];

  attributionBackgroundView4 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  [(CuratedCollectionItemImageWithAttributionView *)self addSubview:attributionBackgroundView4];

  v24 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(CuratedCollectionItemImageWithAttributionView *)self setAttributionLabel:v24];

  attributionLabel = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  [attributionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  attributionLabel2 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  LODWORD(v27) = 1144750080;
  [attributionLabel2 setContentHuggingPriority:0 forAxis:v27];

  attributionLabel3 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  LODWORD(v29) = 1144750080;
  [attributionLabel3 setContentHuggingPriority:1 forAxis:v29];

  attributionLabel4 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  [attributionLabel4 setOverrideUserInterfaceStyle:1];

  v31 = +[UIColor systemGray5Color];
  attributionLabel5 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  [attributionLabel5 setTextColor:v31];

  attributionLabel6 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  [DynamicTypeWizard autorefreshLabel:attributionLabel6 withFontProvider:&stru_10165D9A8];

  attributionLabel7 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  [attributionLabel7 setAccessibilityIdentifier:@"AttributionLabel"];

  attributionBackgroundView5 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  contentView = [attributionBackgroundView5 contentView];
  attributionLabel8 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  [contentView addSubview:attributionLabel8];

  imageView5 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  topAnchor = [imageView5 topAnchor];
  topAnchor2 = [(CuratedCollectionItemImageWithAttributionView *)self topAnchor];
  v91 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v99[0] = v91;
  imageView6 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  leadingAnchor = [imageView6 leadingAnchor];
  leadingAnchor2 = [(CuratedCollectionItemImageWithAttributionView *)self leadingAnchor];
  v87 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v99[1] = v87;
  imageView7 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  trailingAnchor = [imageView7 trailingAnchor];
  trailingAnchor2 = [(CuratedCollectionItemImageWithAttributionView *)self trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v99[2] = v83;
  imageView8 = [(CuratedCollectionItemImageWithAttributionView *)self imageView];
  bottomAnchor = [imageView8 bottomAnchor];
  bottomAnchor2 = [(CuratedCollectionItemImageWithAttributionView *)self bottomAnchor];
  v79 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v99[3] = v79;
  attributionBackgroundView6 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  topAnchor3 = [attributionBackgroundView6 topAnchor];
  topAnchor4 = [(CuratedCollectionItemImageWithAttributionView *)self topAnchor];
  v75 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v99[4] = v75;
  attributionBackgroundView7 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  leadingAnchor3 = [attributionBackgroundView7 leadingAnchor];
  leadingAnchor4 = [(CuratedCollectionItemImageWithAttributionView *)self leadingAnchor];
  v71 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
  v99[5] = v71;
  attributionBackgroundView8 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  trailingAnchor3 = [attributionBackgroundView8 trailingAnchor];
  trailingAnchor4 = [(CuratedCollectionItemImageWithAttributionView *)self trailingAnchor];
  v67 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v99[6] = v67;
  attributionBackgroundView9 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  bottomAnchor3 = [attributionBackgroundView9 bottomAnchor];
  bottomAnchor4 = [(CuratedCollectionItemImageWithAttributionView *)self bottomAnchor];
  v63 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v99[7] = v63;
  attributionLabel9 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  topAnchor5 = [attributionLabel9 topAnchor];
  attributionBackgroundView10 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  contentView2 = [attributionBackgroundView10 contentView];
  topAnchor6 = [contentView2 topAnchor];
  v57 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:3.0];
  v99[8] = v57;
  attributionLabel10 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  leadingAnchor5 = [attributionLabel10 leadingAnchor];
  attributionBackgroundView11 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  contentView3 = [attributionBackgroundView11 contentView];
  leadingAnchor6 = [contentView3 leadingAnchor];
  v51 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:5.0];
  v99[9] = v51;
  attributionBackgroundView12 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  contentView4 = [attributionBackgroundView12 contentView];
  trailingAnchor5 = [contentView4 trailingAnchor];
  attributionLabel11 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  trailingAnchor6 = [attributionLabel11 trailingAnchor];
  v40 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:5.0];
  v99[10] = v40;
  attributionBackgroundView13 = [(CuratedCollectionItemImageWithAttributionView *)self attributionBackgroundView];
  contentView5 = [attributionBackgroundView13 contentView];
  bottomAnchor5 = [contentView5 bottomAnchor];
  attributionLabel12 = [(CuratedCollectionItemImageWithAttributionView *)self attributionLabel];
  bottomAnchor6 = [attributionLabel12 bottomAnchor];
  v46 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:3.0];
  v99[11] = v46;
  v47 = [NSArray arrayWithObjects:v99 count:12];
  [NSLayoutConstraint activateConstraints:v47];
}

- (CuratedCollectionItemImageWithAttributionView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionItemImageWithAttributionView;
  v3 = [(CuratedCollectionItemImageWithAttributionView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemImageWithAttributionView *)v3 _commonInit];
  }

  return v4;
}

- (CuratedCollectionItemImageWithAttributionView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CuratedCollectionItemImageWithAttributionView;
  v3 = [(CuratedCollectionItemImageWithAttributionView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(CuratedCollectionItemImageWithAttributionView *)v3 setAccessibilityIdentifier:v5];

    [(CuratedCollectionItemImageWithAttributionView *)v3 _commonInit];
  }

  return v3;
}

@end