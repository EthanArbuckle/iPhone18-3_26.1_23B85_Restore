@interface NTKVivaldiFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)complicationConfiguration;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)pigmentOptionProvider;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKVivaldiFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = _os_feature_enabled_impl();
  LOBYTE(v5) = 1;
  if ([deviceCopy deviceCategory] != 1 && v4)
  {
    v5 = [deviceCopy supportsPDRCapability:3887189377] ^ 1;
  }

  return v5;
}

+ (id)complicationConfiguration
{
  if (qword_27E1EE780 != -1)
  {
    sub_23C0AC8EC();
  }

  v3 = qword_27E1EE778;

  return v3;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKVivaldiFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKVivaldiFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKVivaldiFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___NTKVivaldiFace;
  v4 = objc_msgSendSuper2(&v6, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, device);

  return v4;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKVivaldiFace *)self _faceDescriptionKey];
  v3 = [(NTKFaceBundle *)NTKVivaldiFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_284EDE7A8];

  return v3;
}

- (id)pigmentOptionProvider
{
  device = [(NTKFace *)self device];
  isRunningNapiliGMOrLater = [device isRunningNapiliGMOrLater];

  if (isRunningNapiliGMOrLater)
  {
    pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
    if (!pigmentEditOptionProvider)
    {
      pigmentFaceDomain = [objc_opt_class() pigmentFaceDomain];
      v7 = [pigmentFaceDomain stringByAppendingString:@"-F2025"];

      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [objc_alloc(MEMORY[0x277D2C0B8]) initWithDomain:v7 bundle:v8];
      v10 = self->_pigmentEditOptionProvider;
      self->_pigmentEditOptionProvider = v9;

      pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
    }

    pigmentOptionProvider = pigmentEditOptionProvider;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKVivaldiFace;
    pigmentOptionProvider = [(NTKFace *)&v13 pigmentOptionProvider];
  }

  return pigmentOptionProvider;
}

@end