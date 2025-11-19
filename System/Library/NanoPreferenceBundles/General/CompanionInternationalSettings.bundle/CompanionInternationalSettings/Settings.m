@interface Settings
- (IPNumberFormat)numberFormat;
- (NSNumber)firstWeekdayAsNSNumber;
- (NSString)calendar;
- (NSString)measurementSystem;
- (NSString)numberFormatAsString;
- (NSString)numberingSystem;
- (NSString)temperatureUnit;
- (PSSpecifier)firstWeekdaySpecifier;
- (PSSpecifier)measurementSystemSpecifier;
- (PSSpecifier)numberFormatSpecifier;
- (PSSpecifier)temperatureUnitSpecifier;
- (_TtC30CompanionInternationalSettings8Settings)init;
- (int64_t)firstWeekday;
- (void)setCalendar:(id)a3;
- (void)setFirstWeekday:(int64_t)a3;
- (void)setFirstWeekdayAsNSNumber:(id)a3;
- (void)setMeasurementSystem:(id)a3;
- (void)setNumberFormat:(id)a3;
- (void)setNumberFormatAsString:(id)a3;
- (void)setNumberingSystem:(id)a3;
- (void)setTemperatureUnit:(id)a3;
@end

@implementation Settings

- (IPNumberFormat)numberFormat
{
  v2 = [objc_opt_self() currentFormat];

  return v2;
}

- (void)setNumberFormat:(id)a3
{
  type metadata accessor for Settings();
  sub_134E0();
  v5 = a3;
  v8 = self;
  sub_1AB78();
  sub_1AB88();

  [objc_opt_self() setFormat:v5];
  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_1ABC8();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
}

- (NSString)numberFormatAsString
{
  v2 = self;
  v3 = [(Settings *)v2 numberFormat];
  v4 = [(IPNumberFormat *)v3 formattedNumber];

  if (!v4)
  {
    sub_1ABF8();
    v4 = sub_1ABC8();
  }

  return v4;
}

- (void)setNumberFormatAsString:(id)a3
{
  v4 = sub_1ABF8();
  v6 = v5;
  v7 = self;
  sub_128D8(v4, v6);
}

- (PSSpecifier)numberFormatSpecifier
{
  v2 = self;
  v3 = sub_12B58();

  return v3;
}

- (NSString)measurementSystem
{
  sub_13ECC();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setMeasurementSystem:(id)a3
{
  v4 = sub_1ABF8();
  v6 = v5;
  v7 = self;
  sub_135F0(v4, v6);
}

- (PSSpecifier)measurementSystemSpecifier
{
  v2 = self;
  v3 = sub_138E8();

  return v3;
}

- (NSString)temperatureUnit
{
  sub_14C60();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setTemperatureUnit:(id)a3
{
  v4 = sub_1ABF8();
  v6 = v5;
  v7 = self;
  sub_1438C(v4, v6);
}

- (PSSpecifier)temperatureUnitSpecifier
{
  v2 = self;
  v3 = sub_14670();

  return v3;
}

- (_TtC30CompanionInternationalSettings8Settings)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Settings();
  return [(Settings *)&v3 init];
}

- (NSString)numberingSystem
{
  sub_16BA4();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setNumberingSystem:(id)a3
{
  v4 = sub_1ABF8();
  v6 = v5;
  v7 = self;
  sub_16650(v4, v6);
}

- (int64_t)firstWeekday
{
  v3 = sub_1AB28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AAE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = objc_opt_self();
  v17 = self;
  result = [v16 preferredLocale];
  if (result)
  {
    v19 = result;
    sub_1A9C8();

    (*(v9 + 32))(v15, v13, v8);
    sub_1AAD8();
    v20 = sub_1AAF8();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v15, v8);

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setFirstWeekday:(int64_t)a3
{
  v4 = self;
  sub_1729C(a3);
}

- (NSNumber)firstWeekdayAsNSNumber
{
  sub_122DC(0, &qword_302A8, NSNumber_ptr);
  v3 = self;
  v4.super.super.isa = sub_1AC58([(Settings *)v3 firstWeekday]).super.super.isa;

  return v4.super.super.isa;
}

- (void)setFirstWeekdayAsNSNumber:(id)a3
{
  v4 = a3;
  v5 = self;
  -[Settings setFirstWeekday:](v5, "setFirstWeekday:", [v4 integerValue]);
}

- (PSSpecifier)firstWeekdaySpecifier
{
  v2 = self;
  v3 = sub_17848();

  return v3;
}

- (NSString)calendar
{
  sub_1A300();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setCalendar:(id)a3
{
  v4 = sub_1ABF8();
  v6 = v5;
  v7 = self;
  sub_191F0(v4, v6);
}

@end