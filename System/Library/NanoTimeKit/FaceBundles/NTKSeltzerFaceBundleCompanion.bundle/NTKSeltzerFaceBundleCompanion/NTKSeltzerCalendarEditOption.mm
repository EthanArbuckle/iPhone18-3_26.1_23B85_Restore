@interface NTKSeltzerCalendarEditOption
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)defaultOptionForDevice:(id)device;
+ (id)localizedNameForCalendar:(unint64_t)calendar;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKSeltzerCalendarEditOption

+ (id)defaultOptionForDevice:(id)device
{
  deviceCopy = device;
  v4 = NTKLunarCalendarID();
  if ([v4 isEqualToString:NSCalendarIdentifierHebrew])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierIslamic] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", NSCalendarIdentifierIslamicCivil) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", NSCalendarIdentifierIslamicTabular) & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", NSCalendarIdentifierIslamicUmmAlQura))
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierGujarati])
  {
    v5 = 5;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierDangi])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierVietnamese])
  {
    v5 = 4;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierKannada])
  {
    v5 = 6;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierMarathi])
  {
    v5 = 7;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierTelugu])
  {
    v5 = 8;
  }

  else if ([v4 isEqualToString:NSCalendarIdentifierVikram])
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  v6 = [NTKSeltzerCalendarEditOption optionWithCalendar:v5 forDevice:deviceCopy];

  return v6;
}

+ (id)_orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl() && ([deviceCopy supportsPDRCapability:184644051] & 1) != 0)
  {
    v5 = 9;
  }

  else
  {
    v5 = 2;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_8A78;
  v8[3] = &unk_10698;
  v8[4] = v5;
  v8[5] = self;
  v6 = sub_8A78(v8, deviceCopy);

  return v6;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 9)
  {
    return 0;
  }

  else
  {
    return *(&off_106E0 + value);
  }
}

+ (id)localizedNameForCalendar:(unint64_t)calendar
{
  if (calendar > 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_10730 + calendar);
  }

  return [NTKSeltzerFaceBundle localizedStringForKey:v3 comment:@"calendar"];
}

- (id)localizedName
{
  v3 = objc_opt_class();
  calendar = [(NTKSeltzerCalendarEditOption *)self calendar];

  return [v3 localizedNameForCalendar:calendar];
}

- (id)_valueToFaceBundleStringDict
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8ECC;
  block[3] = &unk_106C0;
  block[4] = self;
  if (qword_15E68 != -1)
  {
    dispatch_once(&qword_15E68, block);
  }

  return qword_15E60;
}

@end