@interface RAPPhotoCarouselTableViewCell
- (RAPPhotoCarouselTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)setPhotoCarouselController:(id)controller;
@end

@implementation RAPPhotoCarouselTableViewCell

- (void)setPhotoCarouselController:(id)controller
{
  controllerCopy = controller;
  carouselController = [(UGCPhotoCarouselCell *)self->_photoCarouselCell carouselController];

  v5 = controllerCopy;
  if (carouselController != controllerCopy)
  {
    [(UGCPhotoCarouselCell *)self->_photoCarouselCell setCarouselController:controllerCopy];
    v5 = controllerCopy;
  }
}

- (void)_setupConstraints
{
  IsEnabled_MoreReportTypes = MapsFeature_IsEnabled_MoreReportTypes();
  topAnchor = [(UGCPhotoCarouselCell *)self->_photoCarouselCell topAnchor];
  contentView = [(RAPPhotoCarouselTableViewCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v25 = topAnchor;
  v23 = topAnchor2;
  if (IsEnabled_MoreReportTypes)
  {
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v27 = v22;
    v6 = -12.0;
    v7 = &v27;
  }

  else
  {
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v26 = v22;
    v7 = &v26;
    v6 = -0.0;
  }

  bottomAnchor = [(UGCPhotoCarouselCell *)self->_photoCarouselCell bottomAnchor];
  contentView2 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  bottomAnchor2 = [contentView2 bottomAnchor];
  LODWORD(v8) = 1132068864;
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v6 priority:v8];
  v7[1] = v9;
  leadingAnchor = [(UGCPhotoCarouselCell *)self->_photoCarouselCell leadingAnchor];
  contentView3 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v7[2] = v13;
  trailingAnchor = [(UGCPhotoCarouselCell *)self->_photoCarouselCell trailingAnchor];
  contentView4 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
  v7[3] = v17;
  v18 = [NSArray arrayWithObjects:v7 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (RAPPhotoCarouselTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = RAPPhotoCarouselTableViewCell;
  v4 = [(RAPPhotoCarouselTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UGCPhotoCarouselCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    photoCarouselCell = v4->_photoCarouselCell;
    v4->_photoCarouselCell = v5;

    [(UGCPhotoCarouselCell *)v4->_photoCarouselCell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UGCPhotoCarouselCell *)v4->_photoCarouselCell setSectionInset:0.0, 12.0, 0.0, 0.0];
    contentView = [(RAPPhotoCarouselTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_photoCarouselCell];

    [(RAPPhotoCarouselTableViewCell *)v4 _setupConstraints];
    traitCollection = [(RAPPhotoCarouselTableViewCell *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 5)
    {
      v10 = +[UIColor systemBackgroundColor];
      [(RAPPhotoCarouselTableViewCell *)v4 setBackgroundColor:v10];
    }
  }

  return v4;
}

@end