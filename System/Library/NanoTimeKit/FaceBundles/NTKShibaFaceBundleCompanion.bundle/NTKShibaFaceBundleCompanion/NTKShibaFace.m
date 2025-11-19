@interface NTKShibaFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
@end

@implementation NTKShibaFace

- (int64_t)timeStyle
{
  v2 = [(NTKShibaFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] == 0;

  return v3;
}

- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKShibaFace *)self selectedOptionForCustomEditMode:a4 slot:v9];
  v12.receiver = self;
  v12.super_class = NTKShibaFace;
  [(NTKShibaFace *)&v12 selectOption:v8 forCustomEditMode:a4 slot:v9];

  if (a4 == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    if (![v8 style] || !objc_msgSend(v11, "style"))
    {
      [(NTKShibaFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

- (id)_faceDescription
{
  v2 = [(NTKShibaFace *)self device];
  v3 = [v2 supportsVictoryFaces];

  if (v3)
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

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:3588072423];
  }

  v5 = NTKShowVictoryFaces() & v4;

  return v5 ^ 1;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 15)
  {
    v7 = [(NTKShibaFace *)self device];
    v8 = [NTKShibaStyleEditOption optionWithStyle:0 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 10)
  {
    v7 = [(NTKShibaFace *)self device];
    v8 = [NTKShibaColorEditOption optionWithColor:3000 forDevice:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKShibaFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKShibaFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKShibaFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKShibaFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKShibaFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKShibaFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = off_C1A8;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (a3 == 15)
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

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  v5[0] = NTKComplicationSlotTop;
  v5[1] = NTKComplicationSlotCenter;
  v5[2] = NTKComplicationSlotBottom;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

@end