@interface RAPPhotoCarouselTableViewCell
- (RAPPhotoCarouselTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)setPhotoCarouselController:(id)a3;
@end

@implementation RAPPhotoCarouselTableViewCell

- (void)setPhotoCarouselController:(id)a3
{
  v6 = a3;
  v4 = [(UGCPhotoCarouselCell *)self->_photoCarouselCell carouselController];

  v5 = v6;
  if (v4 != v6)
  {
    [(UGCPhotoCarouselCell *)self->_photoCarouselCell setCarouselController:v6];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  IsEnabled_MoreReportTypes = MapsFeature_IsEnabled_MoreReportTypes();
  v4 = [(UGCPhotoCarouselCell *)self->_photoCarouselCell topAnchor];
  v24 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  v5 = [v24 topAnchor];
  v25 = v4;
  v23 = v5;
  if (IsEnabled_MoreReportTypes)
  {
    v22 = [v4 constraintEqualToAnchor:v5 constant:12.0];
    v27 = v22;
    v6 = -12.0;
    v7 = &v27;
  }

  else
  {
    v22 = [v4 constraintEqualToAnchor:v5];
    v26 = v22;
    v7 = &v26;
    v6 = -0.0;
  }

  v20 = [(UGCPhotoCarouselCell *)self->_photoCarouselCell bottomAnchor];
  v21 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  v19 = [v21 bottomAnchor];
  LODWORD(v8) = 1132068864;
  v9 = [v20 constraintEqualToAnchor:v19 constant:v6 priority:v8];
  v7[1] = v9;
  v10 = [(UGCPhotoCarouselCell *)self->_photoCarouselCell leadingAnchor];
  v11 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  v12 = [v11 leadingAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:0.0];
  v7[2] = v13;
  v14 = [(UGCPhotoCarouselCell *)self->_photoCarouselCell trailingAnchor];
  v15 = [(RAPPhotoCarouselTableViewCell *)self contentView];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:-0.0];
  v7[3] = v17;
  v18 = [NSArray arrayWithObjects:v7 count:4];
  [NSLayoutConstraint activateConstraints:v18];
}

- (RAPPhotoCarouselTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = RAPPhotoCarouselTableViewCell;
  v4 = [(RAPPhotoCarouselTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UGCPhotoCarouselCell alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    photoCarouselCell = v4->_photoCarouselCell;
    v4->_photoCarouselCell = v5;

    [(UGCPhotoCarouselCell *)v4->_photoCarouselCell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UGCPhotoCarouselCell *)v4->_photoCarouselCell setSectionInset:0.0, 12.0, 0.0, 0.0];
    v7 = [(RAPPhotoCarouselTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_photoCarouselCell];

    [(RAPPhotoCarouselTableViewCell *)v4 _setupConstraints];
    v8 = [(RAPPhotoCarouselTableViewCell *)v4 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5)
    {
      v10 = +[UIColor systemBackgroundColor];
      [(RAPPhotoCarouselTableViewCell *)v4 setBackgroundColor:v10];
    }
  }

  return v4;
}

@end