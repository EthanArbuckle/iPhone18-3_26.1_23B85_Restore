@interface MTToolbar
- (MTToolbar)init;
- (id)_separatorColor;
- (void)layoutSubviews;
- (void)setSeparatorColor:(id)a3;
- (void)setSeparatorHidden:(BOOL)a3;
- (void)setupView;
@end

@implementation MTToolbar

- (MTToolbar)init
{
  v5.receiver = self;
  v5.super_class = MTToolbar;
  v2 = [(MTToolbar *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTToolbar *)v2 setupView];
  }

  return v3;
}

- (void)setupView
{
  v3 = objc_opt_new();
  [(MTToolbar *)self setBackgroundImage:v3 forToolbarPosition:0 barMetrics:0];

  v4 = objc_opt_new();
  [(MTToolbar *)self setShadowImage:v4 forToolbarPosition:0];

  v5 = +[UIColor clearColor];
  [(MTToolbar *)self setBackgroundColor:v5];

  v6 = objc_alloc_init(UIView);
  separatorView = self->_separatorView;
  self->_separatorView = v6;

  v8 = [(MTToolbar *)self _separatorColor];
  [(UIView *)self->_separatorView setBackgroundColor:v8];

  v9 = self->_separatorView;

  [(MTToolbar *)self addSubview:v9];
}

- (void)setSeparatorHidden:(BOOL)a3
{
  v3 = a3;
  if ([(MTToolbar *)self isSeparatorHidden]!= a3)
  {
    separatorView = self->_separatorView;

    [(UIView *)separatorView setHidden:v3];
  }
}

- (void)setSeparatorColor:(id)a3
{
  v5 = a3;
  if (self->_separatorColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_separatorColor, a3);
    v6 = [(MTToolbar *)self _separatorColor];
    [(UIView *)self->_separatorView setBackgroundColor:v6];

    v5 = v7;
  }
}

- (id)_separatorColor
{
  v2 = [(MTToolbar *)self separatorColor];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[UIColor cellSeparatorColor];
  }

  v5 = v4;

  return v5;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MTToolbar;
  [(MTToolbar *)&v9 layoutSubviews];
  if (self->_separatorView)
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    [(MTToolbar *)self bounds];
    v7 = v6;
    [(MTToolbar *)self bounds];
    [(UIView *)self->_separatorView setFrame:CGRectZero.origin.x, v8 - 1.0 / v5, v7, 1.0 / v5];
  }
}

@end