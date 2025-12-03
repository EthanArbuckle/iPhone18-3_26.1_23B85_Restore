@interface NTKActivityDigitalFaceBundle
+ (id)identifier;
- (id)defaultFaceForDevice:(id)device;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryTitleForDevice:(id)device;
@end

@implementation NTKActivityDigitalFaceBundle

+ (id)identifier
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___NTKActivityDigitalFaceBundle;
  v3 = objc_msgSendSuper2(&v7, "identifier");
  v4 = NSStringFromClass(self);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  return v5;
}

- (id)galleryTitleForDevice:(id)device
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

- (id)galleryFacesForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowGalleryLiteUI())
  {
    v5 = [(NTKActivityDigitalFaceBundle *)self defaultFaceForDevice:deviceCopy];

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
    deviceCopy = v5;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NTKActivityDigitalFaceBundle;
    v10 = [(NTKActivityDigitalFaceBundle *)&v12 galleryFacesForDevice:deviceCopy];
  }

  return v10;
}

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 217;
  }

  else
  {
    v4 = 17;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

@end