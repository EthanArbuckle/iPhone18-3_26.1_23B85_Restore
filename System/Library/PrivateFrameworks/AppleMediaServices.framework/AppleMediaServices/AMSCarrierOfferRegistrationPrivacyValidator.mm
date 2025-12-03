@interface AMSCarrierOfferRegistrationPrivacyValidator
+ (id)allowedIdentifiersFrom:(id)from forAccount:(id)account;
@end

@implementation AMSCarrierOfferRegistrationPrivacyValidator

+ (id)allowedIdentifiersFrom:(id)from forAccount:(id)account
{
  v5 = sub_192F9669C();
  swift_getObjCClassMetadata();
  accountCopy = account;
  static CarrierOfferRegistrationPrivacyValidator.allowedIdentifiers(from:forAccount:)(v5, accountCopy);

  v7 = sub_192F96D9C();

  return v7;
}

@end