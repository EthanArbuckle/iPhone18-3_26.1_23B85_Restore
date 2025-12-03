@interface CNContactContainerPickerCell
- (CNContactContainerPickerCell)init;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation CNContactContainerPickerCell

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = CNContactContainerPickerCell;
  [(CNContactContainerPickerCell *)&v15 updateConfigurationUsingState:stateCopy];
  defaultContentConfiguration = [(CNContactContainerPickerCell *)self defaultContentConfiguration];
  contentConfiguration = [(CNContactContainerPickerCell *)self contentConfiguration];
  text = [contentConfiguration text];
  [defaultContentConfiguration setText:text];

  if ([stateCopy isHighlighted])
  {
    if (![(CNContactContainerPickerCell *)self allowsDeselection])
    {
      goto LABEL_7;
    }
  }

  else
  {
    isSelected = [stateCopy isSelected];
    if (![(CNContactContainerPickerCell *)self allowsDeselection])
    {
LABEL_7:
      grayColor = [MEMORY[0x1E69DC888] grayColor];
      grayColor2 = [MEMORY[0x1E69DC888] grayColor];
      v11 = @"link.circle.fill";
      goto LABEL_8;
    }

    if ((isSelected & 1) == 0)
    {
      grayColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      grayColor2 = 0;
      v11 = @"circle";
      goto LABEL_8;
    }
  }

  grayColor = 0;
  grayColor2 = 0;
  v11 = @"checkmark.circle.fill";
LABEL_8:
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
  [defaultContentConfiguration setImage:v12];

  imageProperties = [defaultContentConfiguration imageProperties];
  [imageProperties setTintColor:grayColor];

  textProperties = [defaultContentConfiguration textProperties];
  [textProperties setColor:grayColor2];

  [(CNContactContainerPickerCell *)self setContentConfiguration:defaultContentConfiguration];
}

- (CNContactContainerPickerCell)init
{
  v3.receiver = self;
  v3.super_class = CNContactContainerPickerCell;
  result = [(CNContactContainerPickerCell *)&v3 init];
  if (result)
  {
    result->_allowsDeselection = 1;
  }

  return result;
}

@end