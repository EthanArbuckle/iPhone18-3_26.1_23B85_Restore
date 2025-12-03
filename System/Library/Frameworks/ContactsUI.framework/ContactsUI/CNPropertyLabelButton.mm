@interface CNPropertyLabelButton
+ (id)propertyLabelButton;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation CNPropertyLabelButton

- (void)updateConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696ACD8];
  titleLabel = [(CNPropertyLabelButton *)self titleLabel];
  v6 = [v4 constraintWithItem:titleLabel attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [array addObject:v6];

  v7 = MEMORY[0x1E696ACD8];
  titleLabel2 = [(CNPropertyLabelButton *)self titleLabel];
  v9 = [v7 constraintWithItem:titleLabel2 attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  [array addObject:v9];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  v10.receiver = self;
  v10.super_class = CNPropertyLabelButton;
  [(CNPropertyLabelButton *)&v10 updateConstraints];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = CNPropertyLabelButton;
  [(CNPropertyLabelButton *)&v6 tintColorDidChange];
  v3 = [(CNPropertyLabelButton *)self titleColorForState:0];
  tintColor = [(CNPropertyLabelButton *)self tintColor];

  if (v3 != tintColor)
  {
    tintColor2 = [(CNPropertyLabelButton *)self tintColor];
    [(CNPropertyLabelButton *)self setTitleColor:tintColor2 forState:0];
  }
}

+ (id)propertyLabelButton
{
  v2 = [self alloc];
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  tintColor = [v3 tintColor];
  [v3 setTitleColor:tintColor forState:0];

  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  userInterfaceIdiom = [_currentTraitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    v7 = +[CNUIColorRepository contactStyleDefaultReadOnlyTextColor];
    [v3 setTitleColor:v7 forState:2];
  }

  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [v3 setContentHorizontalAlignment:v8];

  return v3;
}

@end