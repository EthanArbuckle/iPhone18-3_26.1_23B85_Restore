@interface CNPropertyAlertEditingCell
- (id)variableConstraints;
@end

@implementation CNPropertyAlertEditingCell

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v11.receiver = self;
  v11.super_class = CNPropertyAlertEditingCell;
  v4 = [(CNLabeledCell *)&v11 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CNPropertySimpleCell *)self labelView];
    v8 = [(CNPropertyAlertEditingCell *)self contentView];
    v9 = [v6 constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v9];
  }

  return v5;
}

@end