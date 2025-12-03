@interface _MAMapSnippetCustomFeature
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_MAMapSnippetCustomFeature)initWithCustomFeature:(id)feature coordinate:(id)coordinate;
@end

@implementation _MAMapSnippetCustomFeature

- (_MAMapSnippetCustomFeature)initWithCustomFeature:(id)feature coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  featureCopy = feature;
  v13.receiver = self;
  v13.super_class = _MAMapSnippetCustomFeature;
  v9 = [(_MAMapSnippetCustomFeature *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feature, feature);
    v10->_coordinate.latitude = var0;
    v10->_coordinate.longitude = var1;
    v10->_showsBalloonCallout = 1;
    v11 = v10;
  }

  return v10;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end