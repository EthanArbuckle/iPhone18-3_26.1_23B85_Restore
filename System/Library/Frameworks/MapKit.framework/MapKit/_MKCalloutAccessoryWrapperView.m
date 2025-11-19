@interface _MKCalloutAccessoryWrapperView
- (CGSize)intrinsicContentSize;
- (_MKCalloutAccessoryWrapperView)initWithView:(id)a3;
@end

@implementation _MKCalloutAccessoryWrapperView

- (CGSize)intrinsicContentSize
{
  [(_MKCalloutAccessoryView *)self->_view bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (_MKCalloutAccessoryWrapperView)initWithView:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _MKCalloutAccessoryWrapperView;
  v6 = [(_MKCalloutAccessoryWrapperView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
    view = v7->_view;
    if (view)
    {
      [(_MKCalloutAccessoryView *)view bounds];
      [(_MKCalloutAccessoryView *)v7->_view setFrame:?];
      [(_MKCalloutAccessoryWrapperView *)v7 addSubview:v7->_view];
      view = v7->_view;
    }

    [(_MKCalloutAccessoryView *)view bounds];
    [(_MKCalloutAccessoryWrapperView *)v7 setBounds:?];
    LODWORD(v9) = 1148846080;
    [(UIView *)v7 _mapkit_setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(UIView *)v7 _mapkit_setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v11) = 1148846080;
    [(UIView *)v7 _mapkit_setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIView *)v7 _mapkit_setContentHuggingPriority:0 forAxis:v12];
    [(_MKCalloutAccessoryWrapperView *)v7 setClipsToBounds:!_MKLinkedOnOrAfterReleaseSet(2310)];
    v13 = v7;
  }

  return v7;
}

@end