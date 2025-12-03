@interface CNPhotoPickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)bounds forCellStyle:(unint64_t)style;
+ (double)cornerRadiusForBounds:(CGRect)bounds forCellStyle:(unint64_t)style;
- (CNPhotoPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)clearContainerViewAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCellStyle:(unint64_t)style;
- (void)setDisplaysBorder:(BOOL)border;
- (void)setSelected:(BOOL)selected;
- (void)updateBorderTintColor:(id)color;
- (void)updateCaptionFrame;
- (void)updateWithCaption:(id)caption;
- (void)updateWithView:(id)view animation:(unint64_t)animation;
@end

@implementation CNPhotoPickerCollectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerCollectionViewCell;
  [(CNPhotoPickerCollectionViewCell *)&v4 prepareForReuse];
  [(CNPhotoPickerCollectionViewCell *)self clearContainerViewAnimated:0 withCompletion:0];
  [(CNPhotoPickerCollectionViewCell *)self setContainerContentView:0];
  selectionLayer = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
  [selectionLayer setHidden:1];

  [(CNPhotoPickerCollectionViewCell *)self setDisplaysBorder:0];
  [(CNPhotoPickerCollectionViewCell *)self setDisplaySelection:0];
  [(CNPhotoPickerCollectionViewCell *)self setCellStyle:1];
}

- (void)clearContainerViewAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = *MEMORY[0x1E6996530];
  containerView = [(CNPhotoPickerCollectionViewCell *)self containerView];
  subviews = [containerView subviews];
  LODWORD(v7) = (*(v7 + 16))(v7, subviews);

  if (!v7)
  {
    if (animatedCopy)
    {
      v10 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __77__CNPhotoPickerCollectionViewCell_clearContainerViewAnimated_withCompletion___block_invoke;
      v14[3] = &unk_1E74E6A88;
      v14[4] = self;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__CNPhotoPickerCollectionViewCell_clearContainerViewAnimated_withCompletion___block_invoke_2;
      v12[3] = &unk_1E74E6FB0;
      v12[4] = self;
      v13 = completionCopy;
      [v10 animateWithDuration:v14 animations:v12 completion:0.15];

      goto LABEL_7;
    }

    containerContentView = [(CNPhotoPickerCollectionViewCell *)self containerContentView];
    [containerContentView removeFromSuperview];

    [(CNPhotoPickerCollectionViewCell *)self setContainerContentView:0];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_7:
}

void __77__CNPhotoPickerCollectionViewCell_clearContainerViewAnimated_withCompletion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) containerContentView];
  CGAffineTransformMakeScale(&v2, 0.2, 0.2);
  [v1 setTransform:&v2];
}

uint64_t __77__CNPhotoPickerCollectionViewCell_clearContainerViewAnimated_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) containerContentView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setContainerContentView:0];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)updateBorderTintColor:(id)color
{
  v8 = [color colorWithAlphaComponent:0.25];
  v4 = v8;
  cGColor = [v8 CGColor];
  containerView = [(CNPhotoPickerCollectionViewCell *)self containerView];
  layer = [containerView layer];
  [layer setBorderColor:cGColor];
}

- (void)setDisplaysBorder:(BOOL)border
{
  if (self->_displaysBorder != border)
  {
    self->_displaysBorder = border;
    if (border)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v7 = 2.0 / v6;
      containerView = [(CNPhotoPickerCollectionViewCell *)self containerView];
      layer = [containerView layer];
      [layer setBorderWidth:v7];

      tintColor = [(CNPhotoPickerCollectionViewCell *)self tintColor];
      layer3 = [tintColor colorWithAlphaComponent:0.25];
      cGColor = [layer3 CGColor];
      containerView2 = [(CNPhotoPickerCollectionViewCell *)self containerView];
      layer2 = [containerView2 layer];
      [layer2 setBorderColor:cGColor];
    }

    else
    {
      tintColor = [(CNPhotoPickerCollectionViewCell *)self containerView];
      layer3 = [tintColor layer];
      [layer3 setBorderWidth:0.0];
    }
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerCollectionViewCell;
  [(CNPhotoPickerCollectionViewCell *)&v15 setSelected:?];
  if (selectedCopy)
  {
    selectionLayer = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];

    if (!selectionLayer)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v7 = +[CNUIColorRepository photoPickerSelectionBorderColor];
      -[CAShapeLayer setStrokeColor:](v6, "setStrokeColor:", [v7 CGColor]);

      [(CAShapeLayer *)v6 setLineWidth:3.0];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      -[CAShapeLayer setFillColor:](v6, "setFillColor:", [clearColor CGColor]);

      [(CAShapeLayer *)v6 setHidden:1];
      selectionLayer = self->_selectionLayer;
      self->_selectionLayer = v6;
      v10 = v6;

      contentView = [(CNPhotoPickerCollectionViewCell *)self contentView];
      layer = [contentView layer];
      [layer addSublayer:v10];
    }
  }

  v13 = [(CNPhotoPickerCollectionViewCell *)self displaySelection]&& selectedCopy;
  selectionLayer2 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
  [selectionLayer2 setHidden:v13 ^ 1u];
}

- (void)updateCaptionFrame
{
  captionLabel = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [captionLabel sizeToFit];

  captionLabel2 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [captionLabel2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  contentView = [(CNPhotoPickerCollectionViewCell *)self contentView];
  [contentView bounds];
  v15 = v14;

  if (v10 > v15)
  {
    captionLabel3 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    font = [captionLabel3 font];
    [font lineHeight];
    v19 = v18;
    captionLabel4 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    v12 = v19 * [captionLabel4 numberOfLines];
  }

  contentView2 = [(CNPhotoPickerCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v23 = v22;

  captionLabel5 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [captionLabel5 setFrame:{v6, v8, v23, v12}];

  contentView3 = [(CNPhotoPickerCollectionViewCell *)self contentView];
  [contentView3 center];
  v26 = v25;
  containerView = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [containerView frame];
  v29 = v28;
  containerView2 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [containerView2 bounds];
  v32 = v29 + v31;
  captionLabel6 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [captionLabel6 bounds];
  v35 = v32 + v34 * 0.5 + 8.0;
  captionLabel7 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [captionLabel7 setCenter:{v26, v35}];
}

- (void)updateWithCaption:(id)caption
{
  captionCopy = caption;
  captionLabel = [(CNPhotoPickerCollectionViewCell *)self captionLabel];

  if (!captionLabel)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNPhotoPickerCollectionViewCell *)self setCaptionLabel:v7];

    v8 = +[CNUIFontRepository contactCardPhotoPickerCaptionFont];
    captionLabel2 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [captionLabel2 setFont:v8];

    captionLabel3 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [captionLabel3 setAdjustsFontForContentSizeCategory:1];

    captionLabel4 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [captionLabel4 setNumberOfLines:2];

    captionLabel5 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [captionLabel5 setTextAlignment:1];

    LODWORD(captionLabel5) = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    captionLabel6 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [captionLabel6 setAdjustsFontSizeToFitWidth:1];

    if (captionLabel5)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 0.7;
    }

    captionLabel7 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [captionLabel7 setMinimumScaleFactor:v14];

    contentView = [(CNPhotoPickerCollectionViewCell *)self contentView];
    captionLabel8 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [contentView addSubview:captionLabel8];
  }

  captionLabel9 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [captionLabel9 setText:captionCopy];

  [(CNPhotoPickerCollectionViewCell *)self updateCaptionFrame];
}

- (void)updateWithView:(id)view animation:(unint64_t)animation
{
  viewCopy = view;
  v7 = viewCopy;
  if (animation == 1)
  {
    [viewCopy setAlpha:0.0];
    containerView = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [containerView frame];
    [v7 setFrame:?];

    containerView2 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [containerView2 addSubview:v7];

    [(CNPhotoPickerCollectionViewCell *)self setContainerContentView:v7];
    displaySessionUUID = [(CNPhotoPickerCollectionViewCell *)self displaySessionUUID];
    v12 = MEMORY[0x1E69DD250];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_3;
    v19[3] = &unk_1E74E6A88;
    v20 = v7;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_4;
    v16[3] = &unk_1E74E19F0;
    v16[4] = self;
    v17 = displaySessionUUID;
    v18 = v20;
    v13 = displaySessionUUID;
    [v12 animateWithDuration:v19 animations:v16 completion:0.5];
  }

  else
  {
    if (animation == 2)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke;
      v21[3] = &unk_1E74E77C0;
      v22 = viewCopy;
      selfCopy = self;
      [(CNPhotoPickerCollectionViewCell *)self clearContainerViewAnimated:1 withCompletion:v21];
      v8 = v22;
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_5;
      v14[3] = &unk_1E74E77C0;
      v14[4] = self;
      v15 = viewCopy;
      [(CNPhotoPickerCollectionViewCell *)self clearContainerViewAnimated:0 withCompletion:v14];
      v8 = v15;
    }
  }
}

void __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) containerView];
  [v2 frame];
  [*(a1 + 32) setFrame:?];

  v3 = [*(a1 + 40) containerView];
  [v3 addSubview:*(a1 + 32)];

  [*(a1 + 40) setContainerContentView:*(a1 + 32)];
  CGAffineTransformMakeScale(&v9, 0.2, 0.2);
  v4 = *(a1 + 32);
  v8 = v9;
  [v4 setTransform:&v8];
  v5 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_2;
  v6[3] = &unk_1E74E6A88;
  v7 = *(a1 + 32);
  [v5 animateWithDuration:0x20000 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.6 completion:0.0];
}

void __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) displaySessionUUID];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v4 = *(a1 + 48);

    [v4 removeFromSuperview];
  }
}

void __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setContainerContentView:*(a1 + 40)];
  v2 = [*(a1 + 32) containerView];
  [v2 frame];
  [*(a1 + 40) setFrame:?];

  v3 = [*(a1 + 32) containerView];
  [v3 addSubview:*(a1 + 40)];
}

uint64_t __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  CGAffineTransformMakeScale(&v3, 1.0, 1.0);
  return [v1 setTransform:&v3];
}

- (void)setCellStyle:(unint64_t)style
{
  if (self->_cellStyle != style)
  {
    self->_cellStyle = style;
    [(CNPhotoPickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CNPhotoPickerCollectionViewCell;
  [(CNPhotoPickerCollectionViewCell *)&v36 layoutSubviews];
  containerView = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [containerView bounds];
  v5 = v4;
  containerView2 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [containerView2 bounds];
  v8 = v7;

  if (v5 != v8)
  {
    containerView3 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [containerView3 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    containerView4 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [containerView4 setFrame:{v11, v13, v15, v15}];
  }

  v17 = objc_opt_class();
  containerView5 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [containerView5 bounds];
  [v17 cornerRadiusForBounds:-[CNPhotoPickerCollectionViewCell cellStyle](self forCellStyle:{"cellStyle"), v19, v20, v21, v22}];
  v24 = v23;
  containerView6 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  layer = [containerView6 layer];
  [layer setCornerRadius:v24];

  selectionLayer = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
  LOBYTE(containerView5) = [selectionLayer isHidden];

  if ((containerView5 & 1) == 0)
  {
    v28 = objc_opt_class();
    containerView7 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [containerView7 bounds];
    v34 = [v28 selectionPathInBounds:-[CNPhotoPickerCollectionViewCell cellStyle](self forCellStyle:{"cellStyle"), v30, v31, v32, v33}];
    selectionLayer2 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
    [selectionLayer2 setPath:v34];
  }

  [(CNPhotoPickerCollectionViewCell *)self updateCaptionFrame];
}

- (CNPhotoPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CNPhotoPickerCollectionViewCell;
  v3 = [(CNPhotoPickerCollectionViewCell *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    contentView = [(CNPhotoPickerCollectionViewCell *)v3 contentView];
    [contentView bounds];
    v7 = v6;
    contentView2 = [(CNPhotoPickerCollectionViewCell *)v3 contentView];
    [contentView2 bounds];
    v10 = [v4 initWithFrame:{0.0, 0.0, v7, v9}];
    containerView = v3->_containerView;
    v3->_containerView = v10;

    [(UIView *)v3->_containerView setClipsToBounds:1];
    layer = [(UIView *)v3->_containerView layer];
    [layer setMasksToBounds:1];

    [(UIView *)v3->_containerView setAutoresizingMask:18];
    contentView3 = [(CNPhotoPickerCollectionViewCell *)v3 contentView];
    [contentView3 addSubview:v3->_containerView];

    v14 = v3;
  }

  return v3;
}

+ (CGPath)selectionPathInBounds:(CGRect)bounds forCellStyle:(unint64_t)style
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v19 = CGRectInset(bounds, -6.0, -6.0);
  v10 = v19.origin.x;
  v11 = v19.origin.y;
  v12 = v19.size.width;
  v13 = v19.size.height;
  v14 = MEMORY[0x1E69DC728];
  if (style == 1)
  {
    [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
  }

  else
  {
    [self cornerRadiusForBounds:style forCellStyle:{x, y, width, height}];
    [v14 bezierPathWithRoundedRect:v10 cornerRadius:{v11, v12, v13, v15}];
  }
  v16 = ;
  cGPath = [v16 CGPath];

  return cGPath;
}

+ (double)cornerRadiusForBounds:(CGRect)bounds forCellStyle:(unint64_t)style
{
  v4 = 0.25;
  if (style == 1)
  {
    v4 = 0.5;
  }

  return bounds.size.width * v4;
}

@end