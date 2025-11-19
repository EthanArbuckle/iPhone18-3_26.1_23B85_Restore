@interface _MAMapSnippetCustomFeature
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (_MAMapSnippetCustomFeature)initWithCustomFeature:(id)a3 coordinate:(id)a4;
@end

@implementation _MAMapSnippetCustomFeature

- (_MAMapSnippetCustomFeature)initWithCustomFeature:(id)a3 coordinate:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  v13.receiver = self;
  v13.super_class = _MAMapSnippetCustomFeature;
  v9 = [(_MAMapSnippetCustomFeature *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feature, a3);
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