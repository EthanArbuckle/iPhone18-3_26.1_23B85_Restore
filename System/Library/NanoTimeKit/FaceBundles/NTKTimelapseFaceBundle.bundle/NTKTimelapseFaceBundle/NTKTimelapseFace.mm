@interface NTKTimelapseFace
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_complicationMigrationPaths;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_editModeForOldEncodingIndex:(int64_t)index;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation NTKTimelapseFace

+ (id)_complicationSlotDescriptors
{
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v3 = NTKAllUtilityLargeNarrowComplicationTypes();
  v10[0] = NTKComplicationSlotTopRight;
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKComplicationSlotDescriptor();
  v11[0] = v5;
  v10[1] = NTKComplicationSlotBottom;
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKComplicationSlotDescriptor();
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (id)_orderedComplicationSlots
{
  v4[0] = NTKComplicationSlotTopRight;
  v4[1] = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = @"TOP";
  }

  else
  {
    v5 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
    v4 = @"BOTTOM";
    if (!v5)
    {
      v4 = 0;
    }
  }

  v6 = [NSString stringWithFormat:@"SLOT_LABEL_%@", v4];
  v7 = NTKClockFaceLocalizedString();

  return v7;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = [(NTKTimelapseFace *)self device:mode];
  v5 = [NTKTimelapseThemeEditOption optionWithTimelapseTheme:0 forDevice:v4];

  return v5;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 12)
  {
    v4 = [@"EDIT_MODE_LABEL_TIMELAPSE_CONTENT" stringByAppendingString:{@"_COMPANION", device}];
    v5 = [@"Timelapse" stringByAppendingString:@"-Companion"];
    v6 = [NTKTimelapseFaceBundle localizedStringForKey:v4 table:v5 comment:@"Location"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = [(NTKTimelapseFace *)self device:mode];
  v5 = [NTKTimelapseThemeEditOption numberOfOptionsForDevice:v4];

  return v5;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v6 = [(NTKTimelapseFace *)self device:index];
  v7 = [NTKTimelapseThemeEditOption optionAtIndex:index forDevice:v6];

  return v7;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  device = [(NTKTimelapseFace *)self device];
  v8 = [NTKTimelapseThemeEditOption indexOfOption:optionCopy forDevice:device];

  return v8;
}

- (BOOL)_snapshotContext:(id)context isStaleRelativeToContext:(id)toContext
{
  contextCopy = context;
  toContextCopy = toContext;
  v10.receiver = self;
  v10.super_class = NTKTimelapseFace;
  if (-[NTKTimelapseFace _snapshotContext:isStaleRelativeToContext:](&v10, "_snapshotContext:isStaleRelativeToContext:", contextCopy, toContextCopy) || ![contextCopy calendarDateMatchesContext:toContextCopy])
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = [contextCopy localeMatchesContext:toContextCopy] ^ 1;
  }

  return v8;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 12)
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_editModeForOldEncodingIndex:(int64_t)index
{
  if (index)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

- (id)_complicationMigrationPaths
{
  v4[0] = @"top-right-above";
  v4[1] = @"bottom-right-long";
  v5[0] = NTKComplicationSlotTopRight;
  v5[1] = NTKComplicationSlotBottom;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end