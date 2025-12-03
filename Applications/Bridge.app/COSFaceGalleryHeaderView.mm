@interface COSFaceGalleryHeaderView
- (COSFaceGalleryHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setGalleryView:(id)view;
@end

@implementation COSFaceGalleryHeaderView

- (COSFaceGalleryHeaderView)initWithReuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = COSFaceGalleryHeaderView;
  v3 = [(COSFaceGalleryHeaderView *)&v21 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = +[UIColor separatorColor];
    [v4 setBackgroundColor:v5];

    [(COSFaceGalleryHeaderView *)v3 addSubview:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(COSFaceGalleryHeaderView *)v3 topAnchor];
    topAnchor2 = [v4 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v22[0] = v18;
    leadingAnchor = [(COSFaceGalleryHeaderView *)v3 leadingAnchor];
    leadingAnchor2 = [v4 leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-18.0];
    v22[1] = v6;
    trailingAnchor = [(COSFaceGalleryHeaderView *)v3 trailingAnchor];
    trailingAnchor2 = [v4 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:18.0];
    v22[2] = v9;
    heightAnchor = [v4 heightAnchor];
    v11 = +[UIScreen mainScreen];
    [v11 scale];
    v13 = [heightAnchor constraintEqualToConstant:1.0 / v12];
    v22[3] = v13;
    v14 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }

  return v3;
}

- (void)setGalleryView:(id)view
{
  viewCopy = view;
  galleryView = self->_galleryView;
  if (galleryView)
  {
    [(UIView *)galleryView removeFromSuperview];
  }

  objc_storeStrong(&self->_galleryView, view);
  if (self->_galleryView)
  {
    [(COSFaceGalleryHeaderView *)self addSubview:?];
    [(UIView *)self->_galleryView setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(COSFaceGalleryHeaderView *)self topAnchor];
    topAnchor2 = [(UIView *)self->_galleryView topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-16.0];
    v20[0] = v17;
    bottomAnchor = [(COSFaceGalleryHeaderView *)self bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_galleryView bottomAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    v20[1] = v8;
    leadingAnchor = [(COSFaceGalleryHeaderView *)self leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_galleryView leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v20[2] = v11;
    trailingAnchor = [(COSFaceGalleryHeaderView *)self trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_galleryView trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v20[3] = v14;
    v15 = [NSArray arrayWithObjects:v20 count:4];
    [NSLayoutConstraint activateConstraints:v15];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = COSFaceGalleryHeaderView;
  [(COSFaceGalleryHeaderView *)&v3 prepareForReuse];
  [(COSFaceGalleryHeaderView *)self setGalleryView:0];
}

@end