@interface NTKSecretariatFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKSecretariatFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1 || objc_msgSend(v3, "deviceCategory") == &dword_4 || objc_msgSend(v3, "deviceCategory") == &dword_4 + 2 || !objc_msgSend(v3, "supportsPDRCapability:", 360081074))
  {
    LOBYTE(v4) = 1;
  }

  else if ([v3 collectionType] == &dword_4 + 1)
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKSecretariatFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKSecretariatFace *)self device];
  v7 = [v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKSecretariatFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKSecretariatFace *)self device];
  v10 = [v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKSecretariatFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKSecretariatFace *)self device];
  v9 = [v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

@end