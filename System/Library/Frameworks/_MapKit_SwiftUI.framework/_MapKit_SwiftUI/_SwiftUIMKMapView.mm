@interface _SwiftUIMKMapView
- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithCoder:(id)coder;
- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)frame;
- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)frame locationManager:(id)manager;
@end

@implementation _SwiftUIMKMapView

- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _SwiftUIMKMapView();
  return [(_SwiftUIMKMapView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _SwiftUIMKMapView();
  coderCopy = coder;
  v5 = [(_SwiftUIMKMapView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)frame locationManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for _SwiftUIMKMapView();
  managerCopy = manager;
  height = [(_SwiftUIMKMapView *)&v12 initWithFrame:managerCopy locationManager:x, y, width, height];

  if (height)
  {
  }

  return height;
}

@end