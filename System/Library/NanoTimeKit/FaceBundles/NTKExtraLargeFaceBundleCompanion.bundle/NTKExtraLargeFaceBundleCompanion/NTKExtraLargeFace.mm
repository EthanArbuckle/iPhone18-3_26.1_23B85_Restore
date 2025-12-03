@interface NTKExtraLargeFace
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)device;
- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color;
@end

@implementation NTKExtraLargeFace

+ (id)_complicationSlotDescriptors
{
  v2 = +[CLKDevice currentDevice];
  if ([v2 supportsPDRCapability:1675361835])
  {
    v3 = +[CLKDevice currentDevice];
    deviceCategory = [v3 deviceCategory];

    if (deviceCategory != &dword_0 + 1)
    {
      v5 = NTKAllGraphicExtraLargeComplicationTypes();
      v6 = NTKComplicationTypeRankedListWithDefaultTypes();
      v7 = NTKMultiFamilyComplicationSlotDescriptor();
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = NTKAllExtraLargeComplicationTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
LABEL_6:
  v8 = v7;

  v11 = NTKComplicationSlotCenter;
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v9;
}

+ (id)_richComplicationSlotsForDevice:(id)device
{
  v5 = NTKComplicationSlotCenter;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

+ (id)_orderedComplicationSlots
{
  v4 = NTKComplicationSlotCenter;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = [(NTKExtraLargeFace *)self device:mode];
  v6 = NTKDefaultFaceColorForDeviceCollection();

  device = [(NTKExtraLargeFace *)self device];
  v8 = [NTKFaceColorModularEditOption optionWithFaceColor:v6 forDevice:device];

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKExtraLargeFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKExtraLargeFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKExtraLargeFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKExtraLargeFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKExtraLargeFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKExtraLargeFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v10.receiver = self;
  v10.super_class = NTKExtraLargeFace;
  if ([(NTKExtraLargeFace *)&v10 _snapshotContext:contextCopy isStaleRelativeToContext:toContextCopy])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [contextCopy enhanceTextLegibilityEnabledMatchesContext:toContextCopy] ^ 1;
  }

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 10)
  {
    v4 = NTKFaceColorModularEditOption_ptr;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (mode == 17)
  {
    v4 = NTKFaceBackgroundStyleEditOption_ptr;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

- (void)applyPreviewConfigurationWithFamily:(int64_t)family faceColor:(int64_t)color
{
  if (color > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_9BE8[color];
  }

  device = [(NTKExtraLargeFace *)self device];
  v8 = [NTKFaceColorModularEditOption optionWithFaceColor:v5 forDevice:device];

  pigmentEditOption = [v8 pigmentEditOption];
  [(NTKExtraLargeFace *)self selectOption:pigmentEditOption forCustomEditMode:10 slot:0];
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