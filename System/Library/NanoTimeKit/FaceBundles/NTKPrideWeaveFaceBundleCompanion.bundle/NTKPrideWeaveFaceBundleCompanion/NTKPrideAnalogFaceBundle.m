@interface NTKPrideAnalogFaceBundle
+ (id)identifier;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryRowPrioritiesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKPrideAnalogFaceBundle

+ (id)identifier
{
  v3 = [NSBundle bundleForClass:a1];
  v4 = [v3 bundleIdentifier];
  v5 = NSStringFromClass(a1);
  v6 = [NSString stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 233;
  }

  else
  {
    v4 = 33;
  }

  v5 = [NTKPrideAnalogFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

- (id)galleryTitleForDevice:(id)a3
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKPrideAnalogFaceBundle localizedStringForKey:@"FACE_STYLE_PRIDE_ANALOG_IN_TITLE_CASE" table:@"PrideAnalog" comment:@"Pride Analog"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryRowPrioritiesForDevice:(id)a3
{
  v5 = &off_25848;
  v6 = &off_25860;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKPrideAnalogFaceBundle *)self defaultFaceForDevice:v4];
    v6 = [NTKPrideStyleEditOption optionWithStyle:2 forDevice:v4];
    [v5 selectOption:v6 forCustomEditMode:12 slot:0];

    v7 = [NTKPrideAnalogShapeEditOption optionWithStyle:1 forDevice:v4];
    [v5 selectOption:v7 forCustomEditMode:15 slot:0];

    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:14 zOrder:4000];
    v15[0] = v8;
    v9 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:3 zOrder:4000];
    v15[1] = v9;
    v10 = [NSArray arrayWithObjects:v15 count:2];
    [v5 setCurationPlacements:v10];

    v14 = v5;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKPrideAnalogFaceBundle;
    v11 = [(NTKPrideAnalogFaceBundle *)&v13 galleryFacesForDevice:v4];
  }

  return v11;
}

@end