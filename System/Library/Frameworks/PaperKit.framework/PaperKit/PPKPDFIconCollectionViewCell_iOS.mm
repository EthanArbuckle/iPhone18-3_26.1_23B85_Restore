@interface PPKPDFIconCollectionViewCell_iOS
- (PPKPDFIconCollectionViewCell_iOS)initWithCoder:(id)coder;
- (PPKPDFIconCollectionViewCell_iOS)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_updateMetricsIfNeeded;
- (void)prepareForReuse;
- (void)setHasLargeThumbnail:(BOOL)thumbnail;
- (void)setIsHorizontalLayout:(BOOL)layout;
- (void)setSelected:(BOOL)selected;
- (void)setThumbnailHeight:(double)height;
- (void)setThumbnailWidth:(double)width;
- (void)setupSubviews;
- (void)updateAspectConstraintWithSize:(CGSize)size;
- (void)updateOverlay;
@end

@implementation PPKPDFIconCollectionViewCell_iOS

- (PPKPDFIconCollectionViewCell_iOS)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PPKPDFIconCollectionViewCell_iOS;
  v3 = [(PPKPDFIconCollectionViewCell_iOS *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PPKPDFIconCollectionViewCell_iOS *)v3 _commonInit];
  }

  return v4;
}

- (PPKPDFIconCollectionViewCell_iOS)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PPKPDFIconCollectionViewCell_iOS;
  v3 = [(PPKPDFIconCollectionViewCell_iOS *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PPKPDFIconCollectionViewCell_iOS *)v3 _commonInit];
  }

  return v4;
}

- (void)setHasLargeThumbnail:(BOOL)thumbnail
{
  if (self->_hasLargeThumbnail != thumbnail)
  {
    self->_hasLargeThumbnail = thumbnail;
    [(PPKPDFIconCollectionViewCell_iOS *)self _updateMetricsIfNeeded];
  }
}

- (void)setIsHorizontalLayout:(BOOL)layout
{
  if (self->_isHorizontalLayout != layout)
  {
    self->_isHorizontalLayout = layout;
    [(PPKPDFIconCollectionViewCell_iOS *)self _updateMetricsIfNeeded];
  }
}

- (void)_updateMetricsIfNeeded
{
  if (_UISolariumEnabled())
  {
    self->_ImageEdgesInset = 0.0;
    self->_ImageCornerRadius = 2.0;
    self->_CellCornerRadius = 3.0;
    self->_SelectionOverlayCornerRadius = 2.0;
    isHorizontalLayout = self->_isHorizontalLayout;
    if (self->_isHorizontalLayout)
    {
      v4 = 12.0;
    }

    else
    {
      v4 = 6.0;
    }

    self->_CellVerticalEdgesInset = v4;
    if (isHorizontalLayout)
    {
      v5 = 6.0;
    }

    else
    {
      v5 = 12.0;
    }

    v6 = 0.5;
    v7 = 4.0;
    v8 = 0.08;
  }

  else if (self->_hasLargeThumbnail)
  {
    self->_ImageEdgesInset = 0.0;
    self->_ImageCornerRadius = 8.0;
    self->_CellCornerRadius = 8.0;
    self->_SelectionOverlayCornerRadius = 8.0;
    self->_CellVerticalEdgesInset = 8.0;
    v6 = 0.0;
    v8 = 0.25;
    v7 = 4.0;
    v5 = 10.0;
  }

  else
  {
    self->_ImageEdgesInset = 3.0;
    self->_ImageCornerRadius = 2.0;
    self->_CellCornerRadius = 3.0;
    self->_SelectionOverlayCornerRadius = 2.0;
    self->_CellVerticalEdgesInset = 0.0;
    v5 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
  }

  self->_CellHorizontalEdgesInset = v5;
  self->_CellShadowRadius = v7;
  self->_CellShadowOpacity = v8;
  self->_CellShadowOffset = v6;
  if (_UISolariumEnabled())
  {
    imageView = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    [imageView ppkSetFixedCornerMaskingConfigurationWithRadius:8.0];

    [(UIView *)self->_overlayView ppkSetFixedCornerMaskingConfigurationWithRadius:8.0];
  }

  else
  {
    ImageCornerRadius = self->_ImageCornerRadius;
    imageView2 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    layer = [imageView2 layer];
    [layer setCornerRadius:ImageCornerRadius];

    SelectionOverlayCornerRadius = self->_SelectionOverlayCornerRadius;
    layer2 = [(UIView *)self->_overlayView layer];
    [layer2 setCornerRadius:SelectionOverlayCornerRadius];
  }

  [(NSLayoutConstraint *)self->_imageViewBottomConstraint setConstant:-self->_ImageEdgesInset - self->_CellVerticalEdgesInset];
  [(NSLayoutConstraint *)self->_imageViewTopConstraint setConstant:self->_ImageEdgesInset + self->_CellVerticalEdgesInset];
  [(NSLayoutConstraint *)self->_imageViewLeadingConstraint setConstant:self->_ImageEdgesInset + self->_CellHorizontalEdgesInset];
  [(NSLayoutConstraint *)self->_imageViewTrailingConstraint setConstant:-self->_ImageEdgesInset - self->_CellHorizontalEdgesInset];
  [(NSLayoutConstraint *)self->_overlayViewBottomConstraint setConstant:-self->_CellVerticalEdgesInset];
  [(NSLayoutConstraint *)self->_overlayViewTopConstraint setConstant:self->_CellVerticalEdgesInset];
  [(NSLayoutConstraint *)self->_overlayViewLeadingConstraint setConstant:self->_CellHorizontalEdgesInset];
  [(NSLayoutConstraint *)self->_overlayViewTrailingConstraint setConstant:-self->_CellHorizontalEdgesInset];
  if (!_UISolariumEnabled())
  {
    hasLargeThumbnail = self->_hasLargeThumbnail;
    layer3 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [layer3 setMasksToBounds:!hasLargeThumbnail];

    v23 = *MEMORY[0x1E69796E8];
    layer4 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [layer4 setCornerCurve:v23];

    CellCornerRadius = self->_CellCornerRadius;
    layer5 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [layer5 setCornerRadius:CellCornerRadius];

    superlayer = [(CALayer *)self->_secondaryShadow superlayer];

    if (!superlayer)
    {
      goto LABEL_23;
    }

    [(CALayer *)self->_secondaryShadow removeFromSuperlayer];
    secondaryShadow = self->_secondaryShadow;
    self->_secondaryShadow = 0;
    goto LABEL_22;
  }

  [(UIView *)self ppkSetContainerConcentricCornerMaskingConfiguration];
  if (!self->_secondaryShadow)
  {
    v15 = objc_opt_new();
    v16 = self->_secondaryShadow;
    self->_secondaryShadow = v15;

    [(PPKPDFIconCollectionViewCell_iOS *)self frame];
    [(CALayer *)self->_secondaryShadow setFrame:?];
    [(CALayer *)self->_secondaryShadow setShadowOffset:4.0, 4.0];
    [(CALayer *)self->_secondaryShadow setShadowRadius:32.0];
    LODWORD(v17) = 1025758986;
    [(CALayer *)self->_secondaryShadow setShadowOpacity:v17];
  }

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  -[CALayer setShadowColor:](self->_secondaryShadow, "setShadowColor:", [blackColor CGColor]);

  superlayer2 = [(CALayer *)self->_secondaryShadow superlayer];

  if (!superlayer2)
  {
    secondaryShadow = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [secondaryShadow insertSublayer:self->_secondaryShadow atIndex:0];
LABEL_22:
  }

LABEL_23:
  CellShadowOffset = self->_CellShadowOffset;
  layer6 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  [layer6 setShadowOffset:{CellShadowOffset, CellShadowOffset}];

  CellShadowRadius = self->_CellShadowRadius;
  layer7 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  [layer7 setShadowRadius:CellShadowRadius];

  *&CellShadowRadius = self->_CellShadowOpacity;
  layer8 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  LODWORD(v33) = LODWORD(CellShadowRadius);
  [layer8 setShadowOpacity:v33];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  v34 = blackColor2;
  cGColor = [blackColor2 CGColor];
  layer9 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  [layer9 setShadowColor:cGColor];
}

- (void)_commonInit
{
  [(PPKPDFIconCollectionViewCell_iOS *)self setupSubviews];
  [(PPKPDFIconCollectionViewCell_iOS *)self updateOverlay];

  [(PPKPDFIconCollectionViewCell_iOS *)self _updateMetricsIfNeeded];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PPKPDFIconCollectionViewCell_iOS;
  [(PPKPDFIconCollectionViewCell_iOS *)&v5 prepareForReuse];
  if (self->_ratioConstraint)
  {
    imageView = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    [imageView removeConstraint:self->_ratioConstraint];
  }

  imageView2 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [imageView2 setImage:0];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = PPKPDFIconCollectionViewCell_iOS;
  [(PPKPDFIconCollectionViewCell_iOS *)&v4 setSelected:selected];
  [(PPKPDFIconCollectionViewCell_iOS *)self updateOverlay];
}

- (void)updateOverlay
{
  v3 = [(PPKPDFIconCollectionViewCell_iOS *)self isSelected]^ 1;
  overlayView = self->_overlayView;

  [(UIView *)overlayView setHidden:v3];
}

- (void)setupSubviews
{
  v98[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(PPKPDFIconCollectionViewCell_iOS *)self bounds];
  v4 = [v3 initWithFrame:?];
  [(PPKPDFIconCollectionViewCell_iOS *)self setImageView:v4];

  imageView = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [imageView setContentMode:0];

  v6 = *MEMORY[0x1E69796E8];
  imageView2 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  layer = [imageView2 layer];
  [layer setCornerCurve:v6];

  imageView3 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  layer2 = [imageView3 layer];
  [layer2 setMasksToBounds:1];

  v11 = *MEMORY[0x1E6979D68];
  imageView4 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  layer3 = [imageView4 layer];
  [layer3 setMinificationFilter:v11];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  imageView5 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [imageView5 setBackgroundColor:whiteColor];

  contentView = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  imageView6 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [contentView addSubview:imageView6];

  v18 = objc_opt_new();
  overlayView = self->_overlayView;
  self->_overlayView = v18;

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v21 = _UISolariumEnabled();
  v22 = 0.3;
  if (v21)
  {
    v22 = 0.2;
  }

  v23 = [blackColor colorWithAlphaComponent:v22];
  [(UIView *)self->_overlayView setBackgroundColor:v23];

  layer4 = [(UIView *)self->_overlayView layer];
  [layer4 setCornerCurve:v6];

  [(UIView *)self->_overlayView setHidden:1];
  contentView2 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  [contentView2 addSubview:self->_overlayView];

  imageView7 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [imageView7 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
  imageView8 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  bottomAnchor = [imageView8 bottomAnchor];
  contentView3 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  imageViewBottomConstraint = self->_imageViewBottomConstraint;
  self->_imageViewBottomConstraint = v31;

  imageView9 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  topAnchor = [imageView9 topAnchor];
  contentView4 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  imageViewTopConstraint = self->_imageViewTopConstraint;
  self->_imageViewTopConstraint = v37;

  imageView10 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  leadingAnchor = [imageView10 leadingAnchor];
  contentView5 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  imageViewLeadingConstraint = self->_imageViewLeadingConstraint;
  self->_imageViewLeadingConstraint = v43;

  imageView11 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  trailingAnchor = [imageView11 trailingAnchor];
  contentView6 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  trailingAnchor2 = [contentView6 trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  imageViewTrailingConstraint = self->_imageViewTrailingConstraint;
  self->_imageViewTrailingConstraint = v49;

  bottomAnchor3 = [(UIView *)self->_overlayView bottomAnchor];
  contentView7 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  bottomAnchor4 = [contentView7 bottomAnchor];
  v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  overlayViewBottomConstraint = self->_overlayViewBottomConstraint;
  self->_overlayViewBottomConstraint = v54;

  topAnchor3 = [(UIView *)self->_overlayView topAnchor];
  contentView8 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  topAnchor4 = [contentView8 topAnchor];
  v59 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
  overlayViewTopConstraint = self->_overlayViewTopConstraint;
  self->_overlayViewTopConstraint = v59;

  leadingAnchor3 = [(UIView *)self->_overlayView leadingAnchor];
  contentView9 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  leadingAnchor4 = [contentView9 leadingAnchor];
  v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  overlayViewLeadingConstraint = self->_overlayViewLeadingConstraint;
  self->_overlayViewLeadingConstraint = v64;

  trailingAnchor3 = [(UIView *)self->_overlayView trailingAnchor];
  contentView10 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  trailingAnchor4 = [contentView10 trailingAnchor];
  v69 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  overlayViewTrailingConstraint = self->_overlayViewTrailingConstraint;
  self->_overlayViewTrailingConstraint = v69;

  v71 = MEMORY[0x1E696ACD8];
  v72 = self->_imageViewBottomConstraint;
  v98[0] = self->_imageViewTopConstraint;
  v98[1] = v72;
  v73 = self->_imageViewTrailingConstraint;
  v98[2] = self->_imageViewLeadingConstraint;
  v98[3] = v73;
  v74 = self->_overlayViewTopConstraint;
  v98[4] = self->_overlayViewBottomConstraint;
  v98[5] = v74;
  v75 = self->_overlayViewTrailingConstraint;
  v98[6] = self->_overlayViewLeadingConstraint;
  v98[7] = v75;
  v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:8];
  [v71 activateConstraints:v76];

  v77 = objc_alloc(MEMORY[0x1E69DC738]);
  v78 = [v77 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  actionsButton = self->_actionsButton;
  self->_actionsButton = v78;

  v96 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setImage:v96];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [plainButtonConfiguration setBaseForegroundColor:whiteColor2];

  [(UIButton *)self->_actionsButton setConfiguration:plainButtonConfiguration];
  [(UIView *)self->_overlayView addSubview:self->_actionsButton];
  [(UIButton *)self->_actionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v91 = MEMORY[0x1E696ACD8];
  widthAnchor = [(UIButton *)self->_actionsButton widthAnchor];
  widthAnchor2 = [(UIView *)self->_overlayView widthAnchor];
  v93 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v97[0] = v93;
  heightAnchor = [(UIButton *)self->_actionsButton heightAnchor];
  heightAnchor2 = [(UIView *)self->_overlayView heightAnchor];
  v83 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v97[1] = v83;
  centerXAnchor = [(UIButton *)self->_actionsButton centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_overlayView centerXAnchor];
  v86 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v97[2] = v86;
  centerYAnchor = [(UIButton *)self->_actionsButton centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_overlayView centerYAnchor];
  v89 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v97[3] = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:4];
  [v91 activateConstraints:v90];
}

- (void)updateAspectConstraintWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_ratioConstraint)
  {
    imageView = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    [imageView removeConstraint:self->_ratioConstraint];
  }

  v7 = height / width;
  if (COERCE__INT64(fabs(height / width)) >= 0x7FF0000000000000)
  {
    v7 = 1.0;
  }

  if (v7 < 0.5)
  {
    v7 = 0.5;
  }

  v8 = fmin(v7, 2.0);
  imageView2 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  heightAnchor = [imageView2 heightAnchor];
  imageView3 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  widthAnchor = [imageView3 widthAnchor];
  v13 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:v8 constant:0.0];
  ratioConstraint = self->_ratioConstraint;
  self->_ratioConstraint = v13;

  LODWORD(v15) = 1148829696;
  [(NSLayoutConstraint *)self->_ratioConstraint setPriority:v15];
  v16 = MEMORY[0x1E696ACD8];
  v18[0] = self->_ratioConstraint;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v16 activateConstraints:v17];
}

- (void)setThumbnailWidth:(double)width
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSLayoutConstraint *)self->_imageViewWidthConstraint constant];
  if (v5 != width)
  {
    imageViewWidthConstraint = self->_imageViewWidthConstraint;
    if (imageViewWidthConstraint)
    {

      [(NSLayoutConstraint *)imageViewWidthConstraint setConstant:width];
    }

    else
    {
      contentView = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
      widthAnchor = [contentView widthAnchor];
      v9 = [widthAnchor constraintEqualToConstant:width];
      v10 = self->_imageViewWidthConstraint;
      self->_imageViewWidthConstraint = v9;

      v11 = MEMORY[0x1E696ACD8];
      v14[0] = self->_imageViewWidthConstraint;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v11 activateConstraints:v12];

      LODWORD(v13) = 1148829696;
      [(NSLayoutConstraint *)self->_imageViewWidthConstraint setPriority:v13];
    }
  }
}

- (void)setThumbnailHeight:(double)height
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSLayoutConstraint *)self->_imageViewHeightConstraint constant];
  if (v5 != height)
  {
    imageViewHeightConstraint = self->_imageViewHeightConstraint;
    if (imageViewHeightConstraint)
    {

      [(NSLayoutConstraint *)imageViewHeightConstraint setConstant:height];
    }

    else
    {
      contentView = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
      heightAnchor = [contentView heightAnchor];
      v9 = [heightAnchor constraintEqualToConstant:height];
      v10 = self->_imageViewHeightConstraint;
      self->_imageViewHeightConstraint = v9;

      v11 = MEMORY[0x1E696ACD8];
      v14[0] = self->_imageViewHeightConstraint;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      [v11 activateConstraints:v12];

      LODWORD(v13) = 1148829696;
      [(NSLayoutConstraint *)self->_imageViewHeightConstraint setPriority:v13];
    }
  }
}

@end