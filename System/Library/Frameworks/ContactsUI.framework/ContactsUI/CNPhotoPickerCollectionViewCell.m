@interface CNPhotoPickerCollectionViewCell
+ (CGPath)selectionPathInBounds:(CGRect)a3 forCellStyle:(unint64_t)a4;
+ (double)cornerRadiusForBounds:(CGRect)a3 forCellStyle:(unint64_t)a4;
- (CNPhotoPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)clearContainerViewAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setCellStyle:(unint64_t)a3;
- (void)setDisplaysBorder:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)updateBorderTintColor:(id)a3;
- (void)updateCaptionFrame;
- (void)updateWithCaption:(id)a3;
- (void)updateWithView:(id)a3 animation:(unint64_t)a4;
@end

@implementation CNPhotoPickerCollectionViewCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerCollectionViewCell;
  [(CNPhotoPickerCollectionViewCell *)&v4 prepareForReuse];
  [(CNPhotoPickerCollectionViewCell *)self clearContainerViewAnimated:0 withCompletion:0];
  [(CNPhotoPickerCollectionViewCell *)self setContainerContentView:0];
  v3 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
  [v3 setHidden:1];

  [(CNPhotoPickerCollectionViewCell *)self setDisplaysBorder:0];
  [(CNPhotoPickerCollectionViewCell *)self setDisplaySelection:0];
  [(CNPhotoPickerCollectionViewCell *)self setCellStyle:1];
}

- (void)clearContainerViewAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E6996530];
  v8 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  v9 = [v8 subviews];
  LODWORD(v7) = (*(v7 + 16))(v7, v9);

  if (!v7)
  {
    if (v4)
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
      v13 = v6;
      [v10 animateWithDuration:v14 animations:v12 completion:0.15];

      goto LABEL_7;
    }

    v11 = [(CNPhotoPickerCollectionViewCell *)self containerContentView];
    [v11 removeFromSuperview];

    [(CNPhotoPickerCollectionViewCell *)self setContainerContentView:0];
  }

  if (v6)
  {
    v6[2](v6);
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

- (void)updateBorderTintColor:(id)a3
{
  v8 = [a3 colorWithAlphaComponent:0.25];
  v4 = v8;
  v5 = [v8 CGColor];
  v6 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  v7 = [v6 layer];
  [v7 setBorderColor:v5];
}

- (void)setDisplaysBorder:(BOOL)a3
{
  if (self->_displaysBorder != a3)
  {
    self->_displaysBorder = a3;
    if (a3)
    {
      v5 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v5 scale];
      v7 = 2.0 / v6;
      v8 = [(CNPhotoPickerCollectionViewCell *)self containerView];
      v9 = [v8 layer];
      [v9 setBorderWidth:v7];

      v14 = [(CNPhotoPickerCollectionViewCell *)self tintColor];
      v10 = [v14 colorWithAlphaComponent:0.25];
      v11 = [v10 CGColor];
      v12 = [(CNPhotoPickerCollectionViewCell *)self containerView];
      v13 = [v12 layer];
      [v13 setBorderColor:v11];
    }

    else
    {
      v14 = [(CNPhotoPickerCollectionViewCell *)self containerView];
      v10 = [v14 layer];
      [v10 setBorderWidth:0.0];
    }
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v15.receiver = self;
  v15.super_class = CNPhotoPickerCollectionViewCell;
  [(CNPhotoPickerCollectionViewCell *)&v15 setSelected:?];
  if (v3)
  {
    v5 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];

    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
      v7 = +[CNUIColorRepository photoPickerSelectionBorderColor];
      -[CAShapeLayer setStrokeColor:](v6, "setStrokeColor:", [v7 CGColor]);

      [(CAShapeLayer *)v6 setLineWidth:3.0];
      v8 = [MEMORY[0x1E69DC888] clearColor];
      -[CAShapeLayer setFillColor:](v6, "setFillColor:", [v8 CGColor]);

      [(CAShapeLayer *)v6 setHidden:1];
      selectionLayer = self->_selectionLayer;
      self->_selectionLayer = v6;
      v10 = v6;

      v11 = [(CNPhotoPickerCollectionViewCell *)self contentView];
      v12 = [v11 layer];
      [v12 addSublayer:v10];
    }
  }

  v13 = [(CNPhotoPickerCollectionViewCell *)self displaySelection]&& v3;
  v14 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
  [v14 setHidden:v13 ^ 1u];
}

- (void)updateCaptionFrame
{
  v3 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [v3 sizeToFit];

  v4 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(CNPhotoPickerCollectionViewCell *)self contentView];
  [v13 bounds];
  v15 = v14;

  if (v10 > v15)
  {
    v16 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    v17 = [v16 font];
    [v17 lineHeight];
    v19 = v18;
    v20 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    v12 = v19 * [v20 numberOfLines];
  }

  v21 = [(CNPhotoPickerCollectionViewCell *)self contentView];
  [v21 bounds];
  v23 = v22;

  v24 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [v24 setFrame:{v6, v8, v23, v12}];

  v37 = [(CNPhotoPickerCollectionViewCell *)self contentView];
  [v37 center];
  v26 = v25;
  v27 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [v27 frame];
  v29 = v28;
  v30 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [v30 bounds];
  v32 = v29 + v31;
  v33 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [v33 bounds];
  v35 = v32 + v34 * 0.5 + 8.0;
  v36 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [v36 setCenter:{v26, v35}];
}

- (void)updateWithCaption:(id)a3
{
  v4 = a3;
  v5 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC10]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNPhotoPickerCollectionViewCell *)self setCaptionLabel:v7];

    v8 = +[CNUIFontRepository contactCardPhotoPickerCaptionFont];
    v9 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v9 setFont:v8];

    v10 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v10 setAdjustsFontForContentSizeCategory:1];

    v11 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v11 setNumberOfLines:2];

    v12 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v12 setTextAlignment:1];

    LODWORD(v12) = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v13 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v13 setAdjustsFontSizeToFitWidth:1];

    if (v12)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = 0.7;
    }

    v15 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v15 setMinimumScaleFactor:v14];

    v16 = [(CNPhotoPickerCollectionViewCell *)self contentView];
    v17 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
    [v16 addSubview:v17];
  }

  v18 = [(CNPhotoPickerCollectionViewCell *)self captionLabel];
  [v18 setText:v4];

  [(CNPhotoPickerCollectionViewCell *)self updateCaptionFrame];
}

- (void)updateWithView:(id)a3 animation:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 1)
  {
    [v6 setAlpha:0.0];
    v9 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [v9 frame];
    [v7 setFrame:?];

    v10 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [v10 addSubview:v7];

    [(CNPhotoPickerCollectionViewCell *)self setContainerContentView:v7];
    v11 = [(CNPhotoPickerCollectionViewCell *)self displaySessionUUID];
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
    v17 = v11;
    v18 = v20;
    v13 = v11;
    [v12 animateWithDuration:v19 animations:v16 completion:0.5];
  }

  else
  {
    if (a4 == 2)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__CNPhotoPickerCollectionViewCell_updateWithView_animation___block_invoke;
      v21[3] = &unk_1E74E77C0;
      v22 = v6;
      v23 = self;
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
      v15 = v6;
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

- (void)setCellStyle:(unint64_t)a3
{
  if (self->_cellStyle != a3)
  {
    self->_cellStyle = a3;
    [(CNPhotoPickerCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = CNPhotoPickerCollectionViewCell;
  [(CNPhotoPickerCollectionViewCell *)&v36 layoutSubviews];
  v3 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [v3 bounds];
  v5 = v4;
  v6 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [v6 bounds];
  v8 = v7;

  if (v5 != v8)
  {
    v9 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [v16 setFrame:{v11, v13, v15, v15}];
  }

  v17 = objc_opt_class();
  v18 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  [v18 bounds];
  [v17 cornerRadiusForBounds:-[CNPhotoPickerCollectionViewCell cellStyle](self forCellStyle:{"cellStyle"), v19, v20, v21, v22}];
  v24 = v23;
  v25 = [(CNPhotoPickerCollectionViewCell *)self containerView];
  v26 = [v25 layer];
  [v26 setCornerRadius:v24];

  v27 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
  LOBYTE(v18) = [v27 isHidden];

  if ((v18 & 1) == 0)
  {
    v28 = objc_opt_class();
    v29 = [(CNPhotoPickerCollectionViewCell *)self containerView];
    [v29 bounds];
    v34 = [v28 selectionPathInBounds:-[CNPhotoPickerCollectionViewCell cellStyle](self forCellStyle:{"cellStyle"), v30, v31, v32, v33}];
    v35 = [(CNPhotoPickerCollectionViewCell *)self selectionLayer];
    [v35 setPath:v34];
  }

  [(CNPhotoPickerCollectionViewCell *)self updateCaptionFrame];
}

- (CNPhotoPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = CNPhotoPickerCollectionViewCell;
  v3 = [(CNPhotoPickerCollectionViewCell *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [(CNPhotoPickerCollectionViewCell *)v3 contentView];
    [v5 bounds];
    v7 = v6;
    v8 = [(CNPhotoPickerCollectionViewCell *)v3 contentView];
    [v8 bounds];
    v10 = [v4 initWithFrame:{0.0, 0.0, v7, v9}];
    containerView = v3->_containerView;
    v3->_containerView = v10;

    [(UIView *)v3->_containerView setClipsToBounds:1];
    v12 = [(UIView *)v3->_containerView layer];
    [v12 setMasksToBounds:1];

    [(UIView *)v3->_containerView setAutoresizingMask:18];
    v13 = [(CNPhotoPickerCollectionViewCell *)v3 contentView];
    [v13 addSubview:v3->_containerView];

    v14 = v3;
  }

  return v3;
}

+ (CGPath)selectionPathInBounds:(CGRect)a3 forCellStyle:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = CGRectInset(a3, -6.0, -6.0);
  v10 = v19.origin.x;
  v11 = v19.origin.y;
  v12 = v19.size.width;
  v13 = v19.size.height;
  v14 = MEMORY[0x1E69DC728];
  if (a4 == 1)
  {
    [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
  }

  else
  {
    [a1 cornerRadiusForBounds:a4 forCellStyle:{x, y, width, height}];
    [v14 bezierPathWithRoundedRect:v10 cornerRadius:{v11, v12, v13, v15}];
  }
  v16 = ;
  v17 = [v16 CGPath];

  return v17;
}

+ (double)cornerRadiusForBounds:(CGRect)a3 forCellStyle:(unint64_t)a4
{
  v4 = 0.25;
  if (a4 == 1)
  {
    v4 = 0.5;
  }

  return a3.size.width * v4;
}

@end