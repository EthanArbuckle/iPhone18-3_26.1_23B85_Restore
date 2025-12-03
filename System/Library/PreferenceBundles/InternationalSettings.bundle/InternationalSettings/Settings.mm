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
- (void)setCalendar:(id)calendar;
- (void)setFirstWeekday:(int64_t)weekday;
- (void)setFirstWeekdayAsNSNumber:(id)number;
- (void)setMeasurementSystem:(id)system;
- (void)setNumberFormat:(id)format;
- (void)setNumberFormatAsString:(id)string;
- (void)setNumberingSystem:(id)system;
- (void)setTemperatureUnit:(id)unit;
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
  selfCopy = self;
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

- (void)setFirstWeekday:(int64_t)weekday
{
  selfCopy = self;
  sub_179C8(weekday);
}

- (NSNumber)firstWeekdayAsNSNumber
{
  sub_1752C(0, &qword_3CE58, NSNumber_ptr);
  selfCopy = self;
  v4.super.super.isa = sub_2127C([(Settings *)selfCopy firstWeekday]).super.super.isa;

  return v4.super.super.isa;
}

- (void)setFirstWeekdayAsNSNumber:(id)number
{
  numberCopy = number;
  selfCopy = self;
  -[Settings setFirstWeekday:](selfCopy, "setFirstWeekday:", [numberCopy integerValue]);
}

- (PSSpecifier)firstWeekdaySpecifier
{
  selfCopy = self;
  v3 = sub_17F74();

  return v3;
}

- (NSString)temperatureUnit
{
  sub_1961C();
  v2 = sub_211BC();

  return v2;
}

- (void)setTemperatureUnit:(id)unit
{
  v4 = sub_211EC();
  v6 = v5;
  selfCopy = self;
  sub_18CE0(v4, v6);
}

- (PSSpecifier)temperatureUnitSpecifier
{
  selfCopy = self;
  v3 = sub_18FC4();

  return v3;
}

- (IPNumberFormat)numberFormat
{
  currentFormat = [objc_opt_self() currentFormat];

  return currentFormat;
}

- (void)setNumberFormat:(id)format
{
  type metadata accessor for Settings();
  sub_195B4();
  formatCopy = format;
  selfCopy = self;
  sub_210FC();
  sub_2110C();

  [objc_opt_self() setFormat:formatCopy];
  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_211BC();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
}

- (NSString)numberFormatAsString
{
  selfCopy = self;
  numberFormat = [(Settings *)selfCopy numberFormat];
  formattedNumber = [(IPNumberFormat *)numberFormat formattedNumber];

  if (!formattedNumber)
  {
    sub_211EC();
    formattedNumber = sub_211BC();
  }

  return formattedNumber;
}

- (void)setNumberFormatAsString:(id)string
{
  v4 = sub_211EC();
  v6 = v5;
  selfCopy = self;
  sub_19934(v4, v6);
}

- (PSSpecifier)numberFormatSpecifier
{
  selfCopy = self;
  v3 = sub_19BB4();

  return v3;
}

- (NSString)calendar
{
  sub_1B280();
  v2 = sub_211BC();

  return v2;
}

- (void)setCalendar:(id)calendar
{
  v4 = sub_211EC();
  v6 = v5;
  selfCopy = self;
  sub_1ADFC(v4, v6);
}

- (NSString)numberingSystem
{
  sub_1E98C();
  v2 = sub_211BC();

  return v2;
}

- (void)setNumberingSystem:(id)system
{
  v4 = sub_211EC();
  v6 = v5;
  selfCopy = self;
  sub_1D7AC(v4, v6);
}

- (NSString)measurementSystem
{
  sub_1FAE8();
  v2 = sub_211BC();

  return v2;
}

- (void)setMeasurementSystem:(id)system
{
  v4 = sub_211EC();
  v6 = v5;
  selfCopy = self;
  sub_1EEDC(v4, v6);
}

- (PSSpecifier)measurementSystemSpecifier
{
  selfCopy = self;
  v3 = sub_1F1D4();

  return v3;
}

@end