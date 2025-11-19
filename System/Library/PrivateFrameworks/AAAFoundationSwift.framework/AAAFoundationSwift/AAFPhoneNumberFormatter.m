@interface AAFPhoneNumberFormatter
- (const)defaultCountryCode;
- (id)countryCodePrefixedNormalizedFormatFor:(id)a3 countryCode:(id)a4;
- (id)displayFormatFor:(id)a3;
- (id)normalizedFormatFor:(id)a3;
- (void)setDefaultCountryCode:(const __CFString *)a3;
@end

@implementation AAFPhoneNumberFormatter

- (const)defaultCountryCode
{
  v3 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDefaultCountryCode:(const __CFString *)a3
{
  v5 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (id)normalizedFormatFor:(id)a3
{
  v4 = sub_1B99F3C24();
  v6 = v5;
  v7 = self;
  sub_1B99C7F88(v4, v6);

  v8 = sub_1B99F3C04();

  return v8;
}

- (id)displayFormatFor:(id)a3
{
  v4 = sub_1B99F3C24();
  v6 = v5;
  v7 = self;
  sub_1B99C7044(v4, v6);

  v8 = sub_1B99F3C04();

  return v8;
}

- (id)countryCodePrefixedNormalizedFormatFor:(id)a3 countryCode:(id)a4
{
  v6 = sub_1B99F3C24();
  v8 = v7;
  if (a4)
  {
    v9 = sub_1B99F3C24();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  sub_1B99C8518(v6, v8, v9, a4);
  v13 = v12;

  if (v13)
  {
    v14 = sub_1B99F3C04();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end