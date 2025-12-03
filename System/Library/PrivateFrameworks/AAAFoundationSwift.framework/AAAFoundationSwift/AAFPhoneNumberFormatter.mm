@interface AAFPhoneNumberFormatter
- (const)defaultCountryCode;
- (id)countryCodePrefixedNormalizedFormatFor:(id)for countryCode:(id)code;
- (id)displayFormatFor:(id)for;
- (id)normalizedFormatFor:(id)for;
- (void)setDefaultCountryCode:(const __CFString *)code;
@end

@implementation AAFPhoneNumberFormatter

- (const)defaultCountryCode
{
  v3 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDefaultCountryCode:(const __CFString *)code
{
  v5 = OBJC_IVAR___AAFPhoneNumberFormatter_defaultCountryCode;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = code;
  codeCopy = code;
}

- (id)normalizedFormatFor:(id)for
{
  v4 = sub_1B99F3C24();
  v6 = v5;
  selfCopy = self;
  sub_1B99C7F88(v4, v6);

  v8 = sub_1B99F3C04();

  return v8;
}

- (id)displayFormatFor:(id)for
{
  v4 = sub_1B99F3C24();
  v6 = v5;
  selfCopy = self;
  sub_1B99C7044(v4, v6);

  v8 = sub_1B99F3C04();

  return v8;
}

- (id)countryCodePrefixedNormalizedFormatFor:(id)for countryCode:(id)code
{
  v6 = sub_1B99F3C24();
  v8 = v7;
  if (code)
  {
    v9 = sub_1B99F3C24();
    code = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_1B99C8518(v6, v8, v9, code);
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