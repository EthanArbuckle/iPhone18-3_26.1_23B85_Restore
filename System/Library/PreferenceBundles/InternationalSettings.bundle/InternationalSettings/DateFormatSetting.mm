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
  if (*(self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
    v3 = *(self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8);

    v4 = sub_211BC();
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
    v4 = sub_211EC();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
  v7 = *(self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (NSString)dateFormat
{
  swift_getKeyPath();
  sub_16CF0();
  selfCopy = self;
  sub_2107C();

  v5 = *(selfCopy + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
  v4 = *(selfCopy + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8);

  if (v4)
  {
    v6 = sub_211BC();
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
    v4 = sub_211EC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_158C0(v4, v6);
}

- (PSSpecifier)dateFormatSpecifier
{
  selfCopy = self;
  v3 = sub_163C8();

  return v3;
}

- (void)setDateFormatAndUpdateFooterTextWithDateFormat:(id)format specifier:(id)specifier
{
  v6 = sub_211EC();
  v8 = v7;
  specifierCopy = specifier;
  selfCopy = self;
  sub_175E4(v6, v8, specifierCopy);
}

@end