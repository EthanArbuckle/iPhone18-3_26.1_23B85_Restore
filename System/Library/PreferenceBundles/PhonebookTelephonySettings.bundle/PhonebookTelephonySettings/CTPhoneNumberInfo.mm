@interface CTPhoneNumberInfo
- (NSString)tps_localizedNumber;
- (NSString)tps_normalizedNumber;
@end

@implementation CTPhoneNumberInfo

- (NSString)tps_localizedNumber
{
  number = [(CTPhoneNumberInfo *)self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v4 = active;
  v5 = 0;
  if (number && active)
  {
    v5 = TPSLocalizedPhoneNumberString();
  }

  v6 = TPSPhonebookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = number;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Telephone number was localized to %@ using digits %@ and ISO country code %@.", &v8, 0x20u);
  }

  return v5;
}

- (NSString)tps_normalizedNumber
{
  number = [(CTPhoneNumberInfo *)self number];
  active = CPPhoneNumberCopyActiveCountryCode();
  v4 = active;
  v5 = 0;
  if (number && active)
  {
    v5 = TPSNormalizedPhoneNumberString();
  }

  v6 = TPSPhonebookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = number;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Telephone number was normalized to %@ using digits %@ and ISO country code %@.", &v8, 0x20u);
  }

  return v5;
}

@end