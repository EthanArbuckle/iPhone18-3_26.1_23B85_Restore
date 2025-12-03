@interface NTKSiderealFace
+ (id)_complicationSlotDescriptors;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSiderealFace

- (int64_t)timeStyle
{
  v2 = [(NTKSiderealFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] != 0;

  return v3;
}

- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  v10 = [(NTKSiderealFace *)self selectedOptionForCustomEditMode:mode slot:slotCopy];
  v13.receiver = self;
  v13.super_class = NTKSiderealFace;
  [(NTKSiderealFace *)&v13 selectOption:optionCopy forCustomEditMode:mode slot:slotCopy];

  if (mode == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    style = [optionCopy style];
    if (style != [v11 style])
    {
      [(NTKSiderealFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

- (id)_faceDescriptionKey
{
  device = [(NTKSiderealFace *)self device];
  if ([device supportsPDRCapability:3171091165])
  {
    v3 = @"FACE_STYLE_SOLAR_DIAL_DESCRIPTION_LIGHTHOUSE";
  }

  else
  {
    v3 = @"FACE_STYLE_SOLAR_DIAL_DESCRIPTION";
  }

  v4 = v3;

  return v3;
}

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKSiderealFace *)self _faceDescriptionKey];
  v3 = [NTKSolarDialFaceBundle localizedStringForKey:_faceDescriptionKey comment:_faceDescriptionKey];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCornerTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v13[0] = NTKComplicationSlotTopLeft;
  v7 = NTKComplicationSlotDescriptor();
  v14[0] = v7;
  v13[1] = NTKComplicationSlotTopRight;
  v8 = NTKComplicationSlotDescriptor();
  v14[1] = v8;
  v13[2] = NTKComplicationSlotBottomLeft;
  v9 = NTKComplicationSlotDescriptor();
  v14[2] = v9;
  v13[3] = NTKComplicationSlotBottomRight;
  v10 = NTKComplicationSlotDescriptor();
  v14[3] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v11;
}

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotTopLeft, device}])
  {
    v4 = [NTKBundleComplication bundledComplicationWithBundleIdentifier:NTKBundleComplicationNoiseBundleIdentifier appBundleIdentifier:NTKBundleComplicationNoiseAppBundleIdentifier complicationDescriptor:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    v4 = [(NTKSiderealFace *)self device:15];
    v5 = [NTKSiderealTimeStyleEditOption optionWithStyle:0 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSiderealFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSiderealFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSiderealFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSiderealFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSiderealFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSiderealFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 15)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTopLeft;
  v5[1] = NTKComplicationSlotTopRight;
  v5[2] = NTKComplicationSlotBottomLeft;
  v5[3] = NTKComplicationSlotBottomRight;
  v3 = [NSArray arrayWithObjects:v5 count:4];

  return v3;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 15)
  {
    v4 = NTKCompanionClockFaceLocalizedString();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___NTKSiderealFace;
    v4 = objc_msgSendSuper2(&v6, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, device);
  }

  return v4;
}

@end