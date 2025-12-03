@interface CarplayTableViewHeaderView
- (CarplayTableViewHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setAnyCalendarsHiddenByFocus:(BOOL)focus;
- (void)setFloating:(BOOL)floating;
- (void)setHeaderText:(id)text;
@end

@implementation CarplayTableViewHeaderView

- (void)setHeaderText:(id)text
{
  objc_storeStrong(&self->_headerText, text);
  textCopy = text;
  headerText = self->_headerText;
  label = [(CarplayTableViewHeaderContentView *)self->_contentView label];
  [label setText:headerText];
}

- (void)setAnyCalendarsHiddenByFocus:(BOOL)focus
{
  self->_anyCalendarsHiddenByFocus = focus;
  v3 = focus && self->_headerFloatingOrAtTop;
  [(CarplayTableViewHeaderContentView *)self->_contentView setAnyCalendarsHiddenByFocus:v3];
}

- (void)setFloating:(BOOL)floating
{
  v25.receiver = self;
  v25.super_class = CarplayTableViewHeaderView;
  [(CarplayTableViewHeaderView *)&v25 setFloating:?];
  [(CarplayTableViewHeaderView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superview = [(CarplayTableViewHeaderView *)self superview];
  [(CarplayTableViewHeaderView *)self convertRect:superview toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (floating)
  {
    v22 = 1;
  }

  else
  {
    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    v22 = CGRectGetMinY(v26) == 0.0;
  }

  self->_headerFloatingOrAtTop = v22;
  separator = [(CarplayTableViewHeaderContentView *)self->_contentView separator];
  [separator setHidden:v22];

  v24 = self->_anyCalendarsHiddenByFocus && self->_headerFloatingOrAtTop;
  [(CarplayTableViewHeaderContentView *)self->_contentView setAnyCalendarsHiddenByFocus:v24];
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = CarplayTableViewHeaderView;
  [(CarplayTableViewHeaderView *)&v32 layoutSubviews];
  if ((CalSystemSolariumEnabled() & 1) == 0)
  {
    tableView = [(CarplayTableViewHeaderView *)self tableView];
    backgroundView = [(CarplayTableViewHeaderView *)self backgroundView];
    [backgroundView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    backgroundView2 = [(CarplayTableViewHeaderView *)self backgroundView];
    [tableView convertRect:backgroundView2 fromView:{v6, v8, v10, v12}];
    v15 = v14;
    v17 = v16;

    tableView2 = [(CarplayTableViewHeaderView *)self tableView];
    [tableView2 bounds];
    Width = CGRectGetWidth(v33);

    backgroundView3 = [(CarplayTableViewHeaderView *)self backgroundView];
    superview = [backgroundView3 superview];
    tableView3 = [(CarplayTableViewHeaderView *)self tableView];
    [superview convertRect:tableView3 fromView:{0.0, v15, Width, v17}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    backgroundView4 = [(CarplayTableViewHeaderView *)self backgroundView];
    [backgroundView4 setFrame:{v24, v26, v28, v30}];
  }
}

- (CarplayTableViewHeaderView)initWithReuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = CarplayTableViewHeaderView;
  v3 = [(CarplayTableViewHeaderView *)&v16 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_opt_new();
    [(CarplayTableViewHeaderView *)v3 setBackgroundView:v4];

    v5 = objc_opt_new();
    contentView = v3->_contentView;
    v3->_contentView = v5;

    [(CarplayTableViewHeaderContentView *)v3->_contentView setAutoresizingMask:18];
    if (CalSystemSolariumEnabled())
    {
      v7 = +[UIColor clearColor];
      backgroundView = [(CarplayTableViewHeaderView *)v3 backgroundView];
      [backgroundView setBackgroundColor:v7];

      v9 = +[UIColor clearColor];
      [(CarplayTableViewHeaderContentView *)v3->_contentView setBackgroundColor:v9];
    }

    else
    {
      v9 = objc_alloc_init(UIVisualEffectView);
      v10 = +[UIColor tableBackgroundColor];
      v11 = [v10 colorWithAlphaComponent:0.8];
      [v9 setBackgroundColor:v11];

      v12 = [UIColorEffect colorEffectSaturate:1.5];
      v13 = [UIBlurEffect effectWithBlurRadius:10.0];
      v17[0] = v12;
      v17[1] = v13;
      v14 = [NSArray arrayWithObjects:v17 count:2];
      [v9 setBackgroundEffects:v14];

      [(CarplayTableViewHeaderView *)v3 setBackgroundView:v9];
    }

    [(CarplayTableViewHeaderView *)v3 addSubview:v3->_contentView];
  }

  return v3;
}

@end