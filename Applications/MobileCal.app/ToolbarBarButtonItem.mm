@interface ToolbarBarButtonItem
- (ToolbarBarButtonItem)initWithTitle:(id)title target:(id)target action:(SEL)action;
- (void)setTitle:(id)title;
@end

@implementation ToolbarBarButtonItem

- (ToolbarBarButtonItem)initWithTitle:(id)title target:(id)target action:(SEL)action
{
  titleCopy = title;
  targetCopy = target;
  if (CalSystemSolariumEnabled())
  {
    v21.receiver = self;
    v21.super_class = ToolbarBarButtonItem;
    v10 = [(ToolbarBarButtonItem *)&v21 initWithTitle:titleCopy style:0 target:targetCopy action:action];
  }

  else
  {
    v11 = [UIButton buttonWithType:1];
    button = self->_button;
    self->_button = v11;

    [(UIButton *)self->_button setTitle:titleCopy forState:0];
    v13 = [UIFont systemFontOfSize:17.0];
    titleLabel = [(UIButton *)self->_button titleLabel];
    [titleLabel setFont:v13];

    [(UIButton *)self->_button addTarget:targetCopy action:action forControlEvents:64];
    [(UIButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(UIButton *)self->_button setContentCompressionResistancePriority:0 forAxis:v15];
    v16 = self->_button;
    v20.receiver = self;
    v20.super_class = ToolbarBarButtonItem;
    v17 = [(ToolbarBarButtonItem *)&v20 initWithCustomView:v16];
    v10 = v17;
    if (v17)
    {
      [(ToolbarBarButtonItem *)v17 setTitle:titleCopy];
    }
  }

  v18 = v10;

  return v18;
}

- (void)setTitle:(id)title
{
  v5.receiver = self;
  v5.super_class = ToolbarBarButtonItem;
  titleCopy = title;
  [(ToolbarBarButtonItem *)&v5 setTitle:titleCopy];
  [(UIButton *)self->_button setTitle:titleCopy forState:0, v5.receiver, v5.super_class];
}

@end