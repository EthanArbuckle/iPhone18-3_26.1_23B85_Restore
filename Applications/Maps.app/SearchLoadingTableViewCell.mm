@interface SearchLoadingTableViewCell
+ (id)identifier;
- (SearchLoadingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)clearHeightConstraint;
- (void)prepareForReuse;
- (void)setHeightConstraint:(double)constraint withPriority:(float)priority;
@end

@implementation SearchLoadingTableViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SearchLoadingTableViewCell;
  [(SearchLoadingTableViewCell *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
}

- (void)setHeightConstraint:(double)constraint withPriority:(float)priority
{
  heightConstraint = self->_heightConstraint;
  if (!heightConstraint)
  {
    goto LABEL_14;
  }

  [(NSLayoutConstraint *)heightConstraint priority];
  if (v8 != priority)
  {
    [(NSLayoutConstraint *)self->_heightConstraint priority];
    if (v9 == 1000.0 || priority == 1000.0)
    {
      [(SearchLoadingTableViewCell *)self clearHeightConstraint];
    }
  }

  v11 = self->_heightConstraint;
  if (v11)
  {
    [(NSLayoutConstraint *)v11 setConstant:constraint];
    [(NSLayoutConstraint *)self->_heightConstraint priority];
    if (*&v12 != priority)
    {
      v13 = self->_heightConstraint;
      *&v12 = priority;

      [(NSLayoutConstraint *)v13 setPriority:v12];
    }
  }

  else
  {
LABEL_14:
    contentView = [(SearchLoadingTableViewCell *)self contentView];
    heightAnchor = [contentView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:constraint];
    v17 = self->_heightConstraint;
    self->_heightConstraint = v16;

    *&v18 = priority;
    [(NSLayoutConstraint *)self->_heightConstraint setPriority:v18];
    v19 = self->_heightConstraint;

    [(NSLayoutConstraint *)v19 setActive:1];
  }
}

- (void)clearHeightConstraint
{
  [(NSLayoutConstraint *)self->_heightConstraint setActive:0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = 0;
}

- (SearchLoadingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v42.receiver = self;
  v42.super_class = SearchLoadingTableViewCell;
  v4 = [(SearchLoadingTableViewCell *)&v42 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    loadingLabel = v4->_loadingLabel;
    v4->_loadingLabel = v9;

    [(UILabel *)v4->_loadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_loadingLabel setNumberOfLines:0];
    v11 = +[UIColor secondaryLabelColor];
    [(UILabel *)v4->_loadingLabel setTextColor:v11];

    v12 = [UIFont systemFontOfSize:13.0];
    [(UILabel *)v4->_loadingLabel setFont:v12];

    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
    [(UILabel *)v4->_loadingLabel setText:v14];

    contentView = [(SearchLoadingTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_loadingLabel];

    v16 = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    loadingIndicator = v4->_loadingIndicator;
    v4->_loadingIndicator = v16;

    [(UIActivityIndicatorView *)v4->_loadingIndicator setActivityIndicatorViewStyle:100];
    [(UIActivityIndicatorView *)v4->_loadingIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor secondaryLabelColor];
    [(UIActivityIndicatorView *)v4->_loadingIndicator setColor:v18];

    contentView2 = [(SearchLoadingTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_loadingIndicator];

    [(UIActivityIndicatorView *)v4->_loadingIndicator setHidesWhenStopped:0];
    v20 = +[UIColor clearColor];
    [(SearchLoadingTableViewCell *)v4 setBackgroundColor:v20];

    [(UIActivityIndicatorView *)v4->_loadingIndicator startAnimating];
    leadingAnchor = [(UIActivityIndicatorView *)v4->_loadingIndicator leadingAnchor];
    contentView3 = [(SearchLoadingTableViewCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v43[0] = v38;
    centerYAnchor = [(UIActivityIndicatorView *)v4->_loadingIndicator centerYAnchor];
    contentView4 = [(SearchLoadingTableViewCell *)v4 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v34 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v43[1] = v34;
    leadingAnchor3 = [(UILabel *)v4->_loadingLabel leadingAnchor];
    trailingAnchor = [(UIActivityIndicatorView *)v4->_loadingIndicator trailingAnchor];
    v31 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
    v43[2] = v31;
    trailingAnchor2 = [(UILabel *)v4->_loadingLabel trailingAnchor];
    contentView5 = [(SearchLoadingTableViewCell *)v4 contentView];
    trailingAnchor3 = [contentView5 trailingAnchor];
    v24 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-10.0];
    v43[3] = v24;
    centerYAnchor3 = [(UILabel *)v4->_loadingLabel centerYAnchor];
    contentView6 = [(SearchLoadingTableViewCell *)v4 contentView];
    centerYAnchor4 = [contentView6 centerYAnchor];
    v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v43[4] = v28;
    v29 = [NSArray arrayWithObjects:v43 count:5];
    [NSLayoutConstraint activateConstraints:v29];
  }

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end