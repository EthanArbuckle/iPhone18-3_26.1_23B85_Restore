@interface NTKSeltzerFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4;
+ (id)complicationConfiguration;
- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
@end

@implementation NTKSeltzerFace

- (int64_t)timeStyle
{
  v2 = [(NTKSeltzerFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] != 0;

  return v3;
}

- (void)selectOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKSeltzerFace *)self selectedOptionForCustomEditMode:a4 slot:v9];
  v13.receiver = self;
  v13.super_class = NTKSeltzerFace;
  [(NTKSeltzerFace *)&v13 selectOption:v8 forCustomEditMode:a4 slot:v9];

  if (a4 == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    v12 = [v8 style];
    if (v12 != [v11 style])
    {
      [(NTKSeltzerFace *)self _notifyObserversFaceTimeStyleChanged];
    }
  }
}

- (id)_faceDescription
{
  if (_os_feature_enabled_impl() && (-[NTKSeltzerFace device](self, "device"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 supportsPDRCapability:184644051], v3, (v4 & 1) != 0))
  {
    v5 = @"SELTZER_FACE_DESCRIPTION_NAPILIB";
  }

  else
  {
    v6 = [(NTKSeltzerFace *)self device];
    v7 = [v6 supportsPDRCapability:3171091165];

    if (v7)
    {
      v5 = @"SELTZER_FACE_DESCRIPTION_LIGHTHOUSE";
    }

    else
    {
      v5 = @"SELTZER_FACE_DESCRIPTION";
    }
  }

  return [NTKSeltzerFaceBundle localizedStringForKey:v5 comment:@"description"];
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  if ([v3 deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 supportsPDRCapability:360081074] ^ 1;
  }

  return v4;
}

- (BOOL)_snapshotContext:(id)a3 isStaleRelativeToContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 calendarDateMatchesContext:v6])
  {
    v7 = [v5 localeMatchesContext:v6] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

+ (id)complicationConfiguration
{
  if (qword_15CE8 != -1)
  {
    sub_9060();
  }

  v3 = qword_15CE0;

  return v3;
}

+ (id)_initialDefaultComplicationForSlot:(id)a3 forDevice:(id)a4
{
  if ([a3 isEqualToString:{NTKComplicationSlotBottomLeft, a4}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:180.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  switch(a3)
  {
    case 10:
      v4 = NTKPigmentEditOption_ptr;
LABEL_7:
      v5 = *v4;
      v6 = objc_opt_class();

      return v6;
    case 12:
      v4 = &off_10228;
      goto LABEL_7;
    case 15:
      v4 = NTKDualTimeStyleEditOption_ptr;
      goto LABEL_7;
  }

  v6 = 0;

  return v6;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v6 = a4;
  if (a3 == 15)
  {
    v7 = [(NTKSeltzerFace *)self device];
    v8 = [NTKDualTimeStyleEditOption optionWithStyle:0 forDevice:v7];
    goto LABEL_5;
  }

  if (a3 == 12)
  {
    v7 = [(NTKSeltzerFace *)self device];
    v8 = [NTKSeltzerCalendarEditOption defaultOptionForDevice:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 15)
  {
    v7 = NTKCompanionClockFaceLocalizedString();
  }

  else if (a3 == 12)
  {
    v7 = [NTKSeltzerFaceBundle localizedStringForKey:@"SELTZER_EDIT_MODE_LABEL_CALENDAR" comment:@"Calendar"];
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___NTKSeltzerFace;
    v7 = objc_msgSendSuper2(&v10, "_localizedNameOverrideForCustomEditMode:forDevice:", a3, v6);
  }

  v8 = v7;

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  v5 = [(NTKSeltzerFace *)self _optionClassForCustomEditMode:a3, a4];
  v6 = [(NTKSeltzerFace *)self device];
  v7 = [(objc_class *)v5 numberOfOptionsForDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  v8 = [(NTKSeltzerFace *)self _optionClassForCustomEditMode:a4];
  v9 = [(NTKSeltzerFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:v7 forDevice:v9];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v7 = [(NTKSeltzerFace *)self _optionClassForCustomEditMode:a4];
  v8 = [(NTKSeltzerFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:a3 forDevice:v8];

  return v9;
}

@end