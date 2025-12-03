@interface CuratedCollectionItemPOIIconImageView
- (CuratedCollectionItemPOIIconImageView)initWithCoder:(id)coder;
- (CuratedCollectionItemPOIIconImageView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)setImage:(id)image;
@end

@implementation CuratedCollectionItemPOIIconImageView

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    image = self->_image;
    imageView = [(CuratedCollectionItemPOIIconImageView *)self imageView];
    [imageView setImage:image];
  }
}

- (void)_commonInit
{
  v3 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(CuratedCollectionItemPOIIconImageView *)self setImageView:v3];

  imageView = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  [imageView setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView2 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  [imageView2 setContentMode:2];

  imageView3 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  [(CuratedCollectionItemPOIIconImageView *)self addSubview:imageView3];

  traitCollection = [(CuratedCollectionItemPOIIconImageView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 5)
  {
    v8 = 24.0;
  }

  else
  {
    v8 = 30.0;
  }

  traitCollection2 = [(CuratedCollectionItemPOIIconImageView *)self traitCollection];
  if ([traitCollection2 userInterfaceIdiom] == 5)
  {
    v10 = -2.0;
  }

  else
  {
    v10 = 0.0;
  }

  traitCollection3 = [(CuratedCollectionItemPOIIconImageView *)self traitCollection];
  if ([traitCollection3 userInterfaceIdiom] == 5)
  {
    v12 = 10.0;
  }

  else
  {
    v12 = 8.0;
  }

  imageView4 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  topAnchor = [imageView4 topAnchor];
  topAnchor2 = [(CuratedCollectionItemPOIIconImageView *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v10];
  v32[0] = v28;
  imageView5 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  leadingAnchor = [imageView5 leadingAnchor];
  leadingAnchor2 = [(CuratedCollectionItemPOIIconImageView *)self leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v32[1] = v24;
  imageView6 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  bottomAnchor = [imageView6 bottomAnchor];
  bottomAnchor2 = [(CuratedCollectionItemPOIIconImageView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v12];
  v32[2] = v15;
  imageView7 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  heightAnchor = [imageView7 heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:v8];
  v32[3] = v18;
  imageView8 = [(CuratedCollectionItemPOIIconImageView *)self imageView];
  widthAnchor = [imageView8 widthAnchor];
  v21 = [widthAnchor constraintEqualToConstant:v8];
  v32[4] = v21;
  v22 = [NSArray arrayWithObjects:v32 count:5];
  [NSLayoutConstraint activateConstraints:v22];
}

- (CuratedCollectionItemPOIIconImageView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionItemPOIIconImageView;
  v3 = [(CuratedCollectionItemPOIIconImageView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemPOIIconImageView *)v3 _commonInit];
  }

  return v4;
}

- (CuratedCollectionItemPOIIconImageView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionItemPOIIconImageView;
  v3 = [(CuratedCollectionItemPOIIconImageView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CuratedCollectionItemPOIIconImageView *)v3 _commonInit];
  }

  return v4;
}

@end