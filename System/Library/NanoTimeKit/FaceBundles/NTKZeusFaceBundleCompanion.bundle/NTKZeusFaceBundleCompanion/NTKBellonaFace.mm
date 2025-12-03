@interface NTKBellonaFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKBellonaFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] != &dword_0 + 1 && _os_feature_enabled_impl() && objc_msgSend(deviceCopy, "supportsPDRCapability:", 3887189377))
  {
    if ([deviceCopy collectionType] == &dword_4 + 1)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = NTKShowHardwareSpecificFaces() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9[0] = NTKComplicationSlotBottomCenter;
  v4 = NTKComplicationSlotDescriptor();
  v9[1] = NTKComplicationSlotDate;
  v10[0] = v4;
  v5 = NTKWrappedDateComplicationType();
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v6 = [[NTKPigmentEditOption alloc] initWithOptionName:@"beton" collectionName:{@"zeus.fall2024", v4}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotBottomCenter;
  v4[1] = NTKComplicationSlotDate;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKBellonaFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKBellonaFace *)self device];
  v7 = [slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKBellonaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKBellonaFace *)self device];
  v10 = [v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKBellonaFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKBellonaFace *)self device];
  v9 = [v7 optionAtIndex:index forDevice:device];

  return v9;
}

@end