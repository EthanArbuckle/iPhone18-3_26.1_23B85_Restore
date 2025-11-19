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
- (_TtC21InternationalSettings8Settings)init;
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

- (_TtC21InternationalSettings8Settings)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Settings();
  return [(Settings *)&v3 init];
}

- (int64_t)firstWeekday
{
  v3 = sub_2105C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2101C();
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
    sub_20EDC();

    (*(v9 + 32))(v15, v13, v8);
    sub_2100C();
    v20 = sub_2102C();
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
  sub_179C8(a3);
}

- (NSNumber)firstWeekdayAsNSNumber
{
  sub_1752C(0, &qword_3CE58, NSNumber_ptr);
  v3 = self;
  v4.super.super.isa = sub_2127C([(Settings *)v3 firstWeekday]).super.super.isa;

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
  v3 = sub_17F74();

  return v3;
}

- (NSString)temperatureUnit
{
  sub_1961C();
  v2 = sub_211BC();

  return v2;
}

- (void)setTemperatureUnit:(id)a3
{
  v4 = sub_211EC();
  v6 = v5;
  v7 = self;
  sub_18CE0(v4, v6);
}

- (PSSpecifier)temperatureUnitSpecifier
{
  v2 = self;
  v3 = sub_18FC4();

  return v3;
}

- (IPNumberFormat)numberFormat
{
  v2 = [objc_opt_self() currentFormat];

  return v2;
}

- (void)setNumberFormat:(id)a3
{
  type metadata accessor for Settings();
  sub_195B4();
  v5 = a3;
  v8 = self;
  sub_210FC();
  sub_2110C();

  [objc_opt_self() setFormat:v5];
  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_211BC();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
}

- (NSString)numberFormatAsString
{
  v2 = self;
  v3 = [(Settings *)v2 numberFormat];
  v4 = [(IPNumberFormat *)v3 formattedNumber];

  if (!v4)
  {
    sub_211EC();
    v4 = sub_211BC();
  }

  return v4;
}

- (void)setNumberFormatAsString:(id)a3
{
  v4 = sub_211EC();
  v6 = v5;
  v7 = self;
  sub_19934(v4, v6);
}

- (PSSpecifier)numberFormatSpecifier
{
  v2 = self;
  v3 = sub_19BB4();

  return v3;
}

- (NSString)calendar
{
  sub_1B280();
  v2 = sub_211BC();

  return v2;
}

- (void)setCalendar:(id)a3
{
  v4 = sub_211EC();
  v6 = v5;
  v7 = self;
  sub_1ADFC(v4, v6);
}

- (NSString)numberingSystem
{
  sub_1E98C();
  v2 = sub_211BC();

  return v2;
}

- (void)setNumberingSystem:(id)a3
{
  v4 = sub_211EC();
  v6 = v5;
  v7 = self;
  sub_1D7AC(v4, v6);
}

- (NSString)measurementSystem
{
  sub_1FAE8();
  v2 = sub_211BC();

  return v2;
}

- (void)setMeasurementSystem:(id)a3
{
  v4 = sub_211EC();
  v6 = v5;
  v7 = self;
  sub_1EEDC(v4, v6);
}

- (PSSpecifier)measurementSystemSpecifier
{
  v2 = self;
  v3 = sub_1F1D4();

  return v3;
}

@end