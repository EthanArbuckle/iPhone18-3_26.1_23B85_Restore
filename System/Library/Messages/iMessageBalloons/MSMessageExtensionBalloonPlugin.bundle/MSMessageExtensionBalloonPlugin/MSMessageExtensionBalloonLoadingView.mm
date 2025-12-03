@interface MSMessageExtensionBalloonLoadingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MSMessageExtensionBalloonLoadingView)initWithAppIcon:(id)icon fromMe:(BOOL)me;
- (UIEdgeInsets)insets;
- (void)layoutSubviews;
- (void)setAppIcon:(id)icon;
@end

@implementation MSMessageExtensionBalloonLoadingView

- (MSMessageExtensionBalloonLoadingView)initWithAppIcon:(id)icon fromMe:(BOOL)me
{
  meCopy = me;
  iconCopy = icon;
  v32.receiver = self;
  v32.super_class = MSMessageExtensionBalloonLoadingView;
  v7 = [(_MSBlurCapableView *)&v32 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    [(MSMessageExtensionBalloonLoadingView *)v7 setAppIcon:iconCopy];
    v9 = [UIImageView alloc];
    appIcon = [(MSMessageExtensionBalloonLoadingView *)v8 appIcon];
    v11 = [v9 initWithImage:appIcon];

    [v11 setContentMode:1];
    v12 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v12 setHidesWhenStopped:1];
    [v12 startAnimating];
    v13 = objc_alloc_init(UILabel);
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"LOADING" value:&stru_4E2A0 table:@"Localizable"];
    [v13 setText:v15];

    v16 = +[CKUIBehavior sharedBehaviors];
    transcriptLoadingViewTextFont = [v16 transcriptLoadingViewTextFont];
    [v13 setFont:transcriptLoadingViewTextFont];

    [(MSMessageExtensionBalloonLoadingView *)v8 setFromMe:meCopy];
    image = [v11 image];
    [image size];
    v20 = v19;
    v22 = v21;

    if (v20 != CGSizeZero.width || v22 != CGSizeZero.height)
    {
      [(MSMessageExtensionBalloonLoadingView *)v8 iconWidth];
      v24 = v23;
      [(MSMessageExtensionBalloonLoadingView *)v8 iconWidth];
      [v11 setFrame:{0.0, 0.0, v24, v22 / v20 * v25}];
    }

    [(MSMessageExtensionBalloonLoadingView *)v8 addSubview:v11];
    [(MSMessageExtensionBalloonLoadingView *)v8 setIconView:v11];
    [(MSMessageExtensionBalloonLoadingView *)v8 addSubview:v12];
    [(MSMessageExtensionBalloonLoadingView *)v8 setSpinnerView:v12];
    spinnerView = [(MSMessageExtensionBalloonLoadingView *)v8 spinnerView];
    [spinnerView sizeToFit];

    [(MSMessageExtensionBalloonLoadingView *)v8 addSubview:v13];
    [(MSMessageExtensionBalloonLoadingView *)v8 setTitleLabel:v13];
    v27 = +[CKUIBehavior sharedBehaviors];
    theme = [v27 theme];
    v29 = [theme balloonColorsForColorType:0xFFFFFFFFLL];
    lastObject = [v29 lastObject];
    [(MSMessageExtensionBalloonLoadingView *)v8 setBackgroundColor:lastObject];
  }

  return v8;
}

- (void)layoutSubviews
{
  v50.receiver = self;
  v50.super_class = MSMessageExtensionBalloonLoadingView;
  [(MSMessageExtensionBalloonLoadingView *)&v50 layoutSubviews];
  titleLabel = [(MSMessageExtensionBalloonLoadingView *)self titleLabel];
  [titleLabel sizeToFit];

  titleLabel2 = [(MSMessageExtensionBalloonLoadingView *)self titleLabel];
  [titleLabel2 frame];
  v47 = v6;
  v49 = v5;

  [(MSMessageExtensionBalloonLoadingView *)self insets];
  iconView = [(MSMessageExtensionBalloonLoadingView *)self iconView];
  image = [iconView image];
  [image size];
  v10 = v9;
  v12 = v11;

  iconView2 = [(MSMessageExtensionBalloonLoadingView *)self iconView];
  [iconView2 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  height = v20;

  [(MSMessageExtensionBalloonLoadingView *)self bounds];
  MidY = CGRectGetMidY(v51);
  width = CGSizeZero.width;
  v24 = v12 == CGSizeZero.height && v10 == CGSizeZero.width;
  if (v24)
  {
    height = CGSizeZero.height;
  }

  else
  {
    [(MSMessageExtensionBalloonLoadingView *)self insets];
    v15 = v25;
    [(MSMessageExtensionBalloonLoadingView *)self insets];
    *&v26 = v26;
    v27 = MidY + height * -0.5;
    v17 = fmaxf(*&v26, v27);
    width = v19;
  }

  iconView3 = [(MSMessageExtensionBalloonLoadingView *)self iconView];
  [iconView3 setFrame:{v15, v17, width, height}];

  spinnerView = [(MSMessageExtensionBalloonLoadingView *)self spinnerView];
  [spinnerView frame];
  v31 = v30;
  v33 = v32;

  iconView4 = [(MSMessageExtensionBalloonLoadingView *)self iconView];
  [iconView4 frame];
  MaxX = CGRectGetMaxX(v52);
  if (v24)
  {
    [(MSMessageExtensionBalloonLoadingView *)self insets];
    v37 = v36;
  }

  else
  {
    [(MSMessageExtensionBalloonLoadingView *)self spinnerHorizontalPadding];
  }

  v38 = MaxX + v37;

  spinnerView2 = [(MSMessageExtensionBalloonLoadingView *)self spinnerView];
  [spinnerView2 setFrame:{v38, MidY - v33 * 0.5, v31, v33}];

  v53.origin.x = v38;
  v53.origin.y = MidY - v33 * 0.5;
  v53.size.width = v31;
  v53.size.height = v33;
  v40 = CGRectGetMaxX(v53);
  [(MSMessageExtensionBalloonLoadingView *)self spinnerHorizontalPadding];
  v42 = v40 + v41;
  [(MSMessageExtensionBalloonLoadingView *)self insets];
  *&v43 = v43;
  v44 = MidY - v48 * 0.5;
  v45 = fmaxf(*&v43, v44);
  titleLabel3 = [(MSMessageExtensionBalloonLoadingView *)self titleLabel];
  [titleLabel3 setFrame:{v42, v45, v49, v48}];
}

- (void)setAppIcon:(id)icon
{
  iconCopy = icon;
  if (self->_appIcon != iconCopy)
  {
    objc_storeStrong(&self->_appIcon, icon);
    iconView = [(MSMessageExtensionBalloonLoadingView *)self iconView];

    if (iconView)
    {
      iconView2 = [(MSMessageExtensionBalloonLoadingView *)self iconView];
      [iconView2 setImage:iconCopy];
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  titleLabel = [(MSMessageExtensionBalloonLoadingView *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  iconView = [(MSMessageExtensionBalloonLoadingView *)self iconView];
  [iconView frame];
  v13 = v12;
  v15 = v14;

  [(MSMessageExtensionBalloonLoadingView *)self insets];
  v17 = v16;
  v18 = 0.0;
  if (v13 != CGSizeZero.width || v15 != CGSizeZero.height)
  {
    [(MSMessageExtensionBalloonLoadingView *)self itemPadding];
  }

  v20 = v13 + v17 + v18;
  spinnerView = [(MSMessageExtensionBalloonLoadingView *)self spinnerView];
  [spinnerView frame];
  v23 = v20 + v22;
  [(MSMessageExtensionBalloonLoadingView *)self spinnerHorizontalPadding];
  v25 = v8 + v24 + v23;
  [(MSMessageExtensionBalloonLoadingView *)self insets];
  v27 = v26 + v25;

  [(MSMessageExtensionBalloonLoadingView *)self insets];
  v29 = v28;
  iconView2 = [(MSMessageExtensionBalloonLoadingView *)self iconView];
  [iconView2 frame];
  v33 = v32;
  v30 = v10;
  v34 = v29 + fmaxf(v30, v33);
  [(MSMessageExtensionBalloonLoadingView *)self insets];
  v36 = v35 + v34;

  v37 = v27;
  v38 = v36;
  result.height = v38;
  result.width = v37;
  return result;
}

- (UIEdgeInsets)insets
{
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 balloonMaskTailWidth];
  v5 = v4;

  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 balloonMaskTailHeight];
  v8 = v7;

  [(MSMessageExtensionBalloonLoadingView *)self itemPadding];
  v10 = v9;
  [(MSMessageExtensionBalloonLoadingView *)self itemPadding];
  v12 = v11;
  if ([(MSMessageExtensionBalloonLoadingView *)self isFromMe])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v5;
  }

  v14 = v12 + v13;
  [(MSMessageExtensionBalloonLoadingView *)self itemPadding];
  v16 = v8 + v15;
  [(MSMessageExtensionBalloonLoadingView *)self itemPadding];
  v18 = v17;
  if ([(MSMessageExtensionBalloonLoadingView *)self isFromMe])
  {
    v19 = v5;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v18 + v19;
  v21 = v10;
  v22 = v14;
  v23 = v16;
  result.right = v20;
  result.bottom = v23;
  result.left = v22;
  result.top = v21;
  return result;
}

@end