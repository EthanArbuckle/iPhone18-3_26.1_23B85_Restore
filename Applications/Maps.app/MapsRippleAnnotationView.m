@interface MapsRippleAnnotationView
- (MapsRippleAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4;
@end

@implementation MapsRippleAnnotationView

- (MapsRippleAnnotationView)initWithAnnotation:(id)a3 reuseIdentifier:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MapsRippleAnnotationView;
  v7 = [(MapsRippleAnnotationView *)&v11 initWithAnnotation:v6 reuseIdentifier:a4];
  if (v7)
  {
    v8 = [v6 rippleView];
    [v8 frame];
    [(MapsRippleAnnotationView *)v7 setFrame:?];

    v9 = [v6 rippleView];
    [(MapsRippleAnnotationView *)v7 addSubview:v9];
  }

  return v7;
}

@end