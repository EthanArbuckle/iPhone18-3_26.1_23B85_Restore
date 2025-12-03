@interface NTKCloudrakerFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_orderedComplicationSlots;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKCloudrakerFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceCategory] == &dword_0 + 1 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_0 + 2;
  v5 = v4 | ~[deviceCopy supportsPDRCapability:3023545248];

  return v5 & 1;
}

- (id)_customEditModes
{
  device = [(NTKCloudrakerFace *)self device];
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 19)
  {
    CLKLocaleNumberSystemForFirstLanguage();
    v8 = NTKNumeralOptionFromCLKLocaleNumberSystem();
    device = [(NTKCloudrakerFace *)self device];
    v7 = [NTKNumeralEditOption optionWithNumeral:v8 forDevice:device];
  }

  else if (mode == 10)
  {
    v11.receiver = self;
    v11.super_class = NTKCloudrakerFace;
    v7 = [(NTKCloudrakerFace *)&v11 _defaultOptionForCustomEditMode:10 slot:slotCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 19)
  {
    v3 = objc_opt_class();
  }

  else if (mode == 10)
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

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKCloudrakerFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKCloudrakerFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKCloudrakerFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKCloudrakerFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKCloudrakerFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKCloudrakerFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

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

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotCenter;
  v5[2] = NTKComplicationSlotBottom;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

@end