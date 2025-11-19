@interface CNQuickActionCell
- (CNQuickActionCell)initWithFrame:(CGRect)a3;
- (void)setShowBackgroundPlatter:(BOOL)a3;
- (void)setShowTitle:(BOOL)a3;
@end

@implementation CNQuickActionCell

- (void)setShowBackgroundPlatter:(BOOL)a3
{
  if (self->_showBackgroundPlatter != a3)
  {
    v4 = a3;
    self->_showBackgroundPlatter = a3;
    v5 = [(CNQuickActionCell *)self button];
    [v5 setShowBackgroundPlatter:v4];
  }
}

- (void)setShowTitle:(BOOL)a3
{
  if (self->_showTitle != a3)
  {
    v4 = a3;
    self->_showTitle = a3;
    v5 = [(CNQuickActionCell *)self button];
    [v5 setShowTitle:v4];
  }
}

- (CNQuickActionCell)initWithFrame:(CGRect)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CNQuickActionCell;
  v3 = [(CNQuickActionCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(CNQuickActionButton);
  [(CNQuickActionButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(CNQuickActionCell *)v3 contentView];
  [v5 addSubview:v4];

  [(CNQuickActionCell *)v3 setButton:v4];
  v13 = @"button";
  v6 = [(CNQuickActionCell *)v3 button];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[button]|" options:0 metrics:0 views:v7];
  [v8 addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[button]|" options:0 metrics:0 views:v7];
  [v8 addObjectsFromArray:v10];

  [MEMORY[0x1E696ACD8] activateConstraints:v8];
  return v3;
}

@end