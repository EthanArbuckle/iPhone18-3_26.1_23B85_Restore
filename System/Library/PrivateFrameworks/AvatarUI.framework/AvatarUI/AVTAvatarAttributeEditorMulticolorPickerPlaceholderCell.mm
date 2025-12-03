@interface AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell
- (AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setItem:(id)item;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell

- (AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell;
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    labelFont = [objc_opt_class() labelFont];
    [(UILabel *)v3->_label setFont:labelFont];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:secondaryLabelColor];

    contentView = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)v3 contentView];
    [contentView addSubview:v3->_label];
  }

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell;
  [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)&v8 layoutSubviews];
  contentView = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self contentView];
  [contentView bounds];
  v4 = CGRectGetWidth(v9) + -20.0;
  contentView2 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self contentView];
  [contentView2 bounds];
  Height = CGRectGetHeight(v10);
  label = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self label];
  [label setFrame:{10.0, 0.0, v4, Height}];
}

- (void)setItem:(id)item
{
  itemCopy = item;
  if (self->_item != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(&self->_item, item);
    localizedName = [(AVTAvatarAttributeEditorSectionItem *)v8 localizedName];
    label = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self label];
    [label setText:localizedName];

    [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self setNeedsLayout];
    itemCopy = v8;
  }
}

@end