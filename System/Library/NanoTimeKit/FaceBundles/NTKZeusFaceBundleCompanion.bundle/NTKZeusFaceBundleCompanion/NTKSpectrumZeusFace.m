@interface NTKSpectrumZeusFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
- (BOOL)customComplication:(id)a3 supportsFamilies:(id)a4 forSlot:(id)a5;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)customComplicationControllerForComplication:(id)a3 variant:(id)a4 slot:(id)a5;
- (id)customComplicationsForSlot:(id)a3;
- (int64_t)customComplicationFamilyForComplication:(id)a3 slot:(id)a4;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation NTKSpectrumZeusFace

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 isZeusBlack] && objc_msgSend(v3, "deviceCategory") != &dword_0 + 1)
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

- (id)customComplicationControllerForComplication:(id)a3 variant:(id)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (![a5 isEqual:NTKComplicationSlotBottom])
  {
    goto LABEL_5;
  }

  v10 = [v8 complicationType];
  if (v10 == (&dword_4 + 1))
  {
    v11 = off_444A8;
    goto LABEL_7;
  }

  if (v10 != &dword_4)
  {
LABEL_5:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = off_444A0;
LABEL_7:
  v13 = objc_alloc(*v11);
  v14 = [(NTKSpectrumZeusFace *)self device];
  v12 = [v13 initWithComplication:v8 variant:v9 device:v14];

LABEL_8:

  return v12;
}

- (id)customComplicationsForSlot:(id)a3
{
  if ([a3 isEqual:NTKComplicationSlotBottom])
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

- (int64_t)customComplicationFamilyForComplication:(id)a3 slot:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqual:NTKComplicationSlotBottom])
  {
    v8 = NTKComplicationFamilyZeusLower;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKSpectrumZeusFace;
    v8 = [(NTKSpectrumZeusFace *)&v10 customComplicationFamilyForComplication:v6 slot:v7];
  }

  return v8;
}

- (BOOL)customComplication:(id)a3 supportsFamilies:(id)a4 forSlot:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([a5 isEqual:NTKComplicationSlotBottom] && (objc_msgSend(v7, "complicationType") & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v9 = [NSNumber numberWithInteger:NTKComplicationFamilyZeusLower];
    v10 = [v8 containsObject:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 15)
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

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKSpectrumZeusFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKSpectrumZeusFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKSpectrumZeusFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKSpectrumZeusFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKSpectrumZeusFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKSpectrumZeusFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 15)
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
  v2 = [(NTKSpectrumZeusFace *)self _faceDescriptionKey];
  v3 = [NTKZeusSpectrumFaceBundle localizedStringForKey:v2 comment:&stru_45510];

  return v3;
}

@end