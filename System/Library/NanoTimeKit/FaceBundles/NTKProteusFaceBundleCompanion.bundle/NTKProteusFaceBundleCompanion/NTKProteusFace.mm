@interface NTKProteusFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationSlotDescriptors;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKProteusFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_0 + 2)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:4094027452] ^ 1;
  }

  return v4;
}

- (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKAllSimpleTextComplicationTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9[0] = NTKComplicationSlotSubdialTop;
  v5 = NTKComplicationSlotDescriptor();
  v10[0] = v5;
  v9[1] = NTKComplicationSlotSubdialBottom;
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
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
  v5[0] = NTKComplicationSlotSubdialTop;
  v5[1] = NTKComplicationSlotSubdialBottom;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKProteusFace *)self device:mode];
  if (mode == 12)
  {
    v6 = [NTKProteusBackgroundEditOption optionWithBackgroundStyle:1 forDevice:v5];
    goto LABEL_5;
  }

  if (mode == 15)
  {
    v6 = [NTKProteusStyleEditOption optionWithProteusStyle:0 forDevice:v5];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKProteusFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKProteusFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKProteusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKProteusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKProteusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKProteusFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = &off_10228;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 12)
  {
    v4 = off_10220;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 12)
  {
    v7 = @"EDIT_MODE_LABEL_PROTEUS_CONTENT";
    goto LABEL_5;
  }

  if (mode == 15)
  {
    v7 = @"EDIT_MODE_LABEL_PROTEUS_STYLE";
LABEL_5:
    v8 = [(__CFString *)v7 stringByAppendingString:@"_COMPANION"];
    v9 = [NTKProteusFaceBundle localizedStringForKey:v8 comment:@"Typograph custom edit mode name"];

    goto LABEL_7;
  }

  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___NTKProteusFace;
  v9 = objc_msgSendSuper2(&v11, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
LABEL_7:

  return v9;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKProteusFace *)self _faceDescriptionKey];
  v3 = [NTKProteusFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_106F0];

  return v3;
}

@end