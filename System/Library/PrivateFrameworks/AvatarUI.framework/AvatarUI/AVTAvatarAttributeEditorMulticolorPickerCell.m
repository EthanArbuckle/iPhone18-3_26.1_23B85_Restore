@interface AVTAvatarAttributeEditorMulticolorPickerCell
+ (double)estimatedTitleSpaceForWidth:(double)a3 isRemovable:(BOOL)a4 isSelected:(BOOL)a5;
+ (double)estimatedWidthForLabelSize:(CGSize)a3 isRemovable:(BOOL)a4 isSelected:(BOOL)a5;
- (AVTAvatarAttributeEditorMulticolorPickerCell)initWithFrame:(CGRect)a3;
- (AVTAvatarAttributeEditorMulticolorPickerCellDelegate)delegate;
- (BOOL)isRTL;
- (BOOL)isRemovable;
- (BOOL)isShowingRemoveButton;
- (BOOL)shouldShowColorBorder;
- (void)applyAppearanceForSelected:(BOOL)a3;
- (void)applyDefaultAppearanceForStyle:(int64_t)a3;
- (void)applySelectedAppearanceForStyle:(int64_t)a3;
- (void)didTapClearButton:(id)a3;
- (void)layoutForLTR;
- (void)layoutForRTL;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)showDropShadow;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateColor;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerCell

+ (double)estimatedWidthForLabelSize:(CGSize)a3 isRemovable:(BOOL)a4 isSelected:(BOOL)a5
{
  v5 = 0.0;
  if (a4 && a5)
  {
    v5 = 27.0;
  }

  return a3.width + 35.0 + v5 + 10.0;
}

+ (double)estimatedTitleSpaceForWidth:(double)a3 isRemovable:(BOOL)a4 isSelected:(BOOL)a5
{
  v5 = 45.0;
  if (a4 && a5)
  {
    v5 = 72.0;
  }

  return a3 - v5;
}

- (AVTAvatarAttributeEditorMulticolorPickerCell)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 setBackgroundColor:v4];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v6;

    v8 = [objc_opt_class() labelFont];
    [(UILabel *)v3->_label setFont:v8];

    v9 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 contentView];
    [v9 addSubview:v3->_label];

    v10 = [MEMORY[0x1E6979398] layer];
    colorView = v3->_colorView;
    v3->_colorView = v10;

    [(CALayer *)v3->_colorView setMasksToBounds:1];
    v12 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 contentView];
    v13 = [v12 layer];
    [v13 addSublayer:v3->_colorView];

    v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:1];
    v15 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v16 = [v14 configurationByApplyingConfiguration:v15];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v16];
    v18 = [MEMORY[0x1E69DC738] systemButtonWithImage:v17 target:v3 action:sel_didTapClearButton_];
    clearButton = v3->_clearButton;
    v3->_clearButton = v18;

    v20 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_3];
    [(UIButton *)v3->_clearButton setTintColor:v20];

    v21 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 contentView];
    [v21 addSubview:v3->_clearButton];

    [(UIButton *)v3->_clearButton setHidden:1];
    v22 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [v22 setShadowRadius:15.0];

    v23 = *MEMORY[0x1E695F060];
    v24 = *(MEMORY[0x1E695F060] + 8);
    v25 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [v25 setShadowOffset:{v23, v24}];

    v26 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [v26 setMasksToBounds:0];

    v27 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v28 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v29 = [v28 resolvedColorWithTraitCollection:v27];
    v30 = [v29 CGColor];
    v31 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [v31 setShadowColor:v30];

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 bounds];
    v38 = CGRectInset(v37, -3.0, -3.0);
    v32 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
    v33 = [v32 CGPath];
    v34 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [v34 setShadowPath:v33];
  }

  return v3;
}

id __62__AVTAvatarAttributeEditorMulticolorPickerCell_initWithFrame___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

- (BOOL)isRTL
{
  v2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
  v3 = [v2 layoutDirection] == 1;

  return v3;
}

- (BOOL)isShowingRemoveButton
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self isRemovable];
  if (v3)
  {

    LOBYTE(v3) = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v3 layoutSubviews];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isRTL])
  {
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layoutForRTL];
  }

  else
  {
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layoutForLTR];
  }

  [MEMORY[0x1E6979518] commit];
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)self bounds];
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)self _setContinuousCornerRadius:CGRectGetHeight(v4) * 0.5];
}

- (void)showDropShadow
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
  LODWORD(v4) = 1.0;
  [v3 setShadowOpacity:v4];

  [(AVTAvatarAttributeEditorMulticolorPickerCell *)self bounds];
  v11 = CGRectInset(v10, -3.0, -3.0);
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];
  v5 = v8;
  v6 = [v8 CGPath];
  v7 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
  [v7 setShadowPath:v6];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v13 traitCollectionDidChange:v4];
  v5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setBackgroundColor:v8];

    v9 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
    [v9 setShadowOpacity:0.0];

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self applyAppearanceForSelected:[(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected]];
  }

  v10 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
  v11 = [v10 layoutDirection];
  v12 = [v4 layoutDirection];

  if (v11 != v12)
  {
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setNeedsLayout];
  }
}

- (void)layoutForRTL
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v3 bounds];
  v4 = (CGRectGetHeight(v27) + -20.0) * 0.5;

  v5 = fmax(v4, 0.0);
  v6 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
  v7 = 10.0;
  [v6 setFrame:{10.0, v5, 20.0, 20.0}];

  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isShowingRemoveButton])
  {
    v8 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [v8 bounds];
    v10 = v9 + 7.0 + 10.0 + 35.0;
  }

  else
  {
    v10 = 45.0;
  }

  v11 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v11 bounds];
  Width = CGRectGetWidth(v28);

  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isShowingRemoveButton])
  {
    v13 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [v13 frame];
    v7 = CGRectGetMaxX(v29) + 7.0;
  }

  v14 = Width - v10;
  v15 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v15 bounds];
  Height = CGRectGetHeight(v30);
  v17 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [v17 setFrame:{v7, 0.0, v14, Height}];

  v18 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v18 bounds];
  v19 = (CGRectGetHeight(v31) + -20.0) * 0.5;

  v20 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v20 bounds];
  v21 = CGRectGetMaxX(v32) + -30.0;

  v22 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v22 setFrame:{v21, fmax(v19, 0.0), 20.0, 20.0}];

  v23 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v23 setCornerRadius:10.0];

  v24 = *MEMORY[0x1E69796E8];
  v25 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v25 setCornerCurve:v24];
}

- (void)layoutForLTR
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v3 bounds];
  v4 = (CGRectGetHeight(v25) + -20.0) * 0.5;

  v5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v5 setFrame:{10.0, fmax(v4, 0.0), 20.0, 20.0}];

  v6 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v6 setCornerRadius:10.0];

  v7 = *MEMORY[0x1E69796E8];
  v8 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v8 setCornerCurve:v7];

  v9 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v9 bounds];
  v10 = (CGRectGetHeight(v26) + -20.0) * 0.5;

  v11 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v11 bounds];
  v12 = CGRectGetMaxX(v27) + -30.0;
  v13 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
  [v13 setFrame:{v12, fmax(v10, 0.0), 20.0, 20.0}];

  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isShowingRemoveButton])
  {
    v14 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [v14 bounds];
    v16 = v15 + 7.0 + 10.0 + 35.0;
  }

  else
  {
    v16 = 45.0;
  }

  v17 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v17 bounds];
  v18 = CGRectGetWidth(v28) - v16;

  v23 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [v23 frame];
  v19 = CGRectGetMaxX(v29) + 5.0;
  v20 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [v20 bounds];
  Height = CGRectGetHeight(v30);
  v22 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [v22 setFrame:{v19, 0.0, v18, Height}];
}

- (void)didTapClearButton:(id)a3
{
  v4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self delegate];
  [v4 multicolorPickerCellDidTapClearButton:self];
}

- (void)applyAppearanceForSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];

  if (v5)
  {
    v6 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      [v8 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v9}];
    }

    v10 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    v16 = v10;
    if (v3)
    {
      v11 = [v10 isRemovable];
      v12 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
      [v12 setHidden:v11 ^ 1u];

      v13 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
      -[AVTAvatarAttributeEditorMulticolorPickerCell applySelectedAppearanceForStyle:](self, "applySelectedAppearanceForStyle:", [v13 userInterfaceStyle]);
    }

    else
    {
      v15 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
      [v15 setHidden:1];

      v13 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
      -[AVTAvatarAttributeEditorMulticolorPickerCell applyDefaultAppearanceForStyle:](self, "applyDefaultAppearanceForStyle:", [v13 userInterfaceStyle]);
    }

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self updateColorViewBorder];
  }

  else
  {
    v14 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [v14 setHidden:1];

    v16 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
    [v16 setShadowOpacity:0.0];
  }
}

- (void)applySelectedAppearanceForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = [MEMORY[0x1E69DC888] systemFillColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setBackgroundColor:v4];
  }

  else
  {
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self showDropShadow];
  }

  v6 = [MEMORY[0x1E69DC888] labelColor];
  v5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [v5 setTextColor:v6];
}

- (void)applyDefaultAppearanceForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setBackgroundColor:v4];
  }

  else
  {
    v4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
    [v4 setShadowOpacity:0.0];
  }

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [v5 setTextColor:v6];
}

- (void)setItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v5}];
  }

  v8 = v5;
  if (self->_item != v8)
  {
    objc_storeStrong(&self->_item, a3);
    v6 = [(AVTAvatarAttributeEditorSectionItem *)v8 localizedName];
    v7 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
    [v7 setText:v6];

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self updateColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self applyAppearanceForSelected:[(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected]];
  }
}

- (void)updateColor
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];

  if (v3)
  {
    v4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      [v6 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v7}];
    }

    v17 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    v8 = [v17 variationStore];
    v9 = [v17 colorItem];
    v10 = [v9 color];
    v11 = [v8 colorPresetFromColor:v10];

    v12 = [v17 colorItem];
    v13 = [v12 layerContentProvider];
    v14 = [v17 colorItem];
    v15 = [v14 skinColor];
    v16 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
    (v13)[2](v13, v11, v15, v16);
  }
}

- (BOOL)shouldShowColorBorder
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
  if (v3)
  {
    v4 = v3;
    v5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected];

    if (v5)
    {
      v6 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v8 = MEMORY[0x1E695DF30];
        v9 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
        [v8 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v9}];
      }

      v10 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      v11 = [v10 colorItem];
      v12 = [v11 identifier];
      if ([v12 isEqualToString:@"Gray"])
      {
LABEL_6:
        v13 = 1;
LABEL_11:

LABEL_12:
        return v13;
      }

      v14 = [v11 identifier];
      if ([v14 isEqualToString:@"White"])
      {
        goto LABEL_9;
      }

      v16 = [v11 identifier];
      v17 = [v16 isEqualToString:@"Clear"];

      if (v17)
      {
        v13 = 1;
        goto LABEL_12;
      }

      v18 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
      v19 = [v18 userInterfaceStyle];

      if (v19 != 2)
      {
        v13 = 0;
        goto LABEL_12;
      }

      v12 = [v11 identifier];
      if ([v12 isEqualToString:@"Black"])
      {
        goto LABEL_6;
      }

      v14 = [v11 identifier];
      if ([v14 isEqualToString:@"Soft Black"])
      {
LABEL_9:
        v13 = 1;
      }

      else
      {
        v20 = [v11 identifier];
        v13 = [v20 isEqualToString:@"Dark"];
      }

      goto LABEL_11;
    }
  }

  return 0;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v5 setSelected:?];
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)self applyAppearanceForSelected:v3];
}

- (BOOL)isRemovable
{
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];

  if (!v3)
  {
    return 0;
  }

  v4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    [v6 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v7}];
  }

  v8 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
  v9 = [v8 isRemovable];

  return v9;
}

- (AVTAvatarAttributeEditorMulticolorPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end