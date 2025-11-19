@interface AMSCarrierOfferRegistrationPrivacyValidator
+ (id)allowedIdentifiersFrom:(id)a3 forAccount:(id)a4;
@end

@implementation AMSCarrierOfferRegistrationPrivacyValidator

+ (id)allowedIdentifiersFrom:(id)a3 forAccount:(id)a4
{
  v5 = sub_192F9669C();
  swift_getObjCClassMetadata();
  v6 = a4;
  static CarrierOfferRegistrationPrivacyValidator.allowedIdentifiers(from:forAccount:)(v5, v6);

  v7 = sub_192F96D9C();

  return v7;
}

@end