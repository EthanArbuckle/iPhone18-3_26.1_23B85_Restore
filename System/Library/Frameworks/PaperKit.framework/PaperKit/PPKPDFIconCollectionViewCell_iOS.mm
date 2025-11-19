@interface PPKPDFIconCollectionViewCell_iOS
- (PPKPDFIconCollectionViewCell_iOS)initWithCoder:(id)a3;
- (PPKPDFIconCollectionViewCell_iOS)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_updateMetricsIfNeeded;
- (void)prepareForReuse;
- (void)setHasLargeThumbnail:(BOOL)a3;
- (void)setIsHorizontalLayout:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setThumbnailHeight:(double)a3;
- (void)setThumbnailWidth:(double)a3;
- (void)setupSubviews;
- (void)updateAspectConstraintWithSize:(CGSize)a3;
- (void)updateOverlay;
@end

@implementation PPKPDFIconCollectionViewCell_iOS

- (PPKPDFIconCollectionViewCell_iOS)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PPKPDFIconCollectionViewCell_iOS;
  v3 = [(PPKPDFIconCollectionViewCell_iOS *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PPKPDFIconCollectionViewCell_iOS *)v3 _commonInit];
  }

  return v4;
}

- (PPKPDFIconCollectionViewCell_iOS)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PPKPDFIconCollectionViewCell_iOS;
  v3 = [(PPKPDFIconCollectionViewCell_iOS *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PPKPDFIconCollectionViewCell_iOS *)v3 _commonInit];
  }

  return v4;
}

- (void)setHasLargeThumbnail:(BOOL)a3
{
  if (self->_hasLargeThumbnail != a3)
  {
    self->_hasLargeThumbnail = a3;
    [(PPKPDFIconCollectionViewCell_iOS *)self _updateMetricsIfNeeded];
  }
}

- (void)setIsHorizontalLayout:(BOOL)a3
{
  if (self->_isHorizontalLayout != a3)
  {
    self->_isHorizontalLayout = a3;
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
    v9 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    [v9 ppkSetFixedCornerMaskingConfigurationWithRadius:8.0];

    [(UIView *)self->_overlayView ppkSetFixedCornerMaskingConfigurationWithRadius:8.0];
  }

  else
  {
    ImageCornerRadius = self->_ImageCornerRadius;
    v11 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    v12 = [v11 layer];
    [v12 setCornerRadius:ImageCornerRadius];

    SelectionOverlayCornerRadius = self->_SelectionOverlayCornerRadius;
    v14 = [(UIView *)self->_overlayView layer];
    [v14 setCornerRadius:SelectionOverlayCornerRadius];
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
    v22 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [v22 setMasksToBounds:!hasLargeThumbnail];

    v23 = *MEMORY[0x1E69796E8];
    v24 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [v24 setCornerCurve:v23];

    CellCornerRadius = self->_CellCornerRadius;
    v26 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [v26 setCornerRadius:CellCornerRadius];

    v27 = [(CALayer *)self->_secondaryShadow superlayer];

    if (!v27)
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

  v18 = [MEMORY[0x1E69DC888] blackColor];
  -[CALayer setShadowColor:](self->_secondaryShadow, "setShadowColor:", [v18 CGColor]);

  v19 = [(CALayer *)self->_secondaryShadow superlayer];

  if (!v19)
  {
    secondaryShadow = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
    [secondaryShadow insertSublayer:self->_secondaryShadow atIndex:0];
LABEL_22:
  }

LABEL_23:
  CellShadowOffset = self->_CellShadowOffset;
  v29 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  [v29 setShadowOffset:{CellShadowOffset, CellShadowOffset}];

  CellShadowRadius = self->_CellShadowRadius;
  v31 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  [v31 setShadowRadius:CellShadowRadius];

  *&CellShadowRadius = self->_CellShadowOpacity;
  v32 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  LODWORD(v33) = LODWORD(CellShadowRadius);
  [v32 setShadowOpacity:v33];

  v37 = [MEMORY[0x1E69DC888] blackColor];
  v34 = v37;
  v35 = [v37 CGColor];
  v36 = [(PPKPDFIconCollectionViewCell_iOS *)self layer];
  [v36 setShadowColor:v35];
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
    v3 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    [v3 removeConstraint:self->_ratioConstraint];
  }

  v4 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [v4 setImage:0];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PPKPDFIconCollectionViewCell_iOS;
  [(PPKPDFIconCollectionViewCell_iOS *)&v4 setSelected:a3];
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

  v5 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [v5 setContentMode:0];

  v6 = *MEMORY[0x1E69796E8];
  v7 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v8 = [v7 layer];
  [v8 setCornerCurve:v6];

  v9 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  v11 = *MEMORY[0x1E6979D68];
  v12 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v13 = [v12 layer];
  [v13 setMinificationFilter:v11];

  v14 = [MEMORY[0x1E69DC888] whiteColor];
  v15 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [v15 setBackgroundColor:v14];

  v16 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v17 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [v16 addSubview:v17];

  v18 = objc_opt_new();
  overlayView = self->_overlayView;
  self->_overlayView = v18;

  v20 = [MEMORY[0x1E69DC888] blackColor];
  v21 = _UISolariumEnabled();
  v22 = 0.3;
  if (v21)
  {
    v22 = 0.2;
  }

  v23 = [v20 colorWithAlphaComponent:v22];
  [(UIView *)self->_overlayView setBackgroundColor:v23];

  v24 = [(UIView *)self->_overlayView layer];
  [v24 setCornerCurve:v6];

  [(UIView *)self->_overlayView setHidden:1];
  v25 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  [v25 addSubview:self->_overlayView];

  v26 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v28 = [v27 bottomAnchor];
  v29 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30 constant:0.0];
  imageViewBottomConstraint = self->_imageViewBottomConstraint;
  self->_imageViewBottomConstraint = v31;

  v33 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v34 = [v33 topAnchor];
  v35 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v36 = [v35 topAnchor];
  v37 = [v34 constraintEqualToAnchor:v36 constant:0.0];
  imageViewTopConstraint = self->_imageViewTopConstraint;
  self->_imageViewTopConstraint = v37;

  v39 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v40 = [v39 leadingAnchor];
  v41 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v42 = [v41 leadingAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:0.0];
  imageViewLeadingConstraint = self->_imageViewLeadingConstraint;
  self->_imageViewLeadingConstraint = v43;

  v45 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v46 = [v45 trailingAnchor];
  v47 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v48 = [v47 trailingAnchor];
  v49 = [v46 constraintEqualToAnchor:v48 constant:0.0];
  imageViewTrailingConstraint = self->_imageViewTrailingConstraint;
  self->_imageViewTrailingConstraint = v49;

  v51 = [(UIView *)self->_overlayView bottomAnchor];
  v52 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53 constant:0.0];
  overlayViewBottomConstraint = self->_overlayViewBottomConstraint;
  self->_overlayViewBottomConstraint = v54;

  v56 = [(UIView *)self->_overlayView topAnchor];
  v57 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v58 = [v57 topAnchor];
  v59 = [v56 constraintEqualToAnchor:v58 constant:0.0];
  overlayViewTopConstraint = self->_overlayViewTopConstraint;
  self->_overlayViewTopConstraint = v59;

  v61 = [(UIView *)self->_overlayView leadingAnchor];
  v62 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v63 = [v62 leadingAnchor];
  v64 = [v61 constraintEqualToAnchor:v63 constant:0.0];
  overlayViewLeadingConstraint = self->_overlayViewLeadingConstraint;
  self->_overlayViewLeadingConstraint = v64;

  v66 = [(UIView *)self->_overlayView trailingAnchor];
  v67 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
  v68 = [v67 trailingAnchor];
  v69 = [v66 constraintEqualToAnchor:v68 constant:0.0];
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
  v80 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [v80 setImage:v96];
  v81 = [MEMORY[0x1E69DC888] whiteColor];
  [v80 setBaseForegroundColor:v81];

  [(UIButton *)self->_actionsButton setConfiguration:v80];
  [(UIView *)self->_overlayView addSubview:self->_actionsButton];
  [(UIButton *)self->_actionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v91 = MEMORY[0x1E696ACD8];
  v95 = [(UIButton *)self->_actionsButton widthAnchor];
  v94 = [(UIView *)self->_overlayView widthAnchor];
  v93 = [v95 constraintEqualToAnchor:v94];
  v97[0] = v93;
  v92 = [(UIButton *)self->_actionsButton heightAnchor];
  v82 = [(UIView *)self->_overlayView heightAnchor];
  v83 = [v92 constraintEqualToAnchor:v82];
  v97[1] = v83;
  v84 = [(UIButton *)self->_actionsButton centerXAnchor];
  v85 = [(UIView *)self->_overlayView centerXAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];
  v97[2] = v86;
  v87 = [(UIButton *)self->_actionsButton centerYAnchor];
  v88 = [(UIView *)self->_overlayView centerYAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];
  v97[3] = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:4];
  [v91 activateConstraints:v90];
}

- (void)updateAspectConstraintWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_ratioConstraint)
  {
    v6 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
    [v6 removeConstraint:self->_ratioConstraint];
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
  v9 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v10 = [v9 heightAnchor];
  v11 = [(PPKPDFIconCollectionViewCell_iOS *)self imageView];
  v12 = [v11 widthAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 multiplier:v8 constant:0.0];
  ratioConstraint = self->_ratioConstraint;
  self->_ratioConstraint = v13;

  LODWORD(v15) = 1148829696;
  [(NSLayoutConstraint *)self->_ratioConstraint setPriority:v15];
  v16 = MEMORY[0x1E696ACD8];
  v18[0] = self->_ratioConstraint;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v16 activateConstraints:v17];
}

- (void)setThumbnailWidth:(double)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSLayoutConstraint *)self->_imageViewWidthConstraint constant];
  if (v5 != a3)
  {
    imageViewWidthConstraint = self->_imageViewWidthConstraint;
    if (imageViewWidthConstraint)
    {

      [(NSLayoutConstraint *)imageViewWidthConstraint setConstant:a3];
    }

    else
    {
      v7 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
      v8 = [v7 widthAnchor];
      v9 = [v8 constraintEqualToConstant:a3];
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

- (void)setThumbnailHeight:(double)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  [(NSLayoutConstraint *)self->_imageViewHeightConstraint constant];
  if (v5 != a3)
  {
    imageViewHeightConstraint = self->_imageViewHeightConstraint;
    if (imageViewHeightConstraint)
    {

      [(NSLayoutConstraint *)imageViewHeightConstraint setConstant:a3];
    }

    else
    {
      v7 = [(PPKPDFIconCollectionViewCell_iOS *)self contentView];
      v8 = [v7 heightAnchor];
      v9 = [v8 constraintEqualToConstant:a3];
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