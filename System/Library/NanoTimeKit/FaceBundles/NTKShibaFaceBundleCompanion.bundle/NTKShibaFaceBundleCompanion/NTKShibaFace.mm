@interface NTKShibaFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKShibaFace

- (int64_t)timeStyle
{
  v2 = [(NTKShibaFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == 0;

  return v3;
}

- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  v10 = [(NTKShibaFace *)self selectedOptionForCustomEditMode:mode slot:slotCopy];
  v12.receiver = self;
  v12.super_class = NTKShibaFace;
  [(NTKShibaFace *)&v12 selectOption:optionCopy forCustomEditMode:mode slot:slotCopy];

  if (mode == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    if (![optionCopy style] || !objc_msgSend(v11, "style"))
    {
      [(NTKShibaFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

- (id)_faceDescription
{
  device = [(NTKShibaFace *)self device];
  supportsVictoryFaces = [device supportsVictoryFaces];

  if (supportsVictoryFaces)
  {
    [NTKShibaFaceBundle localizedStringForKey:@"FACE_STYLE_SHIBA_DESCRIPTION_KINCAID" tableSuffix:@"Kincaid" comment:&stru_C448];
  }

  else
  {
    [NTKShibaFaceBundle localizedStringForKey:@"FACE_STYLE_SHIBA_DESCRIPTION" comment:&stru_C448];
  }
  v4 = ;

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:3588072423];
  }

  v5 = NTKShowVictoryFaces() & v4;

  return v5 ^ 1;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 15)
  {
    device = [(NTKShibaFace *)self device];
    v8 = [NTKShibaStyleEditOption optionWithStyle:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 10)
  {
    device = [(NTKShibaFace *)self device];
    v8 = [NTKShibaColorEditOption optionWithColor:3000 forDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKShibaFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKShibaFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKShibaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKShibaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKShibaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKShibaFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = off_C1A8;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 15)
  {
    v4 = &off_C1B0;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKAllSignatureRectangularTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v12[0] = NTKComplicationSlotTop;
  v7 = NTKComplicationSlotDescriptor();
  v13[0] = v7;
  v12[1] = NTKComplicationSlotCenter;
  v8 = NTKComplicationSlotDescriptor();
  v13[1] = v8;
  v12[2] = NTKComplicationSlotBottom;
  v9 = NTKComplicationSlotDescriptor();
  v13[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTop;
  v4[1] = NTKComplicationSlotCenter;
  v4[2] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5[0] = NTKComplicationSlotTop;
  v5[1] = NTKComplicationSlotCenter;
  v5[2] = NTKComplicationSlotBottom;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

@end