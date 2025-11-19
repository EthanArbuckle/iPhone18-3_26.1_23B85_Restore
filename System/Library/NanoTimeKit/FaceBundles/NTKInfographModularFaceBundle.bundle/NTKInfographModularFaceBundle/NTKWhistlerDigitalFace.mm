@interface NTKWhistlerDigitalFace
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_customEditModes;
- (id)_defaultBackgroundOption;
- (id)_defaultColorOption;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)a3;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)faceSharingName;
- (id)pigmentOptionProvider;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKWhistlerDigitalFace

- (id)faceSharingName
{
  v2 = [(NTKWhistlerDigitalFace *)self device];
  v3 = NTKShowBlueRidgeUI();

  if (v3)
  {
    v4 = [@"FACE_NAME_IN_TITLE_CASE" stringByAppendingString:@"_KINCAID"];
  }

  else
  {
    v4 = @"FACE_NAME_IN_TITLE_CASE";
  }

  v5 = [NTKInfographModularFaceBundle localizedStringForKey:v4 table:@"InfographModular" comment:@"Infograph Modular"];

  return v5;
}

- (id)_faceDescription
{
  v2 = [(NTKWhistlerDigitalFace *)self device];
  v3 = NTKShowBlueRidgeUI();

  if (v3)
  {
    v4 = [@"FACE_DESCRIPTION" stringByAppendingString:@"_KINCAID"];
  }

  else
  {
    v4 = @"FACE_DESCRIPTION";
  }

  v5 = [NTKInfographModularFaceBundle localizedStringForKey:v4 table:@"InfographModular" comment:@"description"];

  return v5;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKAllSignatureRectangularTypes();
  v4 = +[CLKDevice currentDevice];
  v23 = v3;
  v17 = v4;
  if ([v4 isTinker])
  {
    [v4 isRunningNapiliGMOrLater];
    v26[0] = NTKComplicationSlotTopLeft;
    v22 = NTKComplicationTypeRankedListWithDefaultTypes();
    v21 = NTKComplicationSlotDescriptor();
    v27[0] = v21;
    v26[1] = NTKComplicationSlotBottomLeft;
    v20 = NTKComplicationTypeRankedListWithDefaultTypes();
    v19 = NTKComplicationSlotDescriptor();
    v27[1] = v19;
    v26[2] = NTKComplicationSlotBottomCenter;
    v5 = NTKComplicationTypeRankedListWithDefaultTypes();
    v6 = NTKComplicationSlotDescriptor();
    v27[2] = v6;
    v26[3] = NTKComplicationSlotBottomRight;
    v7 = NTKComplicationTypeRankedListWithDefaultTypes();
    v8 = NTKComplicationSlotDescriptor();
    v27[3] = v8;
    v26[4] = NTKComplicationSlotCenter;
    v9 = NTKComplicationTypeRankedListWithDefaultTypes();
    v10 = NTKComplicationSlotDescriptor();
    v27[4] = v10;
    v26[5] = NTKComplicationSlotDate;
    v11 = NTKWrappedDateComplicationType();
    v12 = NTKComplicationSlotDescriptor();
    v27[5] = v12;
    v13 = v27;
    v14 = v26;
  }

  else
  {
    v24[0] = NTKComplicationSlotTopLeft;
    v22 = NTKComplicationTypeRankedListWithDefaultTypes();
    v21 = NTKComplicationSlotDescriptor();
    v25[0] = v21;
    v24[1] = NTKComplicationSlotBottomLeft;
    v20 = NTKComplicationTypeRankedListWithDefaultTypes();
    v19 = NTKComplicationSlotDescriptor();
    v25[1] = v19;
    v24[2] = NTKComplicationSlotBottomCenter;
    v5 = NTKComplicationTypeRankedListWithDefaultTypes();
    v6 = NTKComplicationSlotDescriptor();
    v25[2] = v6;
    v24[3] = NTKComplicationSlotBottomRight;
    v7 = NTKComplicationTypeRankedListWithDefaultTypes();
    v8 = NTKComplicationSlotDescriptor();
    v25[3] = v8;
    v24[4] = NTKComplicationSlotCenter;
    v9 = NTKComplicationTypeRankedListWithDefaultTypes();
    v10 = NTKComplicationSlotDescriptor();
    v25[4] = v10;
    v24[5] = NTKComplicationSlotDate;
    v11 = NTKWrappedDateComplicationType();
    v12 = NTKComplicationSlotDescriptor();
    v25[5] = v12;
    v13 = v25;
    v14 = v24;
  }

  v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:6, v17];

  return v15;
}

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isRunningGraceOrLater])
  {
    if ([v5 isEqualToString:NTKComplicationSlotCenter])
    {
      v7 = &NTKBundleComplicationNoiseAppBundleIdentifier;
      v8 = &NTKBundleComplicationNoiseBundleIdentifier;
LABEL_4:
      v9 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:*v8 appBundleIdentifier:*v7 complicationDescriptor:0];
      goto LABEL_9;
    }

    if ([v5 isEqualToString:NTKComplicationSlotBottomCenter] && objc_msgSend(v6, "supportsUrsa"))
    {
      v7 = &NTKBundleComplicationUrsaAppBundleIdentifier;
      v8 = &NTKBundleComplicationUrsaCompassBundleIdentifier;
      goto LABEL_4;
    }
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotDate;
  v4[2] = NTKComplicationSlotCenter;
  v4[3] = NTKComplicationSlotBottomLeft;
  v4[4] = NTKComplicationSlotBottomCenter;
  v4[5] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotBottomLeft;
  v5[2] = NTKComplicationSlotBottomCenter;
  v5[3] = NTKComplicationSlotBottomRight;
  v5[4] = NTKComplicationSlotCenter;
  v3 = [NSArray arrayWithObjects:v5 count:5];

  return v3;
}

- (id)_customEditModes
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(NTKWhistlerDigitalFace *)self device];
  v5 = NTKShowGossamerUI();

  if (v5)
  {
    [v3 addObject:&off_12618];
  }

  v6 = [(NTKWhistlerDigitalFace *)self device];
  v7 = NTKShowIndicScriptNumerals();

  if (v7)
  {
    [v3 addObject:&off_12630];
  }

  [v3 addObject:&off_12648];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 19:
      CLKLocaleNumberSystemForFirstLanguage();
      v9 = NTKNumeralOptionFromCLKLocaleNumberSystem();
      v10 = [(NTKWhistlerDigitalFace *)self device];
      v8 = [NTKNumeralEditOption optionWithNumeral:v9 forDevice:v10];

      break;
    case 17:
      v7 = [(NTKWhistlerDigitalFace *)self _defaultBackgroundOption];
      goto LABEL_6;
    case 10:
      v7 = [(NTKWhistlerDigitalFace *)self _defaultColorOption];
LABEL_6:
      v8 = v7;
      break;
    default:
      v8 = 0;
      break;
  }

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKWhistlerDigitalFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKWhistlerDigitalFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKWhistlerDigitalFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKWhistlerDigitalFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKWhistlerDigitalFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKWhistlerDigitalFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
  {
    case 10:
      v4 = NTKFaceColorMonochromeEditOption_ptr;
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

- (id)_defaultColorOption
{
  v3 = [(NTKWhistlerDigitalFace *)self device];
  v4 = NTKDefaultFaceColorForDeviceCollection();

  v5 = [(NTKWhistlerDigitalFace *)self device];
  v6 = [NTKFaceColorMonochromeEditOption optionWithFaceColor:v4 forDevice:v5];

  return v6;
}

- (id)_defaultBackgroundOption
{
  v2 = [(NTKWhistlerDigitalFace *)self device];
  v3 = [NTKFaceBackgroundStyleEditOption optionWithBackgroundStyle:0 forDevice:v2];

  return v3;
}

- (id)pigmentOptionProvider
{
  v3 = [(NTKWhistlerDigitalFace *)self device];
  v4 = NTKShowGossamerUI();

  if (self->_isGossamerPigmentEditOptionProvider != v4)
  {
    pigmentEditOptionProvider = self->_pigmentEditOptionProvider;
    self->_pigmentEditOptionProvider = 0;
  }

  v6 = self->_pigmentEditOptionProvider;
  if (!v6)
  {
    self->_isGossamerPigmentEditOptionProvider = v4;
    v7 = [objc_opt_class() pigmentFaceDomain];
    v8 = v7;
    if (self->_isGossamerPigmentEditOptionProvider)
    {
      v9 = [v7 stringByAppendingString:@"-Gossamer"];

      v8 = v9;
    }

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [[NTKPigmentEditOptionProvider alloc] initWithDomain:v8 bundle:v10];
    v12 = self->_pigmentEditOptionProvider;
    self->_pigmentEditOptionProvider = v11;

    v6 = self->_pigmentEditOptionProvider;
  }

  return v6;
}

- (id)_localizedNameForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBottomCenter] || objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotDate))
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKWhistlerDigitalFace;
    v5 = [(NTKWhistlerDigitalFace *)&v8 _localizedNameForComplicationSlot:v4];
  }

  v6 = v5;

  return v6;
}

@end