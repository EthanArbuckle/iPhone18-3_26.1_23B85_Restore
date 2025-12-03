@interface CNQuickActionCell
- (CNQuickActionCell)initWithFrame:(CGRect)frame;
- (void)setShowBackgroundPlatter:(BOOL)platter;
- (void)setShowTitle:(BOOL)title;
@end

@implementation CNQuickActionCell

- (void)setShowBackgroundPlatter:(BOOL)platter
{
  if (self->_showBackgroundPlatter != platter)
  {
    platterCopy = platter;
    self->_showBackgroundPlatter = platter;
    button = [(CNQuickActionCell *)self button];
    [button setShowBackgroundPlatter:platterCopy];
  }
}

- (void)setShowTitle:(BOOL)title
{
  if (self->_showTitle != title)
  {
    titleCopy = title;
    self->_showTitle = title;
    button = [(CNQuickActionCell *)self button];
    [button setShowTitle:titleCopy];
  }
}

- (CNQuickActionCell)initWithFrame:(CGRect)frame
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CNQuickActionCell;
  v3 = [(CNQuickActionCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(CNQuickActionButton);
  [(CNQuickActionButton *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CNQuickActionCell *)v3 contentView];
  [contentView addSubview:v4];

  [(CNQuickActionCell *)v3 setButton:v4];
  v13 = @"button";
  button = [(CNQuickActionCell *)v3 button];
  v14[0] = button;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  array = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|[button]|" options:0 metrics:0 views:v7];
  [array addObjectsFromArray:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[button]|" options:0 metrics:0 views:v7];
  [array addObjectsFromArray:v10];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  return v3;
}

@end