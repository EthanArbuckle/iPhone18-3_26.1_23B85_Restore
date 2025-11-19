@interface COSFaceGalleryHeaderView
- (COSFaceGalleryHeaderView)initWithReuseIdentifier:(id)a3;
- (void)prepareForReuse;
- (void)setGalleryView:(id)a3;
@end

@implementation COSFaceGalleryHeaderView

- (COSFaceGalleryHeaderView)initWithReuseIdentifier:(id)a3
{
  v21.receiver = self;
  v21.super_class = COSFaceGalleryHeaderView;
  v3 = [(COSFaceGalleryHeaderView *)&v21 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = +[UIColor separatorColor];
    [v4 setBackgroundColor:v5];

    [(COSFaceGalleryHeaderView *)v3 addSubview:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [(COSFaceGalleryHeaderView *)v3 topAnchor];
    v19 = [v4 topAnchor];
    v18 = [v20 constraintEqualToAnchor:v19 constant:0.0];
    v22[0] = v18;
    v17 = [(COSFaceGalleryHeaderView *)v3 leadingAnchor];
    v16 = [v4 leadingAnchor];
    v6 = [v17 constraintEqualToAnchor:v16 constant:-18.0];
    v22[1] = v6;
    v7 = [(COSFaceGalleryHeaderView *)v3 trailingAnchor];
    v8 = [v4 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:18.0];
    v22[2] = v9;
    v10 = [v4 heightAnchor];
    v11 = +[UIScreen mainScreen];
    [v11 scale];
    v13 = [v10 constraintEqualToConstant:1.0 / v12];
    v22[3] = v13;
    v14 = [NSArray arrayWithObjects:v22 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }

  return v3;
}

- (void)setGalleryView:(id)a3
{
  v5 = a3;
  galleryView = self->_galleryView;
  if (galleryView)
  {
    [(UIView *)galleryView removeFromSuperview];
  }

  objc_storeStrong(&self->_galleryView, a3);
  if (self->_galleryView)
  {
    [(COSFaceGalleryHeaderView *)self addSubview:?];
    [(UIView *)self->_galleryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(COSFaceGalleryHeaderView *)self topAnchor];
    v18 = [(UIView *)self->_galleryView topAnchor];
    v17 = [v19 constraintEqualToAnchor:v18 constant:-16.0];
    v20[0] = v17;
    v16 = [(COSFaceGalleryHeaderView *)self bottomAnchor];
    v7 = [(UIView *)self->_galleryView bottomAnchor];
    v8 = [v16 constraintEqualToAnchor:v7 constant:16.0];
    v20[1] = v8;
    v9 = [(COSFaceGalleryHeaderView *)self leadingAnchor];
    v10 = [(UIView *)self->_galleryView leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];
    v20[2] = v11;
    v12 = [(COSFaceGalleryHeaderView *)self trailingAnchor];
    v13 = [(UIView *)self->_galleryView trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
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