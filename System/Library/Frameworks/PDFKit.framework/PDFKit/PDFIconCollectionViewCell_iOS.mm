@interface PDFIconCollectionViewCell_iOS
- (PDFIconCollectionViewCell_iOS)initWithCoder:(id)coder;
- (PDFIconCollectionViewCell_iOS)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
- (void)setThumbnailHeight:(double)height;
- (void)setThumbnailWidth:(double)width;
- (void)setupSubviews;
- (void)updateAspectConstraintWithSize:(CGSize)size;
- (void)updateOverlay;
@end

@implementation PDFIconCollectionViewCell_iOS

- (PDFIconCollectionViewCell_iOS)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PDFIconCollectionViewCell_iOS;
  v3 = [(PDFIconCollectionViewCell_iOS *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PDFIconCollectionViewCell_iOS *)v3 _commonInit];
  }

  return v4;
}

- (PDFIconCollectionViewCell_iOS)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PDFIconCollectionViewCell_iOS;
  v3 = [(PDFIconCollectionViewCell_iOS *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PDFIconCollectionViewCell_iOS *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  [(PDFIconCollectionViewCell_iOS *)self setupSubviews];
  v3 = *MEMORY[0x1E69796E8];
  layer = [(PDFIconCollectionViewCell_iOS *)self layer];
  [layer setCornerCurve:v3];

  layer2 = [(PDFIconCollectionViewCell_iOS *)self layer];
  [layer2 setCornerRadius:3.0];

  layer3 = [(PDFIconCollectionViewCell_iOS *)self layer];
  [layer3 setMasksToBounds:1];

  [(PDFIconCollectionViewCell_iOS *)self updateOverlay];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PDFIconCollectionViewCell_iOS;
  [(PDFIconCollectionViewCell_iOS *)&v5 prepareForReuse];
  if (self->_ratioConstraint)
  {
    imageView = [(PDFIconCollectionViewCell_iOS *)self imageView];
    [imageView removeConstraint:self->_ratioConstraint];
  }

  imageView2 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  [imageView2 setImage:0];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = PDFIconCollectionViewCell_iOS;
  [(PDFIconCollectionViewCell_iOS *)&v4 setSelected:selected];
  [(PDFIconCollectionViewCell_iOS *)self updateOverlay];
}

- (void)updateOverlay
{
  v3 = [(PDFIconCollectionViewCell_iOS *)self isSelected]^ 1;
  overlayView = self->_overlayView;

  [(UIView *)overlayView setHidden:v3];
}

- (void)setupSubviews
{
  v82[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(PDFIconCollectionViewCell_iOS *)self bounds];
  v4 = [v3 initWithFrame:?];
  [(PDFIconCollectionViewCell_iOS *)self setImageView:v4];

  imageView = [(PDFIconCollectionViewCell_iOS *)self imageView];
  [imageView setContentMode:0];

  v6 = *MEMORY[0x1E69796E8];
  imageView2 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  layer = [imageView2 layer];
  [layer setCornerCurve:v6];

  imageView3 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  layer2 = [imageView3 layer];
  [layer2 setCornerRadius:2.0];

  imageView4 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  layer3 = [imageView4 layer];
  [layer3 setMasksToBounds:1];

  contentView = [(PDFIconCollectionViewCell_iOS *)self contentView];
  imageView5 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  [contentView addSubview:imageView5];

  v15 = objc_opt_new();
  overlayView = self->_overlayView;
  self->_overlayView = v15;

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v18 = [blackColor colorWithAlphaComponent:0.3];
  [(UIView *)self->_overlayView setBackgroundColor:v18];

  layer4 = [(UIView *)self->_overlayView layer];
  [layer4 setCornerCurve:v6];

  layer5 = [(UIView *)self->_overlayView layer];
  [layer5 setCornerRadius:2.0];

  [(UIView *)self->_overlayView setHidden:1];
  contentView2 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  [contentView2 addSubview:self->_overlayView];

  imageView6 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  [imageView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(UIView *)self->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = MEMORY[0x1E696ACD8];
  imageView7 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  bottomAnchor = [imageView7 bottomAnchor];
  contentView3 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.0];
  v82[0] = v71;
  imageView8 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  topAnchor = [imageView8 topAnchor];
  contentView4 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v65 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:3.0];
  v82[1] = v65;
  imageView9 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  leadingAnchor = [imageView9 leadingAnchor];
  contentView5 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:3.0];
  v82[2] = v60;
  imageView10 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  trailingAnchor = [imageView10 trailingAnchor];
  contentView6 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  trailingAnchor2 = [contentView6 trailingAnchor];
  v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-3.0];
  v82[3] = v54;
  bottomAnchor3 = [(UIView *)self->_overlayView bottomAnchor];
  contentView7 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  bottomAnchor4 = [contentView7 bottomAnchor];
  v50 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v82[4] = v50;
  topAnchor3 = [(UIView *)self->_overlayView topAnchor];
  contentView8 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  topAnchor4 = [contentView8 topAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v82[5] = v46;
  leadingAnchor3 = [(UIView *)self->_overlayView leadingAnchor];
  contentView9 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  leadingAnchor4 = [contentView9 leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v82[6] = v26;
  trailingAnchor3 = [(UIView *)self->_overlayView trailingAnchor];
  contentView10 = [(PDFIconCollectionViewCell_iOS *)self contentView];
  trailingAnchor4 = [contentView10 trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v82[7] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:8];
  [v59 activateConstraints:v31];

  v32 = objc_alloc(MEMORY[0x1E69DC738]);
  v33 = [v32 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  actionsButton = self->_actionsButton;
  self->_actionsButton = v33;

  v80 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"ellipsis.circle.fill"];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [plainButtonConfiguration setImage:v80];
  [(UIButton *)self->_actionsButton setConfiguration:plainButtonConfiguration];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UIButton *)self->_actionsButton setTintColor:whiteColor];

  [(UIView *)self->_overlayView addSubview:self->_actionsButton];
  [(UIButton *)self->_actionsButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v70 = MEMORY[0x1E696ACD8];
  widthAnchor = [(UIButton *)self->_actionsButton widthAnchor];
  widthAnchor2 = [(UIView *)self->_overlayView widthAnchor];
  v72 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v81[0] = v72;
  heightAnchor = [(UIButton *)self->_actionsButton heightAnchor];
  heightAnchor2 = [(UIView *)self->_overlayView heightAnchor];
  v38 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v81[1] = v38;
  centerXAnchor = [(UIButton *)self->_actionsButton centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_overlayView centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v81[2] = v41;
  centerYAnchor = [(UIButton *)self->_actionsButton centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_overlayView centerYAnchor];
  v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v81[3] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:4];
  [v70 activateConstraints:v45];
}

- (void)updateAspectConstraintWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v18[1] = *MEMORY[0x1E69E9840];
  if (self->_ratioConstraint)
  {
    imageView = [(PDFIconCollectionViewCell_iOS *)self imageView];
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
  imageView2 = [(PDFIconCollectionViewCell_iOS *)self imageView];
  heightAnchor = [imageView2 heightAnchor];
  imageView3 = [(PDFIconCollectionViewCell_iOS *)self imageView];
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
      contentView = [(PDFIconCollectionViewCell_iOS *)self contentView];
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
      contentView = [(PDFIconCollectionViewCell_iOS *)self contentView];
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