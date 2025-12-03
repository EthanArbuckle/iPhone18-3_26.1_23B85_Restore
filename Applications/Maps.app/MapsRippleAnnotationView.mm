@interface MapsRippleAnnotationView
- (MapsRippleAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier;
@end

@implementation MapsRippleAnnotationView

- (MapsRippleAnnotationView)initWithAnnotation:(id)annotation reuseIdentifier:(id)identifier
{
  annotationCopy = annotation;
  v11.receiver = self;
  v11.super_class = MapsRippleAnnotationView;
  v7 = [(MapsRippleAnnotationView *)&v11 initWithAnnotation:annotationCopy reuseIdentifier:identifier];
  if (v7)
  {
    rippleView = [annotationCopy rippleView];
    [rippleView frame];
    [(MapsRippleAnnotationView *)v7 setFrame:?];

    rippleView2 = [annotationCopy rippleView];
    [(MapsRippleAnnotationView *)v7 addSubview:rippleView2];
  }

  return v7;
}

@end