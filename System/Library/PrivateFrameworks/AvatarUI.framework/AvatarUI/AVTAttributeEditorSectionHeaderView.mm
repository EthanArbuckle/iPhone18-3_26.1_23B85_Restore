@interface AVTAttributeEditorSectionHeaderView
- (AVTAttributeEditorSectionHeaderView)initWithFrame:(CGRect)frame;
- (AVTAttributeEditorSectionHeaderViewDelegate)delegate;
- (NSString)displayString;
- (id)chevronImage;
- (void)createAccessoryButtonIfNeeded;
- (void)layoutSubviews;
- (void)setDisplayString:(id)string;
- (void)setSupplementalPicker:(id)picker;
- (void)traitCollectionDidChange:(id)change;
- (void)updateButtonForSelectedSectionItem;
- (void)updateMenu;
@end

@implementation AVTAttributeEditorSectionHeaderView

- (AVTAttributeEditorSectionHeaderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = AVTAttributeEditorSectionHeaderView;
  v3 = [(AVTAttributeEditorSectionHeaderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(AVTAttributeEditorSectionHeaderView *)v3 setBackgroundColor:clearColor];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    label = v3->_label;
    v3->_label = v6;

    [(UILabel *)v3->_label setNumberOfLines:2];
    [(AVTAttributeEditorSectionHeaderView *)v3 addSubview:v3->_label];
  }

  return v3;
}

- (void)createAccessoryButtonIfNeeded
{
  accessoryButton = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];

  if (!accessoryButton)
  {
    v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
    [(AVTAttributeEditorSectionHeaderView *)self setAccessoryButton:v4];

    accessoryButton2 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
    [accessoryButton2 setShowsMenuAsPrimaryAction:1];

    accessoryButton3 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
    titleLabel = [accessoryButton3 titleLabel];
    [titleLabel setLineBreakMode:2];

    accessoryButton4 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
    [(AVTAttributeEditorSectionHeaderView *)self addSubview:accessoryButton4];
  }
}

- (void)updateMenu
{
  v23 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  supplementalPicker = [(AVTAttributeEditorSectionHeaderView *)self supplementalPicker];
  choices = [supplementalPicker choices];

  obj = choices;
  v6 = [choices countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = MEMORY[0x1E69DC628];
        localizedName = [v10 localizedName];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __49__AVTAttributeEditorSectionHeaderView_updateMenu__block_invoke;
        v17[3] = &unk_1E7F3B7A8;
        v17[4] = self;
        v17[5] = v10;
        v13 = [v11 actionWithTitle:localizedName image:0 identifier:0 handler:v17];

        if ([v10 isSelected])
        {
          [v13 setState:1];
        }

        [array addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v14 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F39618F0 children:array];
  accessoryButton = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
  [accessoryButton setMenu:v14];
}

void __49__AVTAttributeEditorSectionHeaderView_updateMenu__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 supplementalPicker];
  v5 = [*(a1 + 32) accessoryButton];
  [v6 sectionHeaderView:v2 didSelectItem:v3 forPicker:v4 sender:v5];
}

- (void)setDisplayString:(id)string
{
  v4 = [string copy];
  label = [(AVTAttributeEditorSectionHeaderView *)self label];
  [label setText:v4];

  v7 = +[AVTUIFontRepository attributeTitleFont];
  label2 = [(AVTAttributeEditorSectionHeaderView *)self label];
  [label2 setFont:v7];
}

- (NSString)displayString
{
  label = [(AVTAttributeEditorSectionHeaderView *)self label];
  text = [label text];

  return text;
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = AVTAttributeEditorSectionHeaderView;
  [(AVTAttributeEditorSectionHeaderView *)&v5 traitCollectionDidChange:change];
  accessoryButton = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];

  if (accessoryButton)
  {
    [(AVTAttributeEditorSectionHeaderView *)self updateButtonForSelectedSectionItem];
  }
}

- (void)layoutSubviews
{
  label = [(AVTAttributeEditorSectionHeaderView *)self label];
  font = [label font];
  [font _scaledValueForValue:18.0];
  v6 = v5;

  v7 = fmin(v6, 30.0);
  [(AVTAttributeEditorSectionHeaderView *)self bounds];
  v8 = CGRectGetMaxY(v20) + 12.0 + v7 * -2.0;
  accessoryButton = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];

  if (accessoryButton)
  {
    accessoryButton2 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
    [accessoryButton2 intrinsicContentSize];
    v12 = v11;

    [(AVTAttributeEditorSectionHeaderView *)self bounds];
    v13 = CGRectGetMaxX(v21) - v12 + -20.0;
    if ([(AVTAttributeEditorSectionHeaderView *)self isRTL])
    {
      v13 = 20.0;
    }

    accessoryButton3 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
    [accessoryButton3 setFrame:{v13, v7, v12, v8}];

    v15 = v12 + 20.0;
  }

  else
  {
    v15 = 0.0;
  }

  [(AVTAttributeEditorSectionHeaderView *)self bounds];
  v16 = CGRectGetMaxX(v22) + -40.0 - v15;
  if ([(AVTAttributeEditorSectionHeaderView *)self isRTL])
  {
    v17 = v15 + 20.0;
  }

  else
  {
    v17 = 20.0;
  }

  label2 = [(AVTAttributeEditorSectionHeaderView *)self label];
  [label2 setFrame:{v17, v7, v16, v8}];

  v19.receiver = self;
  v19.super_class = AVTAttributeEditorSectionHeaderView;
  [(AVTAttributeEditorSectionHeaderView *)&v19 layoutSubviews];
}

- (void)setSupplementalPicker:(id)picker
{
  pickerCopy = picker;
  if (self->_supplementalPicker != pickerCopy)
  {
    v8 = pickerCopy;
    objc_storeStrong(&self->_supplementalPicker, picker);
    if (v8)
    {
      [(AVTAttributeEditorSectionHeaderView *)self createAccessoryButtonIfNeeded];
      [(AVTAttributeEditorSectionHeaderView *)self updateMenu];
      [(AVTAttributeEditorSectionHeaderView *)self updateButtonForSelectedSectionItem];
    }

    else
    {
      accessoryButton = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];

      pickerCopy = 0;
      if (!accessoryButton)
      {
        goto LABEL_7;
      }

      accessoryButton2 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
      [accessoryButton2 removeFromSuperview];

      [(AVTAttributeEditorSectionHeaderView *)self setAccessoryButton:0];
    }

    pickerCopy = v8;
  }

LABEL_7:
}

- (void)updateButtonForSelectedSectionItem
{
  v24[1] = *MEMORY[0x1E69E9840];
  supplementalPicker = [(AVTAttributeEditorSectionHeaderView *)self supplementalPicker];
  choices = [supplementalPicker choices];
  v5 = [choices count];

  if (v5 <= 1)
  {
    accessoryButton = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
    [accessoryButton removeFromSuperview];

    [(AVTAttributeEditorSectionHeaderView *)self setAccessoryButton:0];
  }

  v7 = +[AVTUIFontRepository attributeTitleButtonFont];
  v8 = objc_alloc(MEMORY[0x1E696AD40]);
  supplementalPicker2 = [(AVTAttributeEditorSectionHeaderView *)self supplementalPicker];
  localizedTitle = [supplementalPicker2 localizedTitle];
  v23 = *MEMORY[0x1E69DB648];
  v24[0] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v12 = [v8 initWithString:localizedTitle attributes:v11];

  v13 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v13 setBounds:{0.0, 0.0, 4.0, 4.0}];
  v14 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  [v13 setImage:v14];

  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  v16 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  chevronImage = [(AVTAttributeEditorSectionHeaderView *)self chevronImage];
  [v16 setImage:chevronImage];

  v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
  v19 = [v18 mutableCopy];

  if ([(AVTAttributeEditorSectionHeaderView *)self isRTL])
  {
    [v12 insertAttributedString:v19 atIndex:0];
    [v12 insertAttributedString:v15 atIndex:1];
  }

  else
  {
    [v12 appendAttributedString:v15];
    [v12 appendAttributedString:v19];
  }

  v20 = *MEMORY[0x1E69DB650];
  tintColor = [(AVTAttributeEditorSectionHeaderView *)self tintColor];
  [v12 addAttribute:v20 value:tintColor range:{0, objc_msgSend(v12, "length")}];

  accessoryButton2 = [(AVTAttributeEditorSectionHeaderView *)self accessoryButton];
  [accessoryButton2 setAttributedTitle:v12 forState:0];

  [(AVTAttributeEditorSectionHeaderView *)self setNeedsLayout];
}

- (id)chevronImage
{
  v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.down" withConfiguration:v3];
  tintColor = [(AVTAttributeEditorSectionHeaderView *)self tintColor];
  v6 = [v4 imageWithTintColor:tintColor];

  return v6;
}

- (AVTAttributeEditorSectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end