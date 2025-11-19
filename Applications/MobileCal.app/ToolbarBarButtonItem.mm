@interface ToolbarBarButtonItem
- (ToolbarBarButtonItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5;
- (void)setTitle:(id)a3;
@end

@implementation ToolbarBarButtonItem

- (ToolbarBarButtonItem)initWithTitle:(id)a3 target:(id)a4 action:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  if (CalSystemSolariumEnabled())
  {
    v21.receiver = self;
    v21.super_class = ToolbarBarButtonItem;
    v10 = [(ToolbarBarButtonItem *)&v21 initWithTitle:v8 style:0 target:v9 action:a5];
  }

  else
  {
    v11 = [UIButton buttonWithType:1];
    button = self->_button;
    self->_button = v11;

    [(UIButton *)self->_button setTitle:v8 forState:0];
    v13 = [UIFont systemFontOfSize:17.0];
    v14 = [(UIButton *)self->_button titleLabel];
    [v14 setFont:v13];

    [(UIButton *)self->_button addTarget:v9 action:a5 forControlEvents:64];
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
      [(ToolbarBarButtonItem *)v17 setTitle:v8];
    }
  }

  v18 = v10;

  return v18;
}

- (void)setTitle:(id)a3
{
  v5.receiver = self;
  v5.super_class = ToolbarBarButtonItem;
  v4 = a3;
  [(ToolbarBarButtonItem *)&v5 setTitle:v4];
  [(UIButton *)self->_button setTitle:v4 forState:0, v5.receiver, v5.super_class];
}

@end