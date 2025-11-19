@interface SharedTripContactAnnotationView
- (SharedTripContactAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4 imageSideLength:(double)a5;
- (id)contact;
- (id)state;
- (void)loadImage;
- (void)setAnnotation:(id)a3;
@end

@implementation SharedTripContactAnnotationView

- (void)loadImage
{
  v3 = [(SharedTripContactAnnotationView *)self contact];
  objc_initWeak(&location, self);
  if (v3)
  {
    v4 = +[MapsUIImageCache sharedCache];
    insetImageSideLength = self->_insetImageSideLength;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B2644;
    v7[3] = &unk_101650EA8;
    objc_copyWeak(&v8, &location);
    [v4 getImageForContact:v3 size:v7 completion:insetImageSideLength];

    objc_destroyWeak(&v8);
  }

  else
  {
    v6 = [UIImage imageNamed:@"SharedTrip"];
    [(UIImageView *)self->_imageView setImage:v6];
  }

  objc_destroyWeak(&location);
}

- (id)contact
{
  v2 = [(SharedTripContactAnnotationView *)self state];
  v3 = [v2 senderInfo];
  v4 = [v3 localContactIdentifier];

  if (v4)
  {
    v5 = +[AddressBookManager sharedManager];
    v6 = [v2 senderInfo];
    v7 = [v6 localContactIdentifier];
    v8 = [v5 contactForCNContactIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)state
{
  v2 = [(SharedTripContactAnnotationView *)self annotation];
  v3 = [v2 state];

  return v3;
}

- (void)setAnnotation:(id)a3
{
  v4.receiver = self;
  v4.super_class = SharedTripContactAnnotationView;
  [(SharedTripContactAnnotationView *)&v4 setAnnotation:a3];
  [(SharedTripContactAnnotationView *)self loadImage];
}

- (SharedTripContactAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4 imageSideLength:(double)a5
{
  v27.receiver = self;
  v27.super_class = SharedTripContactAnnotationView;
  v6 = [(SharedTripContactAnnotationView *)&v27 initWithAnnotation:a3 reuseIdentifier:a4];
  v7 = v6;
  if (v6)
  {
    v6->_desiredImageSideLength = a5;
    v6->_insetImageSideLength = a5 + -4.0;
    v8 = [[UIView alloc] initWithFrame:{0.0, 0.0, v6->_desiredImageSideLength, v6->_desiredImageSideLength}];
    v9 = +[UIColor whiteColor];
    [v8 setBackgroundColor:v9];

    [v8 setClipsToBounds:1];
    v10 = v7->_desiredImageSideLength * 0.5;
    v11 = [v8 layer];
    [v11 setCornerRadius:v10];

    [(SharedTripContactAnnotationView *)v7 addSubview:v8];
    v12 = [[UIImageView alloc] initWithFrame:{2.0, 2.0, v7->_insetImageSideLength, v7->_insetImageSideLength}];
    imageView = v7->_imageView;
    v7->_imageView = v12;

    [(UIImageView *)v7->_imageView setContentMode:1];
    [(UIImageView *)v7->_imageView setClipsToBounds:1];
    v14 = v7->_insetImageSideLength * 0.5;
    v15 = [(UIImageView *)v7->_imageView layer];
    [v15 setCornerRadius:v14];

    [(SharedTripContactAnnotationView *)v7 addSubview:v7->_imageView];
    [(SharedTripContactAnnotationView *)v7 setCanShowCallout:0];
    v16 = +[UIColor whiteColor];
    [(SharedTripContactAnnotationView *)v7 setBackgroundColor:v16];

    v17 = v7->_desiredImageSideLength * 0.5;
    v18 = [(SharedTripContactAnnotationView *)v7 layer];
    [v18 setCornerRadius:v17];

    v19 = [(SharedTripContactAnnotationView *)v7 layer];
    [v19 setShadowRadius:4.0];

    v20 = [(SharedTripContactAnnotationView *)v7 layer];
    [v20 setShadowOffset:{0.0, 0.0}];

    v21 = +[UIColor systemBlackColor];
    v22 = [v21 CGColor];
    v23 = [(SharedTripContactAnnotationView *)v7 layer];
    [v23 setShadowColor:v22];

    v24 = [(SharedTripContactAnnotationView *)v7 layer];
    LODWORD(v25) = 0.25;
    [v24 setShadowOpacity:v25];

    [(SharedTripContactAnnotationView *)v7 loadImage];
  }

  return v7;
}

@end