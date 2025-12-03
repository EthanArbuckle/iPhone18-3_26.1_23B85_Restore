@interface SharedTripContactAnnotationView
- (SharedTripContactAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier imageSideLength:(double)length;
- (id)contact;
- (id)state;
- (void)loadImage;
- (void)setAnnotation:(id)annotation;
@end

@implementation SharedTripContactAnnotationView

- (void)loadImage
{
  contact = [(SharedTripContactAnnotationView *)self contact];
  objc_initWeak(&location, self);
  if (contact)
  {
    v4 = +[MapsUIImageCache sharedCache];
    insetImageSideLength = self->_insetImageSideLength;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1005B2644;
    v7[3] = &unk_101650EA8;
    objc_copyWeak(&v8, &location);
    [v4 getImageForContact:contact size:v7 completion:insetImageSideLength];

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
  state = [(SharedTripContactAnnotationView *)self state];
  senderInfo = [state senderInfo];
  localContactIdentifier = [senderInfo localContactIdentifier];

  if (localContactIdentifier)
  {
    v5 = +[AddressBookManager sharedManager];
    senderInfo2 = [state senderInfo];
    localContactIdentifier2 = [senderInfo2 localContactIdentifier];
    v8 = [v5 contactForCNContactIdentifier:localContactIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)state
{
  annotation = [(SharedTripContactAnnotationView *)self annotation];
  state = [annotation state];

  return state;
}

- (void)setAnnotation:(id)annotation
{
  v4.receiver = self;
  v4.super_class = SharedTripContactAnnotationView;
  [(SharedTripContactAnnotationView *)&v4 setAnnotation:annotation];
  [(SharedTripContactAnnotationView *)self loadImage];
}

- (SharedTripContactAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier imageSideLength:(double)length
{
  v27.receiver = self;
  v27.super_class = SharedTripContactAnnotationView;
  v6 = [(SharedTripContactAnnotationView *)&v27 initWithAnnotation:annotation reuseIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    v6->_desiredImageSideLength = length;
    v6->_insetImageSideLength = length + -4.0;
    v8 = [[UIView alloc] initWithFrame:{0.0, 0.0, v6->_desiredImageSideLength, v6->_desiredImageSideLength}];
    v9 = +[UIColor whiteColor];
    [v8 setBackgroundColor:v9];

    [v8 setClipsToBounds:1];
    v10 = v7->_desiredImageSideLength * 0.5;
    layer = [v8 layer];
    [layer setCornerRadius:v10];

    [(SharedTripContactAnnotationView *)v7 addSubview:v8];
    v12 = [[UIImageView alloc] initWithFrame:{2.0, 2.0, v7->_insetImageSideLength, v7->_insetImageSideLength}];
    imageView = v7->_imageView;
    v7->_imageView = v12;

    [(UIImageView *)v7->_imageView setContentMode:1];
    [(UIImageView *)v7->_imageView setClipsToBounds:1];
    v14 = v7->_insetImageSideLength * 0.5;
    layer2 = [(UIImageView *)v7->_imageView layer];
    [layer2 setCornerRadius:v14];

    [(SharedTripContactAnnotationView *)v7 addSubview:v7->_imageView];
    [(SharedTripContactAnnotationView *)v7 setCanShowCallout:0];
    v16 = +[UIColor whiteColor];
    [(SharedTripContactAnnotationView *)v7 setBackgroundColor:v16];

    v17 = v7->_desiredImageSideLength * 0.5;
    layer3 = [(SharedTripContactAnnotationView *)v7 layer];
    [layer3 setCornerRadius:v17];

    layer4 = [(SharedTripContactAnnotationView *)v7 layer];
    [layer4 setShadowRadius:4.0];

    layer5 = [(SharedTripContactAnnotationView *)v7 layer];
    [layer5 setShadowOffset:{0.0, 0.0}];

    v21 = +[UIColor systemBlackColor];
    cGColor = [v21 CGColor];
    layer6 = [(SharedTripContactAnnotationView *)v7 layer];
    [layer6 setShadowColor:cGColor];

    layer7 = [(SharedTripContactAnnotationView *)v7 layer];
    LODWORD(v25) = 0.25;
    [layer7 setShadowOpacity:v25];

    [(SharedTripContactAnnotationView *)v7 loadImage];
  }

  return v7;
}

@end