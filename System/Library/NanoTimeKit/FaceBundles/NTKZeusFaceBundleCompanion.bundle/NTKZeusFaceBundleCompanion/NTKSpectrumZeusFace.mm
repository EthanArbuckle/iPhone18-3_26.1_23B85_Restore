@interface NTKSpectrumZeusFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (BOOL)customComplication:(id)complication supportsFamilies:(id)families forSlot:(id)slot;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)customComplicationControllerForComplication:(id)complication variant:(id)variant slot:(id)slot;
- (id)customComplicationsForSlot:(id)slot;
- (int64_t)customComplicationFamilyForComplication:(id)complication slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSpectrumZeusFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isZeusBlack] && objc_msgSend(deviceCopy, "deviceCategory") != &dword_0 + 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = NTKShowHardwareSpecificFaces() ^ 1;
  }

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v9 = xmmword_37C68;
  v10 = 5;
  v2 = [NSIndexSet indexSetWithIndexes:&v9 count:3];
  v7 = NTKComplicationSlotBottom;
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)_orderedComplicationSlots
{
  v4 = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)customComplicationControllerForComplication:(id)complication variant:(id)variant slot:(id)slot
{
  complicationCopy = complication;
  variantCopy = variant;
  if (![slot isEqual:NTKComplicationSlotBottom])
  {
    goto LABEL_5;
  }

  complicationType = [complicationCopy complicationType];
  if (complicationType == (&dword_4 + 1))
  {
    v11 = off_444A8;
    goto LABEL_7;
  }

  if (complicationType != &dword_4)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = off_444A0;
LABEL_7:
  v13 = objc_alloc(*v11);
  device = [(NTKSpectrumZeusFace *)self device];
  v12 = [v13 initWithComplication:complicationCopy variant:variantCopy device:device];

LABEL_8:

  return v12;
}

- (id)customComplicationsForSlot:(id)slot
{
  if ([slot isEqual:NTKComplicationSlotBottom])
  {
    v3 = objc_opt_new();
    v4 = [NTKComplication allComplicationsOfType:5];
    [v3 addObjectsFromArray:v4];

    v5 = [NTKComplication allComplicationsOfType:4];
    [v3 addObjectsFromArray:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)customComplicationFamilyForComplication:(id)complication slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotBottom])
  {
    v8 = NTKComplicationFamilyZeusLower;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKSpectrumZeusFace;
    v8 = [(NTKSpectrumZeusFace *)&v10 customComplicationFamilyForComplication:complicationCopy slot:slotCopy];
  }

  return v8;
}

- (BOOL)customComplication:(id)complication supportsFamilies:(id)families forSlot:(id)slot
{
  complicationCopy = complication;
  familiesCopy = families;
  if ([slot isEqual:NTKComplicationSlotBottom] && (objc_msgSend(complicationCopy, "complicationType") & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = [NSNumber numberWithInteger:NTKComplicationFamilyZeusLower];
    v10 = [familiesCopy containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    v4 = [(NTKSpectrumZeusFace *)self device:15];
    v5 = [NTKSpectrumStyleEditOption optionWithStyle:2 forDevice:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSpectrumZeusFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSpectrumZeusFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSpectrumZeusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSpectrumZeusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSpectrumZeusFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSpectrumZeusFace *)self device];
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

- (id)_faceDescription
{
  _faceDescriptionKey = [(NTKSpectrumZeusFace *)self _faceDescriptionKey];
  v3 = [NTKZeusSpectrumFaceBundle localizedStringForKey:_faceDescriptionKey comment:&stru_45510];

  return v3;
}

@end