@interface RAPTransitLineTableViewCell
+ (id)measuringCell;
- (RAPTransitLineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)preferredHeightInTableView:(id)view;
- (void)alignWithShieldWidth:(double)width;
- (void)layoutMarginsDidChange;
- (void)setContentsFromTransitLine:(id)line;
- (void)setImage:(id)image;
- (void)updateConstraints;
- (void)updateImageConstraints;
@end

@implementation RAPTransitLineTableViewCell

- (double)preferredHeightInTableView:(id)view
{
  [view bounds];
  v5 = v4;
  contentView = [(RAPTransitLineTableViewCell *)self contentView];
  [contentView systemLayoutSizeFittingSize:{v5, 0.0}];
  v8 = v7;

  return v8;
}

- (void)alignWithShieldWidth:(double)width
{
  self->_shieldWidth = width;
  image = [(UIImageView *)self->_imageView image];
  [image size];
  [(NSLayoutConstraint *)self->_leadingConstraint setConstant:width - v5];
}

- (void)setImage:(id)image
{
  [(UIImageView *)self->_imageView setImage:image];

  [(RAPTransitLineTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)setContentsFromTransitLine:(id)line
{
  lineCopy = line;
  primaryDescriptionText = [lineCopy primaryDescriptionText];
  textLabel = [(RAPTransitLineTableViewCell *)self textLabel];
  [textLabel setText:primaryDescriptionText];

  textLabel2 = [(RAPTransitLineTableViewCell *)self textLabel];
  [textLabel2 setNumberOfLines:4];

  secondaryDescriptionText = [lineCopy secondaryDescriptionText];
  detailTextLabel = [(RAPTransitLineTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:secondaryDescriptionText];

  detailTextLabel2 = [(RAPTransitLineTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setNumberOfLines:4];

  window = [(RAPTransitLineTableViewCell *)self window];
  screen = [window screen];
  v12 = screen;
  if (screen)
  {
    [screen scale];
    v14 = v13;
  }

  else
  {
    v15 = +[UIScreen mainScreen];
    [v15 scale];
    v14 = v16;
  }

  artwork = [lineCopy artwork];
  v18 = [UIImage _mapkit_transitArtworkImageWithDataSource:artwork size:6 scale:v14];

  [(RAPTransitLineTableViewCell *)self setImage:v18];
  [v18 size];
  [(RAPTransitLineTableViewCell *)self alignWithShieldWidth:?];
}

- (void)updateImageConstraints
{
  [(NSLayoutConstraint *)self->_imageViewWidthConstraint constant];
  v4 = v3;
  image = [(UIImageView *)self->_imageView image];
  [image size];
  v7 = v6;

  if (v4 != v7)
  {
    image2 = [(UIImageView *)self->_imageView image];
    [image2 size];
    [(NSLayoutConstraint *)self->_imageViewWidthConstraint setConstant:?];
  }
}

- (void)layoutMarginsDidChange
{
  v4.receiver = self;
  v4.super_class = RAPTransitLineTableViewCell;
  [(RAPTransitLineTableViewCell *)&v4 layoutMarginsDidChange];
  [(RAPTransitLineTableViewCell *)self layoutMargins];
  [(RAPTransitLineTableViewCell *)self setSeparatorInset:0.0, v3 + 12.0 + self->_shieldWidth, 0.0, 0.0];
}

- (void)updateConstraints
{
  v16.receiver = self;
  v16.super_class = RAPTransitLineTableViewCell;
  [(RAPTransitLineTableViewCell *)&v16 updateConstraints];
  if (self->_didSetupConstraints)
  {
    [(RAPTransitLineTableViewCell *)self updateImageConstraints];
  }

  else
  {
    leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
    contentView = [(RAPTransitLineTableViewCell *)self contentView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    leadingConstraint = self->_leadingConstraint;
    self->_leadingConstraint = v7;

    if (self->_shieldWidth > 0.0)
    {
      [(RAPTransitLineTableViewCell *)self alignWithShieldWidth:?];
    }

    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    image = [(UIImageView *)self->_imageView image];
    [image size];
    v11 = [widthAnchor constraintEqualToConstant:?];
    imageViewWidthConstraint = self->_imageViewWidthConstraint;
    self->_imageViewWidthConstraint = v11;

    v13 = [NSMutableArray arrayWithCapacity:3];
    [v13 addObject:self->_leadingConstraint];
    [v13 addObject:self->_imageViewWidthConstraint];
    v14 = _NSDictionaryOfVariableBindings(@"_imageView", self->_imageView, 0);
    v15 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[_imageView]-|", 0, 0, v14);
    [v13 addObjectsFromArray:v15];

    [NSLayoutConstraint activateConstraints:v13];
    self->_didSetupConstraints = 1;
  }
}

- (RAPTransitLineTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = RAPTransitLineTableViewCell;
  v4 = [(RAPTransitLineTableViewCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(UIImageView);
    imageView = v4->_imageView;
    v4->_imageView = v5;

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(RAPTransitLineTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_imageView];

    LODWORD(v8) = 1148829696;
    [(UIImageView *)v4->_imageView setContentCompressionResistancePriority:1 forAxis:v8];
  }

  return v4;
}

+ (id)measuringCell
{
  if (qword_10195CB38 != -1)
  {
    dispatch_once(&qword_10195CB38, &stru_101622D20);
  }

  v3 = NSStringFromClass(self);
  v4 = [qword_10195CB30 objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = [[self alloc] initWithStyle:0 reuseIdentifier:0];
    [qword_10195CB30 setObject:v4 forKeyedSubscript:v3];
  }

  return v4;
}

@end