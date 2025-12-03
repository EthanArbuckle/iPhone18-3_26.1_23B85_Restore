@interface NTKSeltzerFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)complicationConfiguration;
- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKSeltzerFace

- (int64_t)timeStyle
{
  v2 = [(NTKSeltzerFace *)self selectedOptionForCustomEditMode:15 slot:0];
  v3 = [v2 style] != 0;

  return v3;
}

- (void)selectOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  v10 = [(NTKSeltzerFace *)self selectedOptionForCustomEditMode:mode slot:slotCopy];
  v13.receiver = self;
  v13.super_class = NTKSeltzerFace;
  [(NTKSeltzerFace *)&v13 selectOption:optionCopy forCustomEditMode:mode slot:slotCopy];

  if (mode == 15 && (NTKEqualObjects() & 1) == 0)
  {
    v11 = v10;
    style = [optionCopy style];
    if (style != [v11 style])
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
    device = [(NTKSeltzerFace *)self device];
    v7 = [device supportsPDRCapability:3171091165];

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

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy deviceCategory] == &dword_0 + 1)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [deviceCopy supportsPDRCapability:360081074] ^ 1;
  }

  return v4;
}

- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  if ([contextCopy calendarDateMatchesContext:toContextCopy])
  {
    v7 = [contextCopy localeMatchesContext:toContextCopy] ^ 1;
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

+ (id)_initialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  if ([slot isEqualToString:{NTKComplicationSlotBottomLeft, device}])
  {
    v4 = [NTKComplication timerComplicationWithDuration:180.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  switch(mode)
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

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  if (mode == 15)
  {
    device = [(NTKSeltzerFace *)self device];
    v8 = [NTKDualTimeStyleEditOption optionWithStyle:0 forDevice:device];
    goto LABEL_5;
  }

  if (mode == 12)
  {
    device = [(NTKSeltzerFace *)self device];
    v8 = [NTKSeltzerCalendarEditOption defaultOptionForDevice:device];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode == 15)
  {
    v7 = NTKCompanionClockFaceLocalizedString();
  }

  else if (mode == 12)
  {
    v7 = [NTKSeltzerFaceBundle localizedStringForKey:@"SELTZER_EDIT_MODE_LABEL_CALENDAR" comment:@"Calendar"];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___NTKSeltzerFace;
    v7 = objc_msgSendSuper2(&v10, "_localizedNameOverrideForCustomEditMode:forDevice:", mode, deviceCopy);
  }

  v8 = v7;

  return v8;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slot = [(NTKSeltzerFace *)self _optionClassForCustomEditMode:mode, slot];
  device = [(NTKSeltzerFace *)self device];
  v7 = [(objc_class *)slot numberOfOptionsForDevice:device];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v8 = [(NTKSeltzerFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSeltzerFace *)self device];
  v10 = [(objc_class *)v8 indexOfOption:optionCopy forDevice:device];

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = [(NTKSeltzerFace *)self _optionClassForCustomEditMode:mode];
  device = [(NTKSeltzerFace *)self device];
  v9 = [(objc_class *)v7 optionAtIndex:index forDevice:device];

  return v9;
}

@end