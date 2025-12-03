@interface RidesharingPOIAnnotation
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (RidesharingPOIAnnotation)initWithMapItem:(id)item;
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

- (RidesharingPOIAnnotation)initWithMapItem:(id)item
{
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = RidesharingPOIAnnotation;
  v5 = [(RidesharingPOIAnnotation *)&v18 init];
  if (v5)
  {
    [itemCopy _coordinate];
    v7 = v6;
    [itemCopy _coordinate];
    v9 = v8;
    v10 = [[VKCustomFeature alloc] initWithCoordinate:{v7, v8}];
    _geoMapItem = [itemCopy _geoMapItem];
    _hasMUID = [_geoMapItem _hasMUID];

    if (_hasMUID)
    {
      [itemCopy _styleAttributes];
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
    name = [itemCopy name];
    [v10 setText:name locale:0];

    feature = v5->_feature;
    v5->_feature = v10;

    v5->_coordinate.latitude = v7;
    v5->_coordinate.longitude = v9;
  }

  return v5;
}

@end