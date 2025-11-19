@interface NTKActivityDigitalFaceBundle
+ (id)identifier;
- (id)defaultFaceForDevice:(id)a3;
- (id)galleryFacesForDevice:(id)a3;
- (id)galleryTitleForDevice:(id)a3;
@end

@implementation NTKActivityDigitalFaceBundle

+ (id)identifier
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NTKActivityDigitalFaceBundle;
  v3 = objc_msgSendSuper2(&v7, "identifier");
  v4 = NSStringFromClass(a1);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  return v5;
}

- (id)galleryTitleForDevice:(id)a3
{
  if (NTKShowGalleryLiteUI())
  {
    v3 = [NTKActivityDigitalFaceBundle localizedStringForKey:@"FACE_STYLE_ACTIVITY_DIGITAL_IN_TITLE_CASE" comment:@"Activity Digital"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)galleryFacesForDevice:(id)a3
{
  v4 = a3;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKActivityDigitalFaceBundle *)self defaultFaceForDevice:v4];

    v15[0] = NTKComplicationSlotTopLeft;
    v15[1] = NTKComplicationSlotTopRight;
    v16[0] = &off_21D10;
    v16[1] = &off_21D28;
    v15[2] = NTKComplicationSlotBottomCenter;
    v16[2] = &off_21D40;
    v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    [v5 _setFaceGalleryComplicationTypesForSlots:v6];

    v7 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:9 zOrder:9000];
    v14[0] = v7;
    v8 = [NTKFaceCurationPlacementValue placementWithWatchOS12Group:2 zOrder:4000];
    v14[1] = v8;
    v9 = [NSArray arrayWithObjects:v14 count:2];
    [v5 setCurationPlacements:v9];

    v13 = v5;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v4 = v5;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NTKActivityDigitalFaceBundle;
    v10 = [(NTKActivityDigitalFaceBundle *)&v12 galleryFacesForDevice:v4];
  }

  return v10;
}

- (id)defaultFaceForDevice:(id)a3
{
  v3 = a3;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 217;
  }

  else
  {
    v4 = 17;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:v3];

  return v5;
}

@end