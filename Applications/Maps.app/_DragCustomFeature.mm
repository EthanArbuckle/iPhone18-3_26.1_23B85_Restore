@interface _DragCustomFeature
+ (id)customFeatureForMapItem:(id)item;
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_DragCustomFeature)initWithCustomFeature:(id)feature coordinate:(id)coordinate;
@end

@implementation _DragCustomFeature

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

- (_DragCustomFeature)initWithCustomFeature:(id)feature coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  featureCopy = feature;
  v13.receiver = self;
  v13.super_class = _DragCustomFeature;
  v9 = [(_DragCustomFeature *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feature, feature);
    v10->_coordinate.latitude = var0;
    v10->_coordinate.longitude = var1;
    v11 = v10;
  }

  return v10;
}

+ (id)customFeatureForMapItem:(id)item
{
  itemCopy = item;
  [itemCopy _coordinate];
  v5 = v4;
  [itemCopy _coordinate];
  v7 = v6;
  v8 = [[VKCustomFeature alloc] initWithCoordinate:{v5, v6}];
  _styleAttributes = [itemCopy _styleAttributes];
  if (([_styleAttributes hasAttributes] & 1) == 0)
  {
    v10 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{4, 226, 5, 3, 6, 348, 10, 0, 0}];

    _styleAttributes = v10;
  }

  v11 = [_styleAttributes copy];

  v15 = xmmword_101216390;
  v16 = 0x100010024;
  [v11 replaceAttributes:&v15 count:3];
  [v8 setStyleAttributes:v11];
  name = [itemCopy name];
  [v8 setText:name locale:0];

  v13 = [[_DragCustomFeature alloc] initWithCustomFeature:v8 coordinate:v5, v7];

  return v13;
}

@end