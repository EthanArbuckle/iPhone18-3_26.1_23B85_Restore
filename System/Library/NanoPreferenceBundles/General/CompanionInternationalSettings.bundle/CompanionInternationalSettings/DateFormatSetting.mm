@interface DateFormatSetting
- (NSString)_dateFormat;
- (NSString)dateFormat;
- (PSSpecifier)dateFormatSpecifier;
- (void)setDateFormat:(id)format;
- (void)setDateFormatAndUpdateFooterTextWithDateFormat:(id)format specifier:(id)specifier;
- (void)set_dateFormat:(id)format;
@end

@implementation DateFormatSetting

- (NSString)_dateFormat
{
  if (*(self + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
    v3 = *(self + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);

    v4 = sub_1ABC8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)set_dateFormat:(id)format
{
  if (format)
  {
    v4 = sub_1ABF8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  v7 = *(self + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSString)dateFormat
{
  swift_getKeyPath();
  sub_12640(&qword_30118, type metadata accessor for DateFormatSetting);
  selfCopy = self;
  sub_1AB48();

  v5 = *(selfCopy + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat);
  v4 = *(selfCopy + OBJC_IVAR____TtC30CompanionInternationalSettings17DateFormatSetting__dateFormat + 8);

  if (v4)
  {
    v6 = sub_1ABC8();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setDateFormat:(id)format
{
  if (format)
  {
    v4 = sub_1ABF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_10150(v4, v6);
}

- (PSSpecifier)dateFormatSpecifier
{
  selfCopy = self;
  v3 = sub_10E14();

  return v3;
}

- (void)setDateFormatAndUpdateFooterTextWithDateFormat:(id)format specifier:(id)specifier
{
  v6 = sub_1ABF8();
  v8 = v7;
  specifierCopy = specifier;
  selfCopy = self;
  sub_12394(v6, v8, specifierCopy);
}

@end