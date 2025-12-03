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

- (IPNumberFormat)numberFormat
{
  currentFormat = [objc_opt_self() currentFormat];

  return currentFormat;
}

- (void)setNumberFormat:(id)format
{
  type metadata accessor for Settings();
  sub_134E0();
  formatCopy = format;
  selfCopy = self;
  sub_1AB78();
  sub_1AB88();

  [objc_opt_self() setFormat:formatCopy];
  _CFLocaleResetCurrent();
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = sub_1ABC8();
  CFNotificationCenterPostNotification(v6, v7, 0, 0, 1u);
}

- (NSString)numberFormatAsString
{
  selfCopy = self;
  numberFormat = [(Settings *)selfCopy numberFormat];
  formattedNumber = [(IPNumberFormat *)numberFormat formattedNumber];

  if (!formattedNumber)
  {
    sub_1ABF8();
    formattedNumber = sub_1ABC8();
  }

  return formattedNumber;
}

- (void)setNumberFormatAsString:(id)string
{
  v4 = sub_1ABF8();
  v6 = v5;
  selfCopy = self;
  sub_128D8(v4, v6);
}

- (PSSpecifier)numberFormatSpecifier
{
  selfCopy = self;
  v3 = sub_12B58();

  return v3;
}

- (NSString)measurementSystem
{
  sub_13ECC();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setMeasurementSystem:(id)system
{
  v4 = sub_1ABF8();
  v6 = v5;
  selfCopy = self;
  sub_135F0(v4, v6);
}

- (PSSpecifier)measurementSystemSpecifier
{
  selfCopy = self;
  v3 = sub_138E8();

  return v3;
}

- (NSString)temperatureUnit
{
  sub_14C60();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setTemperatureUnit:(id)unit
{
  v4 = sub_1ABF8();
  v6 = v5;
  selfCopy = self;
  sub_1438C(v4, v6);
}

- (PSSpecifier)temperatureUnitSpecifier
{
  selfCopy = self;
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

- (void)setNumberingSystem:(id)system
{
  v4 = sub_1ABF8();
  v6 = v5;
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setFirstWeekday:(int64_t)weekday
{
  selfCopy = self;
  sub_1729C(weekday);
}

- (NSNumber)firstWeekdayAsNSNumber
{
  sub_122DC(0, &qword_302A8, NSNumber_ptr);
  selfCopy = self;
  v4.super.super.isa = sub_1AC58([(Settings *)selfCopy firstWeekday]).super.super.isa;

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
  v3 = sub_17848();

  return v3;
}

- (NSString)calendar
{
  sub_1A300();
  v2 = sub_1ABC8();

  return v2;
}

- (void)setCalendar:(id)calendar
{
  v4 = sub_1ABF8();
  v6 = v5;
  selfCopy = self;
  sub_191F0(v4, v6);
}

@end