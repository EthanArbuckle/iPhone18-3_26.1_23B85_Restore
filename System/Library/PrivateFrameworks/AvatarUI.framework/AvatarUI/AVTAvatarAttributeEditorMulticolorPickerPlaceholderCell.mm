@interface AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell
- (AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setItem:(id)a3;
@end

@implementation AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell

- (AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell;
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    v7 = [objc_opt_class() labelFont];
    [(UILabel *)v3->_label setFont:v7];

    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_label setTextColor:v8];

    v9 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)v3 contentView];
    [v9 addSubview:v3->_label];
  }

  return v3;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell;
  [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)&v8 layoutSubviews];
  v3 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self contentView];
  [v3 bounds];
  v4 = CGRectGetWidth(v9) + -20.0;
  v5 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self contentView];
  [v5 bounds];
  Height = CGRectGetHeight(v10);
  v7 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self label];
  [v7 setFrame:{10.0, 0.0, v4, Height}];
}

- (void)setItem:(id)a3
{
  v5 = a3;
  if (self->_item != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_item, a3);
    v6 = [(AVTAvatarAttributeEditorSectionItem *)v8 localizedName];
    v7 = [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self label];
    [v7 setText:v6];

    [(AVTAvatarAttributeEditorMulticolorPickerPlaceholderCell *)self setNeedsLayout];
    v5 = v8;
  }
}

@end