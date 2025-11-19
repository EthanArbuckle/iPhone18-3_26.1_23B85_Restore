@interface _SwiftUIMKMapView
- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithCoder:(id)a3;
- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)a3;
- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)a3 locationManager:(id)a4;
@end

@implementation _SwiftUIMKMapView

- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _SwiftUIMKMapView();
  return [(_SwiftUIMKMapView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _SwiftUIMKMapView();
  v4 = a3;
  v5 = [(_SwiftUIMKMapView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC15_MapKit_SwiftUI17_SwiftUIMKMapView)initWithFrame:(CGRect)a3 locationManager:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = type metadata accessor for _SwiftUIMKMapView();
  v9 = a4;
  v10 = [(_SwiftUIMKMapView *)&v12 initWithFrame:v9 locationManager:x, y, width, height];

  if (v10)
  {
  }

  return v10;
}

@end