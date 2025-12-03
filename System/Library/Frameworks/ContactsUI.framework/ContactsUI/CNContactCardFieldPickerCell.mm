@interface CNContactCardFieldPickerCell
+ (double)estimatedHeightDisplayingValue:(BOOL)value;
- (CNContactCardFieldPickerCell)init;
- (id)attributedDisplayText;
- (void)setConfiguration;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation CNContactCardFieldPickerCell

- (id)attributedDisplayText
{
  v33[2] = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = *MEMORY[0x1E69DB650];
  v32[0] = *MEMORY[0x1E69DB648];
  v32[1] = v5;
  v33[0] = v3;
  v33[1] = secondaryLabelColor;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v7 = *MEMORY[0x1E6996570];
  item = [(CNContactCardFieldPickerCell *)self item];
  displayLabel = [item displayLabel];
  v10 = (*(v7 + 16))(v7, displayLabel);

  if ((v10 & 1) == 0)
  {
    v17 = CNUILogContactCard();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_6:
      v18 = v29;
      goto LABEL_8;
    }

LABEL_12:
    item2 = [(CNContactCardFieldPickerCell *)self item];
    *buf = 138543362;
    v31 = item2;
    _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Contact card field picker failed to display item %{public}@", buf, 0xCu);

    goto LABEL_6;
  }

  if ([(CNContactCardFieldPickerCell *)self displaysValue])
  {
    item3 = [(CNContactCardFieldPickerCell *)self item];
    displayValue = [item3 displayValue];
    v13 = (*(v7 + 16))(v7, displayValue);

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AD40]);
      item4 = [(CNContactCardFieldPickerCell *)self item];
      displayLabel2 = [item4 displayLabel];
      v17 = [v14 initWithString:displayLabel2 attributes:v6];

      v18 = v29;
      [v29 appendAttributedString:v17];
      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v6];
      [v29 appendAttributedString:v19];
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      item5 = [(CNContactCardFieldPickerCell *)self item];
      displayValue2 = [item5 displayValue];
      v23 = [v20 initWithString:displayValue2 attributes:MEMORY[0x1E695E0F8]];

      [v29 appendAttributedString:v23];
      goto LABEL_8;
    }

    v17 = CNUILogContactCard();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v24 = objc_alloc(MEMORY[0x1E696AAB0]);
  item6 = [(CNContactCardFieldPickerCell *)self item];
  displayLabel3 = [item6 displayLabel];
  v17 = [v24 initWithString:displayLabel3 attributes:MEMORY[0x1E695E0F8]];

  v18 = v29;
  [v29 appendAttributedString:v17];
LABEL_8:

  return v18;
}

- (void)setConfiguration
{
  defaultContentConfiguration = [(CNContactCardFieldPickerCell *)self defaultContentConfiguration];
  if ([(CNContactCardFieldPickerCell *)self isSelected])
  {
    v3 = @"checkmark.circle.fill";
  }

  else
  {
    v3 = @"circle";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  [defaultContentConfiguration setImage:v4];

  attributedDisplayText = [(CNContactCardFieldPickerCell *)self attributedDisplayText];
  [defaultContentConfiguration setAttributedText:attributedDisplayText];

  [(CNContactCardFieldPickerCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = CNContactCardFieldPickerCell;
  [(CNContactCardFieldPickerCell *)&v5 setSelected:selected animated:animated];
  [(CNContactCardFieldPickerCell *)self setConfiguration];
}

- (CNContactCardFieldPickerCell)init
{
  v6.receiver = self;
  v6.super_class = CNContactCardFieldPickerCell;
  v2 = [(CNContactCardFieldPickerCell *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_displaysValue = 1;
    v4 = v2;
  }

  return v3;
}

+ (double)estimatedHeightDisplayingValue:(BOOL)value
{
  valueCopy = value;
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  [v4 lineHeight];
  v7 = ceil(v6);
  [cellConfiguration directionalLayoutMargins];
  v9 = v7 + v8;
  [cellConfiguration directionalLayoutMargins];
  v11 = v9 + v10;
  if (valueCopy)
  {
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [v12 lineHeight];
    v11 = v11 + ceil(v13);
  }

  return v11;
}

@end