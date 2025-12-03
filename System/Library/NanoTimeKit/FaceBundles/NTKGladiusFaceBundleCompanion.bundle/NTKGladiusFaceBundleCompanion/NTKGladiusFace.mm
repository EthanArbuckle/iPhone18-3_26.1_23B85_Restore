@interface NTKGladiusFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKGladiusFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceCategory] == &dword_0 + 1;
  v5 = _os_feature_enabled_impl();
  v6 = [deviceCopy supportsPDRCapability:3887189377];

  return v4 || (v5 & v6 & 1) == 0;
}

- (id)_complicationSlotDescriptors
{
  v8[0] = NTKComplicationSlotSubdialTop;
  v2 = NTKAllSimpleTextComplicationTypes();
  v3 = NTKComplicationSlotDescriptor();
  v9[0] = v3;
  v8[1] = NTKComplicationSlotSubdialBottom;
  v4 = NTKAllSignatureCircularTypes();
  v5 = NTKComplicationSlotDescriptor();
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotSubdialTop;
  v4[1] = NTKComplicationSlotSubdialBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5 = NTKComplicationSlotSubdialBottom;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = &off_20520;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 12)
  {
    v4 = off_20518;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 12)
  {
    device = [(NTKGladiusFace *)self device];
    v8 = [NTKGladiusLightEditOption optionWithLight:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 15)
  {
    device = [(NTKGladiusFace *)self device];
    v8 = [NTKGladiusStyleEditOption optionWithStyle:0 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [NTKGladiusFaceBundle localizedStringForKey:@"GLADIUS_EDIT_MODE_LABEL_LIGHT" comment:@"Light"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKGladiusFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v4;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKGladiusFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKGladiusFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKGladiusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKGladiusFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKGladiusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKGladiusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

@end