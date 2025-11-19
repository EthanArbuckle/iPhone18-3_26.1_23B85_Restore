@interface NTKVivaldiFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)pigmentOptionProvider;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKVivaldiFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = _os_feature_enabled_impl();
  LOBYTE(v5) = 1;
  if ([v3 deviceCategory] != 1 && v4)
  {
    v5 = [v3 supportsPDRCapability:3887189377] ^ 1;
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKVivaldiFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKVivaldiFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKVivaldiFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___NTKVivaldiFace;
  v4 = objc_msgSendSuper2(&v6, sel__localizedNameOverrideForCustomEditMode_forDevice_, a3, a4);

  return v4;
}

- (id)_faceDescription
{
  v2 = [(NTKVivaldiFace *)self _faceDescriptionKey];
  v3 = [(NTKFaceBundle *)NTKVivaldiFaceBundle localizedStringForKey:v2 comment:&stru_284EDE7A8];

  return v3;
}

- (id)pigmentOptionProvider
{
  v3 = [(NTKFace *)self device];
  v4 = [v3 isRunningNapiliGMOrLater];

  if (v4)
  {
    pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
    if (!pigmentEditOptionProvider)
    {
      v6 = [objc_opt_class() pigmentFaceDomain];
      v7 = [v6 stringByAppendingString:@"-F2025"];

      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [objc_alloc(MEMORY[0x277D2C0B8]) initWithDomain:v7 bundle:v8];
      v10 = self->_pigmentEditOptionProvider;
      self->_pigmentEditOptionProvider = v9;

      pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
    }

    v11 = pigmentEditOptionProvider;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKVivaldiFace;
    v11 = [(NTKFace *)&v13 pigmentOptionProvider];
  }

  return v11;
}

@end