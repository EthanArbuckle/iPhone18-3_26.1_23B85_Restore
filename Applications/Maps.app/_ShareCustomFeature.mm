@interface _ShareCustomFeature
+ (id)customFeatureForMapItem:(id)a3;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_ShareCustomFeature)initWithCustomFeature:(id)a3 coordinate:(id)a4;
@end

@implementation _ShareCustomFeature

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (_ShareCustomFeature)initWithCustomFeature:(id)a3 coordinate:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = _ShareCustomFeature;
  v9 = [(_ShareCustomFeature *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feature, a3);
    v10->_coordinate.latitude = var0;
    v10->_coordinate.longitude = var1;
    v11 = v10;
  }

  return v10;
}

+ (id)customFeatureForMapItem:(id)a3
{
  v3 = a3;
  [v3 _coordinate];
  v5 = v4;
  [v3 _coordinate];
  v7 = v6;
  v8 = [[VKCustomFeature alloc] initWithCoordinate:{v5, v6}];
  v9 = [v3 _styleAttributes];
  if (![v9 hasAttributes] || objc_msgSend(v9, "isLabelPOI"))
  {
    v10 = +[GEOFeatureStyleAttributes markerStyleAttributes];

    v9 = v10;
  }

  v11 = [v9 copy];

  v15 = xmmword_101216390;
  v16 = 0x100010024;
  [v11 replaceAttributes:&v15 count:3];
  [v8 setStyleAttributes:v11];
  v12 = [v3 name];
  [v8 setText:v12 locale:0];

  v13 = [[_ShareCustomFeature alloc] initWithCustomFeature:v8 coordinate:v5, v7];

  return v13;
}

@end