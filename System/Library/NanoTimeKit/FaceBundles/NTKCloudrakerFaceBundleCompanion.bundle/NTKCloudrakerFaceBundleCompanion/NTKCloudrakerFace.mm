@interface NTKCloudrakerFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_complicationSlotDescriptors;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)_orderedComplicationSlots;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKCloudrakerFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceCategory] == &dword_0 + 1 || objc_msgSend(v3, "deviceCategory") == &dword_0 + 2;
  v5 = v4 | ~[v3 supportsPDRCapability:3023545248];

  return v5 & 1;
}

- (id)_customEditModes
{
  v2 = [(NTKCloudrakerFace *)self device];
  v3 = NTKShowIndicScriptNumerals();

  if (v3)
  {
    return &off_8C98;
  }

  else
  {
    return &off_8CB0;
  }
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 19)
  {
    CLKLocaleNumberSystemForFirstLanguage();
    v8 = NTKNumeralOptionFromCLKLocaleNumberSystem();
    v9 = [(NTKCloudrakerFace *)self device];
    v7 = [NTKNumeralEditOption optionWithNumeral:v8 forDevice:v9];
  }

  else if (a3 == 10)
  {
    v11.receiver = self;
    v11.super_class = NTKCloudrakerFace;
    v7 = [(NTKCloudrakerFace *)&v11 _defaultOptionForCustomEditMode:10 slot:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 19)
  {
    v3 = objc_opt_class();
  }

  else if (a3 == 10)
  {
    v5.receiver = self;
    v5.super_class = NTKCloudrakerFace;
    v3 = [(NTKCloudrakerFace *)&v5 _optionClassForCustomEditMode:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKCloudrakerFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKCloudrakerFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKCloudrakerFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKCloudrakerFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKCloudrakerFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKCloudrakerFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (id)_complicationSlotDescriptors
{
  v10[0] = NTKComplicationSlotTopLeft;
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKComplicationSlotDescriptor();
  v11[0] = v3;
  v10[1] = NTKComplicationSlotCenter;
  v4 = NTKAllSignatureRectangularTypes();
  v5 = NTKComplicationSlotDescriptor();
  v11[1] = v5;
  v10[2] = NTKComplicationSlotBottom;
  v6 = NTKAllSignatureRectangularTypes();
  v7 = NTKComplicationSlotDescriptor();
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotCenter;
  v4[2] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotCenter;
  v5[2] = NTKComplicationSlotBottom;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

@end