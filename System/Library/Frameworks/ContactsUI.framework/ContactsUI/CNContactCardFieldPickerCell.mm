@interface CNContactCardFieldPickerCell
+ (double)estimatedHeightDisplayingValue:(BOOL)a3;
- (CNContactCardFieldPickerCell)init;
- (id)attributedDisplayText;
- (void)setConfiguration;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CNContactCardFieldPickerCell

- (id)attributedDisplayText
{
  v33[2] = *MEMORY[0x1E69E9840];
  v29 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = *MEMORY[0x1E69DB650];
  v32[0] = *MEMORY[0x1E69DB648];
  v32[1] = v5;
  v33[0] = v3;
  v33[1] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v7 = *MEMORY[0x1E6996570];
  v8 = [(CNContactCardFieldPickerCell *)self item];
  v9 = [v8 displayLabel];
  v10 = (*(v7 + 16))(v7, v9);

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
    v28 = [(CNContactCardFieldPickerCell *)self item];
    *buf = 138543362;
    v31 = v28;
    _os_log_error_impl(&dword_199A75000, v17, OS_LOG_TYPE_ERROR, "Contact card field picker failed to display item %{public}@", buf, 0xCu);

    goto LABEL_6;
  }

  if ([(CNContactCardFieldPickerCell *)self displaysValue])
  {
    v11 = [(CNContactCardFieldPickerCell *)self item];
    v12 = [v11 displayValue];
    v13 = (*(v7 + 16))(v7, v12);

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AD40]);
      v15 = [(CNContactCardFieldPickerCell *)self item];
      v16 = [v15 displayLabel];
      v17 = [v14 initWithString:v16 attributes:v6];

      v18 = v29;
      [v29 appendAttributedString:v17];
      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v6];
      [v29 appendAttributedString:v19];
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = [(CNContactCardFieldPickerCell *)self item];
      v22 = [v21 displayValue];
      v23 = [v20 initWithString:v22 attributes:MEMORY[0x1E695E0F8]];

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
  v25 = [(CNContactCardFieldPickerCell *)self item];
  v26 = [v25 displayLabel];
  v17 = [v24 initWithString:v26 attributes:MEMORY[0x1E695E0F8]];

  v18 = v29;
  [v29 appendAttributedString:v17];
LABEL_8:

  return v18;
}

- (void)setConfiguration
{
  v6 = [(CNContactCardFieldPickerCell *)self defaultContentConfiguration];
  if ([(CNContactCardFieldPickerCell *)self isSelected])
  {
    v3 = @"checkmark.circle.fill";
  }

  else
  {
    v3 = @"circle";
  }

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  [v6 setImage:v4];

  v5 = [(CNContactCardFieldPickerCell *)self attributedDisplayText];
  [v6 setAttributedText:v5];

  [(CNContactCardFieldPickerCell *)self setContentConfiguration:v6];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = CNContactCardFieldPickerCell;
  [(CNContactCardFieldPickerCell *)&v5 setSelected:a3 animated:a4];
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

+ (double)estimatedHeightDisplayingValue:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = [MEMORY[0x1E69DCC28] cellConfiguration];
  [v4 lineHeight];
  v7 = ceil(v6);
  [v5 directionalLayoutMargins];
  v9 = v7 + v8;
  [v5 directionalLayoutMargins];
  v11 = v9 + v10;
  if (v3)
  {
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
    [v12 lineHeight];
    v11 = v11 + ceil(v13);
  }

  return v11;
}

@end