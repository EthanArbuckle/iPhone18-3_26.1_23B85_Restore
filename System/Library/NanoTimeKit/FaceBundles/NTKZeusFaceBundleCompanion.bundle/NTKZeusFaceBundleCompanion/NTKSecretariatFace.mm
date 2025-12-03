@interface NTKSecretariatFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSecretariatFace

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_4 || objc_msgSend(deviceCopy, "deviceCategory") == &dword_4 + 2 || !objc_msgSend(deviceCopy, "supportsPDRCapability:", 360081074))
  {
    LOBYTE(v4) = 1;
  }

  else if ([deviceCopy collectionType] == &dword_4 + 1)
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
  v2 = NTKAllSignatureCircularTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v9[0] = NTKComplicationSlotTopLeft;
  v5 = NTKComplicationSlotDescriptor();
  v10[0] = v5;
  v9[1] = NTKComplicationSlotTopRight;
  v6 = NTKComplicationSlotDescriptor();
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopLeft;
  v4[1] = NTKComplicationSlotTopRight;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSecretariatFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSecretariatFace *)self device];
  v7 = [slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSecretariatFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSecretariatFace *)self device];
  v10 = [v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSecretariatFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSecretariatFace *)self device];
  v9 = [v7 optionAtIndex:index forDevice:device];

  return v9;
}

@end