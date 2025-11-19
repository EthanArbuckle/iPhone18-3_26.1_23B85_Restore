@interface SearchLoadingTableViewCell
+ (id)identifier;
- (SearchLoadingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)clearHeightConstraint;
- (void)prepareForReuse;
- (void)setHeightConstraint:(double)a3 withPriority:(float)a4;
@end

@implementation SearchLoadingTableViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = SearchLoadingTableViewCell;
  [(SearchLoadingTableViewCell *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_loadingIndicator startAnimating];
}

- (void)setHeightConstraint:(double)a3 withPriority:(float)a4
{
  heightConstraint = self->_heightConstraint;
  if (!heightConstraint)
  {
    goto LABEL_14;
  }

  [(NSLayoutConstraint *)heightConstraint priority];
  if (v8 != a4)
  {
    [(NSLayoutConstraint *)self->_heightConstraint priority];
    if (v9 == 1000.0 || a4 == 1000.0)
    {
      [(SearchLoadingTableViewCell *)self clearHeightConstraint];
    }
  }

  v11 = self->_heightConstraint;
  if (v11)
  {
    [(NSLayoutConstraint *)v11 setConstant:a3];
    [(NSLayoutConstraint *)self->_heightConstraint priority];
    if (*&v12 != a4)
    {
      v13 = self->_heightConstraint;
      *&v12 = a4;

      [(NSLayoutConstraint *)v13 setPriority:v12];
    }
  }

  else
  {
LABEL_14:
    v14 = [(SearchLoadingTableViewCell *)self contentView];
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintEqualToConstant:a3];
    v17 = self->_heightConstraint;
    self->_heightConstraint = v16;

    *&v18 = a4;
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

- (SearchLoadingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v42.receiver = self;
  v42.super_class = SearchLoadingTableViewCell;
  v4 = [(SearchLoadingTableViewCell *)&v42 initWithStyle:a3 reuseIdentifier:a4];
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

    v15 = [(SearchLoadingTableViewCell *)v4 contentView];
    [v15 addSubview:v4->_loadingLabel];

    v16 = [[UIActivityIndicatorView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    loadingIndicator = v4->_loadingIndicator;
    v4->_loadingIndicator = v16;

    [(UIActivityIndicatorView *)v4->_loadingIndicator setActivityIndicatorViewStyle:100];
    [(UIActivityIndicatorView *)v4->_loadingIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor secondaryLabelColor];
    [(UIActivityIndicatorView *)v4->_loadingIndicator setColor:v18];

    v19 = [(SearchLoadingTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_loadingIndicator];

    [(UIActivityIndicatorView *)v4->_loadingIndicator setHidesWhenStopped:0];
    v20 = +[UIColor clearColor];
    [(SearchLoadingTableViewCell *)v4 setBackgroundColor:v20];

    [(UIActivityIndicatorView *)v4->_loadingIndicator startAnimating];
    v40 = [(UIActivityIndicatorView *)v4->_loadingIndicator leadingAnchor];
    v41 = [(SearchLoadingTableViewCell *)v4 contentView];
    v39 = [v41 leadingAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:10.0];
    v43[0] = v38;
    v36 = [(UIActivityIndicatorView *)v4->_loadingIndicator centerYAnchor];
    v37 = [(SearchLoadingTableViewCell *)v4 contentView];
    v35 = [v37 centerYAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v43[1] = v34;
    v33 = [(UILabel *)v4->_loadingLabel leadingAnchor];
    v32 = [(UIActivityIndicatorView *)v4->_loadingIndicator trailingAnchor];
    v31 = [v33 constraintEqualToAnchor:v32 constant:6.0];
    v43[2] = v31;
    v21 = [(UILabel *)v4->_loadingLabel trailingAnchor];
    v22 = [(SearchLoadingTableViewCell *)v4 contentView];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintLessThanOrEqualToAnchor:v23 constant:-10.0];
    v43[3] = v24;
    v25 = [(UILabel *)v4->_loadingLabel centerYAnchor];
    v26 = [(SearchLoadingTableViewCell *)v4 contentView];
    v27 = [v26 centerYAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
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