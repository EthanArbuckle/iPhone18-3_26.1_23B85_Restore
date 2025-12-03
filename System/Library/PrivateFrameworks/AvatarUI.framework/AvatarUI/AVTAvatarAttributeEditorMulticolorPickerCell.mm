@interface AVTAvatarAttributeEditorMulticolorPickerCell
+ (double)estimatedTitleSpaceForWidth:(double)width isRemovable:(BOOL)removable isSelected:(BOOL)selected;
+ (double)estimatedWidthForLabelSize:(CGSize)size isRemovable:(BOOL)removable isSelected:(BOOL)selected;
- (AVTAvatarAttributeEditorMulticolorPickerCell)initWithFrame:(CGRect)frame;
- (AVTAvatarAttributeEditorMulticolorPickerCellDelegate)delegate;
- (BOOL)isRTL;
- (BOOL)isRemovable;
- (BOOL)isShowingRemoveButton;
- (BOOL)shouldShowColorBorder;
- (void)applyAppearanceForSelected:(BOOL)selected;
- (void)applyDefaultAppearanceForStyle:(int64_t)style;
- (void)applySelectedAppearanceForStyle:(int64_t)style;
- (void)didTapClearButton:(id)button;
- (void)layoutForLTR;
- (void)layoutForRTL;
- (void)layoutSubviews;
- (void)setItem:(id)item;
- (void)setSelected:(BOOL)selected;
- (void)showDropShadow;
- (void)traitCollectionDidChange:(id)change;
- (void)updateColor;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerCell

+ (double)estimatedWidthForLabelSize:(CGSize)size isRemovable:(BOOL)removable isSelected:(BOOL)selected
{
  v5 = 0.0;
  if (removable && selected)
  {
    v5 = 27.0;
  }

  return size.width + 35.0 + v5 + 10.0;
}

+ (double)estimatedTitleSpaceForWidth:(double)width isRemovable:(BOOL)removable isSelected:(BOOL)selected
{
  v5 = 45.0;
  if (removable && selected)
  {
    v5 = 72.0;
  }

  return width - v5;
}

- (AVTAvatarAttributeEditorMulticolorPickerCell)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v6;

    labelFont = [objc_opt_class() labelFont];
    [(UILabel *)v3->_label setFont:labelFont];

    contentView = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 contentView];
    [contentView addSubview:v3->_label];

    layer = [MEMORY[0x1E6979398] layer];
    colorView = v3->_colorView;
    v3->_colorView = layer;

    [(CALayer *)v3->_colorView setMasksToBounds:1];
    contentView2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 contentView];
    layer2 = [contentView2 layer];
    [layer2 addSublayer:v3->_colorView];

    v14 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:1];
    v15 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
    v16 = [v14 configurationByApplyingConfiguration:v15];
    v17 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v16];
    v18 = [MEMORY[0x1E69DC738] systemButtonWithImage:v17 target:v3 action:sel_didTapClearButton_];
    clearButton = v3->_clearButton;
    v3->_clearButton = v18;

    v20 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_3];
    [(UIButton *)v3->_clearButton setTintColor:v20];

    contentView3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 contentView];
    [contentView3 addSubview:v3->_clearButton];

    [(UIButton *)v3->_clearButton setHidden:1];
    layer3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [layer3 setShadowRadius:15.0];

    v23 = *MEMORY[0x1E695F060];
    v24 = *(MEMORY[0x1E695F060] + 8);
    layer4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [layer4 setShadowOffset:{v23, v24}];

    layer5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [layer5 setMasksToBounds:0];

    v27 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v29 = [quaternarySystemFillColor resolvedColorWithTraitCollection:v27];
    cGColor = [v29 CGColor];
    layer6 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [layer6 setShadowColor:cGColor];

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 bounds];
    v38 = CGRectInset(v37, -3.0, -3.0);
    v32 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v38.origin.x, v38.origin.y, v38.size.width, v38.size.height}];
    cGPath = [v32 CGPath];
    layer7 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)v3 layer];
    [layer7 setShadowPath:cGPath];
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
  traitCollection = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

- (BOOL)isShowingRemoveButton
{
  isRemovable = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self isRemovable];
  if (isRemovable)
  {

    LOBYTE(isRemovable) = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected];
  }

  return isRemovable;
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
  layer = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
  LODWORD(v4) = 1.0;
  [layer setShadowOpacity:v4];

  [(AVTAvatarAttributeEditorMulticolorPickerCell *)self bounds];
  v11 = CGRectInset(v10, -3.0, -3.0);
  v8 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];
  v5 = v8;
  cGPath = [v8 CGPath];
  layer2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
  [layer2 setShadowPath:cGPath];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v13.receiver = self;
  v13.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v13 traitCollectionDidChange:changeCopy];
  traitCollection = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setBackgroundColor:systemBackgroundColor];

    layer = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
    [layer setShadowOpacity:0.0];

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self applyAppearanceForSelected:[(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected]];
  }

  traitCollection2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
  layoutDirection = [traitCollection2 layoutDirection];
  layoutDirection2 = [changeCopy layoutDirection];

  if (layoutDirection != layoutDirection2)
  {
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setNeedsLayout];
  }
}

- (void)layoutForRTL
{
  contentView = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView bounds];
  v4 = (CGRectGetHeight(v27) + -20.0) * 0.5;

  v5 = fmax(v4, 0.0);
  clearButton = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
  v7 = 10.0;
  [clearButton setFrame:{10.0, v5, 20.0, 20.0}];

  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isShowingRemoveButton])
  {
    clearButton2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [clearButton2 bounds];
    v10 = v9 + 7.0 + 10.0 + 35.0;
  }

  else
  {
    v10 = 45.0;
  }

  contentView2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView2 bounds];
  Width = CGRectGetWidth(v28);

  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isShowingRemoveButton])
  {
    clearButton3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [clearButton3 frame];
    v7 = CGRectGetMaxX(v29) + 7.0;
  }

  v14 = Width - v10;
  contentView3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView3 bounds];
  Height = CGRectGetHeight(v30);
  label = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [label setFrame:{v7, 0.0, v14, Height}];

  contentView4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView4 bounds];
  v19 = (CGRectGetHeight(v31) + -20.0) * 0.5;

  contentView5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView5 bounds];
  v21 = CGRectGetMaxX(v32) + -30.0;

  colorView = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView setFrame:{v21, fmax(v19, 0.0), 20.0, 20.0}];

  colorView2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView2 setCornerRadius:10.0];

  v24 = *MEMORY[0x1E69796E8];
  colorView3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView3 setCornerCurve:v24];
}

- (void)layoutForLTR
{
  contentView = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView bounds];
  v4 = (CGRectGetHeight(v25) + -20.0) * 0.5;

  colorView = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView setFrame:{10.0, fmax(v4, 0.0), 20.0, 20.0}];

  colorView2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView2 setCornerRadius:10.0];

  v7 = *MEMORY[0x1E69796E8];
  colorView3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView3 setCornerCurve:v7];

  contentView2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView2 bounds];
  v10 = (CGRectGetHeight(v26) + -20.0) * 0.5;

  contentView3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView3 bounds];
  v12 = CGRectGetMaxX(v27) + -30.0;
  clearButton = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
  [clearButton setFrame:{v12, fmax(v10, 0.0), 20.0, 20.0}];

  if ([(AVTAvatarAttributeEditorMulticolorPickerCell *)self isShowingRemoveButton])
  {
    clearButton2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [clearButton2 bounds];
    v16 = v15 + 7.0 + 10.0 + 35.0;
  }

  else
  {
    v16 = 45.0;
  }

  contentView4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView4 bounds];
  v18 = CGRectGetWidth(v28) - v16;

  colorView4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
  [colorView4 frame];
  v19 = CGRectGetMaxX(v29) + 5.0;
  contentView5 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self contentView];
  [contentView5 bounds];
  Height = CGRectGetHeight(v30);
  label = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [label setFrame:{v19, 0.0, v18, Height}];
}

- (void)didTapClearButton:(id)button
{
  delegate = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self delegate];
  [delegate multicolorPickerCellDidTapClearButton:self];
}

- (void)applyAppearanceForSelected:(BOOL)selected
{
  selectedCopy = selected;
  item = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];

  if (item)
  {
    item2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF30];
      item3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      [v8 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", item3}];
    }

    item4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    layer = item4;
    if (selectedCopy)
    {
      isRemovable = [item4 isRemovable];
      clearButton = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
      [clearButton setHidden:isRemovable ^ 1u];

      traitCollection = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
      -[AVTAvatarAttributeEditorMulticolorPickerCell applySelectedAppearanceForStyle:](self, "applySelectedAppearanceForStyle:", [traitCollection userInterfaceStyle]);
    }

    else
    {
      clearButton2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
      [clearButton2 setHidden:1];

      traitCollection = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
      -[AVTAvatarAttributeEditorMulticolorPickerCell applyDefaultAppearanceForStyle:](self, "applyDefaultAppearanceForStyle:", [traitCollection userInterfaceStyle]);
    }

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self updateColorViewBorder];
  }

  else
  {
    clearButton3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self clearButton];
    [clearButton3 setHidden:1];

    layer = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
    [layer setShadowOpacity:0.0];
  }
}

- (void)applySelectedAppearanceForStyle:(int64_t)style
{
  if (style == 2)
  {
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setBackgroundColor:systemFillColor];
  }

  else
  {
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self showDropShadow];
  }

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  label = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [label setTextColor:labelColor];
}

- (void)applyDefaultAppearanceForStyle:(int64_t)style
{
  if (style == 2)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self setBackgroundColor:systemBackgroundColor];
  }

  else
  {
    systemBackgroundColor = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self layer];
    [systemBackgroundColor setShadowOpacity:0.0];
  }

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  label = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
  [label setTextColor:secondaryLabelColor];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", itemCopy}];
  }

  v8 = itemCopy;
  if (self->_item != v8)
  {
    objc_storeStrong(&self->_item, item);
    localizedName = [(AVTAvatarAttributeEditorSectionItem *)v8 localizedName];
    label = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self label];
    [label setText:localizedName];

    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self updateColor];
    [(AVTAvatarAttributeEditorMulticolorPickerCell *)self applyAppearanceForSelected:[(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected]];
  }
}

- (void)updateColor
{
  item = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];

  if (item)
  {
    item2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v6 = MEMORY[0x1E695DF30];
      item3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      [v6 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", item3}];
    }

    item4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    variationStore = [item4 variationStore];
    colorItem = [item4 colorItem];
    color = [colorItem color];
    v11 = [variationStore colorPresetFromColor:color];

    colorItem2 = [item4 colorItem];
    layerContentProvider = [colorItem2 layerContentProvider];
    colorItem3 = [item4 colorItem];
    skinColor = [colorItem3 skinColor];
    colorView = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self colorView];
    (layerContentProvider)[2](layerContentProvider, v11, skinColor, colorView);
  }
}

- (BOOL)shouldShowColorBorder
{
  item = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
  if (item)
  {
    v4 = item;
    isSelected = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self isSelected];

    if (isSelected)
    {
      item2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v8 = MEMORY[0x1E695DF30];
        item3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
        [v8 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", item3}];
      }

      item4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
      colorItem = [item4 colorItem];
      identifier = [colorItem identifier];
      if ([identifier isEqualToString:@"Gray"])
      {
LABEL_6:
        v13 = 1;
LABEL_11:

LABEL_12:
        return v13;
      }

      identifier2 = [colorItem identifier];
      if ([identifier2 isEqualToString:@"White"])
      {
        goto LABEL_9;
      }

      identifier3 = [colorItem identifier];
      v17 = [identifier3 isEqualToString:@"Clear"];

      if (v17)
      {
        v13 = 1;
        goto LABEL_12;
      }

      traitCollection = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle != 2)
      {
        v13 = 0;
        goto LABEL_12;
      }

      identifier = [colorItem identifier];
      if ([identifier isEqualToString:@"Black"])
      {
        goto LABEL_6;
      }

      identifier2 = [colorItem identifier];
      if ([identifier2 isEqualToString:@"Soft Black"])
      {
LABEL_9:
        v13 = 1;
      }

      else
      {
        identifier4 = [colorItem identifier];
        v13 = [identifier4 isEqualToString:@"Dark"];
      }

      goto LABEL_11;
    }
  }

  return 0;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = AVTAvatarAttributeEditorMulticolorPickerCell;
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)&v5 setSelected:?];
  [(AVTAvatarAttributeEditorMulticolorPickerCell *)self applyAppearanceForSelected:selectedCopy];
}

- (BOOL)isRemovable
{
  item = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];

  if (!item)
  {
    return 0;
  }

  item2 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = MEMORY[0x1E695DF30];
    item3 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
    [v6 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", item3}];
  }

  item4 = [(AVTAvatarAttributeEditorMulticolorPickerCell *)self item];
  isRemovable = [item4 isRemovable];

  return isRemovable;
}

- (AVTAvatarAttributeEditorMulticolorPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end