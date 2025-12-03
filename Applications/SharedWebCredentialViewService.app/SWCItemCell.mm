@interface SWCItemCell
- (SWCItemCell)initWithDictionary:(id)dictionary;
- (void)layoutSubviews;
- (void)setShowSeparator:(BOOL)separator;
- (void)setShowTopSeparator:(BOOL)separator;
@end

@implementation SWCItemCell

- (void)setShowTopSeparator:(BOOL)separator
{
  if (self->_showTopSeparator == separator)
  {
    return;
  }

  self->_showTopSeparator = separator;
  topLine = self->_topLine;
  if (separator)
  {
    if (!topLine)
    {
      v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v6 = self->_topLine;
      self->_topLine = v5;

      v7 = +[UIColor separatorColor];
      [(UIView *)self->_topLine setBackgroundColor:v7];

      backgroundView = [(SWCItemCell *)self backgroundView];
      [backgroundView addSubview:self->_topLine];
    }

    if (!self->_topLineSelected)
    {
      v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      topLineSelected = self->_topLineSelected;
      self->_topLineSelected = v9;

      v11 = +[UIColor separatorColor];
      [(UIView *)self->_topLineSelected setBackgroundColor:v11];

      selectedBackgroundView = [(SWCItemCell *)self selectedBackgroundView];
      [(UIView *)selectedBackgroundView addSubview:self->_topLineSelected];
      v12 = selectedBackgroundView;
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

- (void)setShowSeparator:(BOOL)separator
{
  if (self->_showSeparator == separator)
  {
    return;
  }

  self->_showSeparator = separator;
  bottomLine = self->_bottomLine;
  if (separator)
  {
    if (!bottomLine)
    {
      v5 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v6 = self->_bottomLine;
      self->_bottomLine = v5;

      v7 = +[UIColor separatorColor];
      [(UIView *)self->_bottomLine setBackgroundColor:v7];

      backgroundView = [(SWCItemCell *)self backgroundView];
      [backgroundView addSubview:self->_bottomLine];
    }

    if (!self->_bottomLineSelected)
    {
      v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      bottomLineSelected = self->_bottomLineSelected;
      self->_bottomLineSelected = v9;

      v11 = +[UIColor separatorColor];
      [(UIView *)self->_bottomLineSelected setBackgroundColor:v11];

      selectedBackgroundView = [(SWCItemCell *)self selectedBackgroundView];
      [(UIView *)selectedBackgroundView addSubview:self->_bottomLineSelected];
      v12 = selectedBackgroundView;
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
  imageView = [(SWCItemCell *)self imageView];
  [imageView setHidden:!isTicked];

  v21.receiver = self;
  v21.super_class = SWCItemCell;
  [(SWCItemCell *)&v21 layoutSubviews];
}

- (SWCItemCell)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = SWCItemCell;
  v6 = [(SWCItemCell *)&v32 initWithStyle:3 reuseIdentifier:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dict, dictionary);
    [(SWCItemCell *)v7 setSelectionStyle:0];
    v8 = +[UIColor systemBackgroundColor];
    [(SWCItemCell *)v7 setBackgroundColor:v8];

    v9 = +[UIColor labelColor];
    textLabel = [(SWCItemCell *)v7 textLabel];
    [textLabel setTextColor:v9];

    textLabel2 = [(SWCItemCell *)v7 textLabel];
    [textLabel2 setTextAlignment:0];

    textLabel3 = [(SWCItemCell *)v7 textLabel];
    [textLabel3 setAdjustsFontSizeToFitWidth:1];

    textLabel4 = [(SWCItemCell *)v7 textLabel];
    [textLabel4 setBaselineAdjustment:1];

    v14 = [dictionaryCopy objectForKey:@"acct"];
    v15 = v14;
    if (!v14)
    {
      textLabel = +[NSBundle mainBundle];
      v15 = [textLabel localizedStringForKey:@"--" value:&stru_100008400 table:0];
    }

    textLabel5 = [(SWCItemCell *)v7 textLabel];
    [textLabel5 setText:v15];

    if (!v14)
    {
    }

    v17 = +[UIColor secondaryLabelColor];
    detailTextLabel = [(SWCItemCell *)v7 detailTextLabel];
    [detailTextLabel setTextColor:v17];

    detailTextLabel2 = [(SWCItemCell *)v7 detailTextLabel];
    [detailTextLabel2 setTextAlignment:0];

    detailTextLabel3 = [(SWCItemCell *)v7 detailTextLabel];
    [detailTextLabel3 setAdjustsFontSizeToFitWidth:1];

    detailTextLabel4 = [(SWCItemCell *)v7 detailTextLabel];
    [detailTextLabel4 setBaselineAdjustment:1];

    v22 = [dictionaryCopy objectForKey:@"srvr"];
    v23 = v22;
    if (!v22)
    {
      detailTextLabel = +[NSBundle mainBundle];
      v23 = [detailTextLabel localizedStringForKey:@"--" value:&stru_100008400 table:0];
    }

    detailTextLabel5 = [(SWCItemCell *)v7 detailTextLabel];
    [detailTextLabel5 setText:v23];

    if (!v22)
    {
    }

    v25 = objc_alloc_init(UIView);
    [(SWCItemCell *)v7 setBackgroundView:v25];

    v26 = +[UIColor systemBackgroundColor];
    backgroundView = [(SWCItemCell *)v7 backgroundView];
    [backgroundView setBackgroundColor:v26];

    v28 = [UIImage systemImageNamed:@"checkmark"];
    imageView = [(SWCItemCell *)v7 imageView];
    [imageView setImage:v28];

    imageView2 = [(SWCItemCell *)v7 imageView];
    [imageView2 setHidden:1];
  }

  return v7;
}

@end