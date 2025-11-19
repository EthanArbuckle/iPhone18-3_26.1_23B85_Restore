@interface SWCItemCell
- (SWCItemCell)initWithDictionary:(id)a3;
- (void)layoutSubviews;
- (void)setShowSeparator:(BOOL)a3;
- (void)setShowTopSeparator:(BOOL)a3;
@end

@implementation SWCItemCell

- (void)setShowTopSeparator:(BOOL)a3
{
  if (self->_showTopSeparator == a3)
  {
    return;
  }

  self->_showTopSeparator = a3;
  topLine = self->_topLine;
  if (a3)
  {
    if (!topLine)
    {
      v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v6 = self->_topLine;
      self->_topLine = v5;

      v7 = +[UIColor separatorColor];
      [(UIView *)self->_topLine setBackgroundColor:v7];

      v8 = [(SWCItemCell *)self backgroundView];
      [v8 addSubview:self->_topLine];
    }

    if (!self->_topLineSelected)
    {
      v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      topLineSelected = self->_topLineSelected;
      self->_topLineSelected = v9;

      v11 = +[UIColor separatorColor];
      [(UIView *)self->_topLineSelected setBackgroundColor:v11];

      v15 = [(SWCItemCell *)self selectedBackgroundView];
      [(UIView *)v15 addSubview:self->_topLineSelected];
      v12 = v15;
LABEL_11:
    }
  }

  else
  {
    if (topLine)
    {
      [(UIView *)topLine removeFromSuperview];
      v13 = self->_topLine;
      self->_topLine = 0;
    }

    v14 = self->_topLineSelected;
    if (v14)
    {
      [(UIView *)v14 removeFromSuperview];
      v12 = self->_topLineSelected;
      self->_topLineSelected = 0;
      goto LABEL_11;
    }
  }
}

- (void)setShowSeparator:(BOOL)a3
{
  if (self->_showSeparator == a3)
  {
    return;
  }

  self->_showSeparator = a3;
  bottomLine = self->_bottomLine;
  if (a3)
  {
    if (!bottomLine)
    {
      v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v6 = self->_bottomLine;
      self->_bottomLine = v5;

      v7 = +[UIColor separatorColor];
      [(UIView *)self->_bottomLine setBackgroundColor:v7];

      v8 = [(SWCItemCell *)self backgroundView];
      [v8 addSubview:self->_bottomLine];
    }

    if (!self->_bottomLineSelected)
    {
      v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      bottomLineSelected = self->_bottomLineSelected;
      self->_bottomLineSelected = v9;

      v11 = +[UIColor separatorColor];
      [(UIView *)self->_bottomLineSelected setBackgroundColor:v11];

      v15 = [(SWCItemCell *)self selectedBackgroundView];
      [(UIView *)v15 addSubview:self->_bottomLineSelected];
      v12 = v15;
LABEL_11:
    }
  }

  else
  {
    if (bottomLine)
    {
      [(UIView *)bottomLine removeFromSuperview];
      v13 = self->_bottomLine;
      self->_bottomLine = 0;
    }

    v14 = self->_bottomLineSelected;
    if (v14)
    {
      [(UIView *)v14 removeFromSuperview];
      v12 = self->_bottomLineSelected;
      self->_bottomLineSelected = 0;
      goto LABEL_11;
    }
  }
}

- (void)layoutSubviews
{
  if (self->_bottomLine)
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    bottomLine = self->_bottomLine;
    [(SWCItemCell *)self frame];
    v8 = v7 - 1.0 / v5;
    [(SWCItemCell *)self frame];
    [(UIView *)bottomLine setFrame:0.0, v8];
  }

  if (self->_bottomLineSelected)
  {
    v9 = +[UIScreen mainScreen];
    [v9 scale];
    v11 = v10;

    bottomLineSelected = self->_bottomLineSelected;
    [(SWCItemCell *)self frame];
    v14 = v13 - 1.0 / v11;
    [(SWCItemCell *)self frame];
    [(UIView *)bottomLineSelected setFrame:0.0, v14];
  }

  if (self->_topLine)
  {
    v15 = +[UIScreen mainScreen];
    [v15 scale];

    topLine = self->_topLine;
    [(SWCItemCell *)self frame];
    [(UIView *)topLine setFrame:0.0, 0.0];
  }

  if (self->_topLineSelected)
  {
    v17 = +[UIScreen mainScreen];
    [v17 scale];

    topLineSelected = self->_topLineSelected;
    [(SWCItemCell *)self frame];
    [(UIView *)topLineSelected setFrame:0.0, 0.0];
  }

  isTicked = self->_isTicked;
  v20 = [(SWCItemCell *)self imageView];
  [v20 setHidden:!isTicked];

  v21.receiver = self;
  v21.super_class = SWCItemCell;
  [(SWCItemCell *)&v21 layoutSubviews];
}

- (SWCItemCell)initWithDictionary:(id)a3
{
  v5 = a3;
  v32.receiver = self;
  v32.super_class = SWCItemCell;
  v6 = [(SWCItemCell *)&v32 initWithStyle:3 reuseIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, a3);
    [(SWCItemCell *)v7 setSelectionStyle:0];
    v8 = +[UIColor systemBackgroundColor];
    [(SWCItemCell *)v7 setBackgroundColor:v8];

    v9 = +[UIColor labelColor];
    v10 = [(SWCItemCell *)v7 textLabel];
    [v10 setTextColor:v9];

    v11 = [(SWCItemCell *)v7 textLabel];
    [v11 setTextAlignment:0];

    v12 = [(SWCItemCell *)v7 textLabel];
    [v12 setAdjustsFontSizeToFitWidth:1];

    v13 = [(SWCItemCell *)v7 textLabel];
    [v13 setBaselineAdjustment:1];

    v14 = [v5 objectForKey:@"acct"];
    v15 = v14;
    if (!v14)
    {
      v10 = +[NSBundle mainBundle];
      v15 = [v10 localizedStringForKey:@"--" value:&stru_100008400 table:0];
    }

    v16 = [(SWCItemCell *)v7 textLabel];
    [v16 setText:v15];

    if (!v14)
    {
    }

    v17 = +[UIColor secondaryLabelColor];
    v18 = [(SWCItemCell *)v7 detailTextLabel];
    [v18 setTextColor:v17];

    v19 = [(SWCItemCell *)v7 detailTextLabel];
    [v19 setTextAlignment:0];

    v20 = [(SWCItemCell *)v7 detailTextLabel];
    [v20 setAdjustsFontSizeToFitWidth:1];

    v21 = [(SWCItemCell *)v7 detailTextLabel];
    [v21 setBaselineAdjustment:1];

    v22 = [v5 objectForKey:@"srvr"];
    v23 = v22;
    if (!v22)
    {
      v18 = +[NSBundle mainBundle];
      v23 = [v18 localizedStringForKey:@"--" value:&stru_100008400 table:0];
    }

    v24 = [(SWCItemCell *)v7 detailTextLabel];
    [v24 setText:v23];

    if (!v22)
    {
    }

    v25 = objc_alloc_init(UIView);
    [(SWCItemCell *)v7 setBackgroundView:v25];

    v26 = +[UIColor systemBackgroundColor];
    v27 = [(SWCItemCell *)v7 backgroundView];
    [v27 setBackgroundColor:v26];

    v28 = [UIImage systemImageNamed:@"checkmark"];
    v29 = [(SWCItemCell *)v7 imageView];
    [v29 setImage:v28];

    v30 = [(SWCItemCell *)v7 imageView];
    [v30 setHidden:1];
  }

  return v7;
}

@end