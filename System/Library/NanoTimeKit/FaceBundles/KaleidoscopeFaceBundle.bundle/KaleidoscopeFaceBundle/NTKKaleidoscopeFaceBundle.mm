@interface NTKKaleidoscopeFaceBundle
+ (id)identifier;
- (id)defaultFaceForDevice:(id)device;
- (id)heroLegacyDefaultFacesForDevice:(id)device;
@end

@implementation NTKKaleidoscopeFaceBundle

+ (id)identifier
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___NTKKaleidoscopeFaceBundle;
  v3 = objc_msgSendSuper2(&v7, "identifier");
  v4 = NSStringFromClass(self);
  v5 = [NSString stringWithFormat:@"%@.%@", v3, v4];

  return v5;
}

- (id)defaultFaceForDevice:(id)device
{
  deviceCopy = device;
  if (NTKShowBlueRidgeUI())
  {
    v4 = 223;
  }

  else
  {
    v4 = 23;
  }

  v5 = [NTKFace defaultFaceOfStyle:v4 forDevice:deviceCopy];

  return v5;
}

- (id)heroLegacyDefaultFacesForDevice:(id)device
{
  deviceCopy = device;
  v4 = [NTKFace defaultFaceOfStyle:23 forDevice:deviceCopy];
  if (v4)
  {
    v5 = [NTKKaleidoscopeStyleOption optionWithStyle:3 forDevice:deviceCopy];
    [v4 selectOption:v5 forCustomEditMode:15 slot:0];

    v6 = [NTKKaleidoscopeAssetOption optionWithAsset:13 forDevice:deviceCopy];
    [v4 selectOption:v6 forCustomEditMode:12 slot:0];

    v7 = +[NTKKaleidoscopeFacesGalleryCollection complicationTypesBySlot];
    [v4 _setFaceGalleryComplicationTypesForSlots:v7];

    v10 = v4;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  return v8;
}

@end