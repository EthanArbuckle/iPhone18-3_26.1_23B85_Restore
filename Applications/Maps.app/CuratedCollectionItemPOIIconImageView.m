@interface CuratedCollectionItemPOIIconImageView
- (CuratedCollectionItemPOIIconImageView)initWithCoder:(id)a3;
- (CuratedCollectionItemPOIIconImageView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)setImage:(id)a3;
@end

@implementation CuratedCollectionItemPOIIconImageView

- (void)setImage:(id)a3
{
  v7 = a3;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    image = self->_image;
    v6 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
    [v6 setImage:image];
  }
}

- (void)_commonInit
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CuratedCollectionItemPOIIconImageView *)self setImageView:v3];

  v4 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  [v5 setContentMode:2];

  v6 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  [(CuratedCollectionItemPOIIconImageView *)self addSubview:v6];

  v7 = [(CuratedCollectionItemPOIIconImageView *)self traitCollection];
  if ([v7 userInterfaceIdiom] == 5)
  {
    v8 = 24.0;
  }

  else
  {
    v8 = 30.0;
  }

  v9 = [(CuratedCollectionItemPOIIconImageView *)self traitCollection];
  if ([v9 userInterfaceIdiom] == 5)
  {
    v10 = -2.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [(CuratedCollectionItemPOIIconImageView *)self traitCollection];
  if ([v11 userInterfaceIdiom] == 5)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = 8.0;
  }

  v31 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  v30 = [v31 topAnchor];
  v29 = [(CuratedCollectionItemPOIIconImageView *)self topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:v10];
  v32[0] = v28;
  v27 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  v26 = [v27 leadingAnchor];
  v25 = [(CuratedCollectionItemPOIIconImageView *)self leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v32[1] = v24;
  v23 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  v13 = [v23 bottomAnchor];
  v14 = [(CuratedCollectionItemPOIIconImageView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:v12];
  v32[2] = v15;
  v16 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:v8];
  v32[3] = v18;
  v19 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  v20 = [v19 widthAnchor];
  v21 = [v20 constraintEqualToConstant:v8];
  v32[4] = v21;
  v22 = [NSArray arrayWithObjects:v32 count:5];
  [NSLayoutConstraint activateConstraints:v22];
}

- (CuratedCollectionItemPOIIconImageView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionItemPOIIconImageView;
  v3 = [(CuratedCollectionItemPOIIconImageView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemPOIIconImageView *)v3 _commonInit];
  }

  return v4;
}

- (CuratedCollectionItemPOIIconImageView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionItemPOIIconImageView;
  v3 = [(CuratedCollectionItemPOIIconImageView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemPOIIconImageView *)v3 _commonInit];
  }

  return v4;
}

@end