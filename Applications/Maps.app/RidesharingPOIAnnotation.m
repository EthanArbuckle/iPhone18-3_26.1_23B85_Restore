@interface RidesharingPOIAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (RidesharingPOIAnnotation)initWithMapItem:(id)a3;
@end

@implementation RidesharingPOIAnnotation

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (RidesharingPOIAnnotation)initWithMapItem:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = RidesharingPOIAnnotation;
  v5 = [(RidesharingPOIAnnotation *)&v18 init];
  if (v5)
  {
    [v4 _coordinate];
    v7 = v6;
    [v4 _coordinate];
    v9 = v8;
    v10 = [[VKCustomFeature alloc] initWithCoordinate:{v7, v8}];
    v11 = [v4 _geoMapItem];
    v12 = [v11 _hasMUID];

    if (v12)
    {
      [v4 _styleAttributes];
    }

    else
    {
      +[GEOFeatureStyleAttributes markerStyleAttributes];
    }
    v13 = ;
    v14 = [v13 copy];

    v19 = xmmword_101212CA0;
    [v14 replaceAttributes:&v19 count:2];
    [v10 setStyleAttributes:v14];
    v15 = [v4 name];
    [v10 setText:v15 locale:0];

    feature = v5->_feature;
    v5->_feature = v10;

    v5->_coordinate.latitude = v7;
    v5->_coordinate.longitude = v9;
  }

  return v5;
}

@end