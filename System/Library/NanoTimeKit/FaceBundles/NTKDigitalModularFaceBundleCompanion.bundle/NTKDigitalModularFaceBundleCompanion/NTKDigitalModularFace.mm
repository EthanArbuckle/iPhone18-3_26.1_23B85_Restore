@interface NTKDigitalModularFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (BOOL)_option:(id)_option migratesToValidOption:(id *)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
@end

@implementation NTKDigitalModularFace

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKDigitalModularFace *)self _faceDescriptionKey];
  v3 = [NTKDigitalModularFaceBundle localizedStringForKey:_faceDescriptionKey comment:@"Digital Modular Description"];

  return v3;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSmallComplicationTypes();
  v3 = NTKAllLargeComplicationTypes();
  v16[0] = NTKComplicationSlotTopLeft;
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v14 = NTKComplicationSlotDescriptor();
  v17[0] = v14;
  v16[1] = NTKComplicationSlotBottomLeft;
  v13 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v17[1] = v4;
  v16[2] = NTKComplicationSlotBottomCenter;
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v17[2] = v6;
  v16[3] = NTKComplicationSlotBottomRight;
  v7 = NTKComplicationTypeRankedListWithDefaultTypes();
  v8 = NTKComplicationSlotDescriptor();
  v17[3] = v8;
  v16[4] = NTKComplicationSlotCenter;
  v9 = NTKComplicationTypeRankedListWithDefaultTypes();
  v10 = NTKComplicationSlotDescriptor();
  v17[4] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];

  return v11;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotCenter;
  v4[2] = NTKComplicationSlotBottomLeft;
  v4[3] = NTKComplicationSlotBottomCenter;
  v4[4] = NTKComplicationSlotBottomRight;
  v2 = [NSArray arrayWithObjects:v4 count:5];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v5 = NTKClockFaceLocalizedString();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKDigitalModularFace;
    v5 = [(NTKDigitalModularFace *)&v8 _localizedNameForComplicationSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if ([UIApplication runningInStoreDemoModeFProgramNumber:mode]== &stru_B8.segname[1])
  {
    v5 = 7;
  }

  else
  {
    device = [(NTKDigitalModularFace *)self device];
    v5 = NTKDefaultFaceColorForDeviceCollection();
  }

  device2 = [(NTKDigitalModularFace *)self device];
  v8 = [NTKFaceColorModularEditOption optionWithFaceColor:v5 forDevice:device2];

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = [(NTKDigitalModularFace *)self device:mode];
  v5 = [NTKFaceColorModularEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [(NTKDigitalModularFace *)self device:index];
  v7 = [NTKFaceColorModularEditOption optionAtIndex:index forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  device = [(NTKDigitalModularFace *)self device];
  v8 = [NTKFaceColorModularEditOption indexOfOption:optionCopy forDevice:device];

  return v8;
}

- (BOOL)_option:(id)_option migratesToValidOption:(id *)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  _optionCopy = _option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    faceColor = [_optionCopy faceColor];
    device = [(NTKDigitalModularFace *)self device];
    *option = [NTKFaceColorModularEditOption optionWithFaceColor:faceColor forDevice:device];

    v11 = *option != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color
{
  if (color > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_5910[color];
  }

  device = [(NTKDigitalModularFace *)self device];
  v12 = [NTKFaceColorModularEditOption optionWithFaceColor:v5 forDevice:device];

  [(NTKDigitalModularFace *)self selectOption:v12 forCustomEditMode:10 slot:0];
  v7 = [NTKComplication anyComplicationOfType:1];
  [(NTKDigitalModularFace *)self setComplication:v7 forSlot:NTKComplicationSlotTopLeft];
  v8 = [NTKComplication anyComplicationOfType:10];

  [(NTKDigitalModularFace *)self setComplication:v8 forSlot:NTKComplicationSlotCenter];
  v9 = [NTKComplication anyComplicationOfType:17];

  [(NTKDigitalModularFace *)self setComplication:v9 forSlot:NTKComplicationSlotBottomLeft];
  v10 = [NTKComplication anyComplicationOfType:2];

  [(NTKDigitalModularFace *)self setComplication:v10 forSlot:NTKComplicationSlotBottomCenter];
  v11 = [NTKComplication anyComplicationOfType:7];

  [(NTKDigitalModularFace *)self setComplication:v11 forSlot:NTKComplicationSlotBottomRight];
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return 10;
  }
}

@end