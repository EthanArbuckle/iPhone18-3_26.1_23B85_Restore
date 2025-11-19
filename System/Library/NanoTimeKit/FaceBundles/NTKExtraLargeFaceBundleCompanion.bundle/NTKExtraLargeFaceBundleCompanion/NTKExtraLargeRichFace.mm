@interface NTKExtraLargeRichFace
+ (id)_complicationSlotDescriptors;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultBackgroundOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)pigmentOptionProvider;
@end

@implementation NTKExtraLargeRichFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllGraphicExtraLargeComplicationTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKMultiFamilyComplicationSlotDescriptor();

  v7 = NTKComplicationSlotCenter;
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5 = NTKComplicationSlotCenter;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)pigmentOptionProvider
{
  pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
  if (!pigmentEditOptionProvider)
  {
    v4 = [objc_opt_class() pigmentFaceDomain];
    v5 = [(NTKExtraLargeRichFace *)self device];
    v6 = NTKShowGossamerUI();

    if (v6)
    {
      v7 = [v4 stringByAppendingString:@"-Gossamer"];

      v4 = v7;
    }

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [[NTKPigmentEditOptionProvider alloc] initWithDomain:v4 bundle:v8];
    v10 = self->_pigmentEditOptionProvider;
    self->_pigmentEditOptionProvider = v9;

    pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
  }

  return pigmentEditOptionProvider;
}

- (id)_customEditModes
{
  v3 = [(NTKExtraLargeRichFace *)self device];
  v4 = NTKShowGossamerUI();

  if (v4)
  {
    v5 = [(NTKExtraLargeRichFace *)self device];
    v6 = NTKShowIndicScriptNumerals();

    if (v6)
    {
      v7 = &off_10C98;
    }

    else
    {
      v7 = &off_10CB0;
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKExtraLargeRichFace;
    v7 = [(NTKExtraLargeFace *)&v9 _customEditModes];
  }

  return v7;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 19:
      CLKLocaleNumberSystemForFirstLanguage();
      v9 = NTKNumeralOptionFromCLKLocaleNumberSystem();
      v10 = [(NTKExtraLargeRichFace *)self device];
      v8 = [NTKNumeralEditOption optionWithNumeral:v9 forDevice:v10];

      break;
    case 17:
      v7 = [(NTKExtraLargeRichFace *)self _defaultBackgroundOption];
      goto LABEL_6;
    case 10:
      v12.receiver = self;
      v12.super_class = NTKExtraLargeRichFace;
      v7 = [(NTKExtraLargeFace *)&v12 _defaultOptionForCustomEditMode:10 slot:v6];
LABEL_6:
      v8 = v7;
      break;
    default:
      v8 = 0;
      break;
  }

  return v8;
}

- (id)_defaultBackgroundOption
{
  v2 = [(NTKExtraLargeRichFace *)self device];
  v3 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:0 forDevice:v2];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
  {
    case 10:
      v4 = NTKFaceColorModularEditOption_ptr;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 19:
      v4 = NTKNumeralEditOption_ptr;
      goto LABEL_7;
    case 17:
      v4 = NTKFaceBackgroundStyleEditOption_ptr;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

@end