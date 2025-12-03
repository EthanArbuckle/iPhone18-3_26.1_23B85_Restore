@interface AMSAccountCachedServerDataFields
- (AMSAccountCachedServerDataFields)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAccountCachedServerDataFields

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  acAccountName = [(AMSAccountCachedServerDataFields *)self acAccountName];
  [coderCopy encodeObject:acAccountName forKey:@"kACAccountName"];

  [coderCopy encodeInt64:-[AMSAccountCachedServerDataFields accountFlagsVersion](self forKey:{"accountFlagsVersion"), @"kAccountFlagsVersion"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields allowPurchases](self forKey:{"allowPurchases"), @"kAllowPurchases"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields autoPlayEnabled](self forKey:{"autoPlayEnabled"), @"kAutoPlayEnabled"}];
  combinedStoreFrontID = [(AMSAccountCachedServerDataFields *)self combinedStoreFrontID];
  [coderCopy encodeObject:combinedStoreFrontID forKey:@"kCombinedStoreFrontID"];

  creditBalance = [(AMSAccountCachedServerDataFields *)self creditBalance];
  [coderCopy encodeObject:creditBalance forKey:@"kCreditBalance"];

  firstName = [(AMSAccountCachedServerDataFields *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"kFirstName"];

  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields hasAgreedToAppClipTerms](self forKey:{"hasAgreedToAppClipTerms"), @"kHasAgreedToAppClipTerms"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields hasAgreedToTerms](self forKey:{"hasAgreedToTerms"), @"kHasAgreedToTerms"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields hasSubscriptionFamilySharingEnabled](self forKey:{"hasSubscriptionFamilySharingEnabled"), @"kHasSubscriptionFamilySharingEnabled"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields hasHardwareWatchOffer](self forKey:{"hasHardwareWatchOffer"), @"kHasHardwareWatchOffer"}];
  [coderCopy encodeInt64:-[AMSAccountCachedServerDataFields identityLastVerified](self forKey:{"identityLastVerified"), @"kIdentityLastVerified"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isAskToBuy](self forKey:{"isAskToBuy"), @"kIsAskToBuy"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isDisabledAccount](self forKey:{"isDisabledAccount"), @"kIsDisabledAccount"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isInBadCredit](self forKey:{"isInBadCredit"), @"kIsInBadCredit"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isInFamily](self forKey:{"isInFamily"), @"kIsInFamily"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isInRestrictedRegion](self forKey:{"isInRestrictedRegion"), @"kIsInRestrictedRegion"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isDisabledAccount](self forKey:{"isDisabledAccount"), @"kIsDisabledAccount"}];
  isU18OrCountrysEquivalent = [(AMSAccountCachedServerDataFields *)self isU18OrCountrysEquivalent];
  [coderCopy encodeObject:isU18OrCountrysEquivalent forKey:@"kIsU18OrCountrysEquivalent"];

  isoCountryCode = [(AMSAccountCachedServerDataFields *)self isoCountryCode];
  [coderCopy encodeObject:isoCountryCode forKey:@"kISOCountryCode"];

  iso2CountryCode = [(AMSAccountCachedServerDataFields *)self iso2CountryCode];
  [coderCopy encodeObject:iso2CountryCode forKey:@"kISO2CountryCode"];

  iso3CountryCode = [(AMSAccountCachedServerDataFields *)self iso3CountryCode];
  [coderCopy encodeObject:iso3CountryCode forKey:@"kISO3CountryCode"];

  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isRestrictedAccount](self forKey:{"isRestrictedAccount"), @"kIsRestrictedAccount"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields isManagedAccount](self forKey:{"isManagedAccount"), @"kIsManagedAccount"}];
  lastName = [(AMSAccountCachedServerDataFields *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"kLastName"];

  movieRestrictionRatingSystem = [(AMSAccountCachedServerDataFields *)self movieRestrictionRatingSystem];
  [coderCopy encodeObject:movieRestrictionRatingSystem forKey:@"kMovieRestrictionRatingSystem"];

  [coderCopy encodeInt64:-[AMSAccountCachedServerDataFields movieRestrictionRatingValue](self forKey:{"movieRestrictionRatingValue"), @"kMovieRestrictionRatingValue"}];
  musicRestriction = [(AMSAccountCachedServerDataFields *)self musicRestriction];
  [coderCopy encodeObject:musicRestriction forKey:@"kMusicRestriction"];

  oneAccountLinkedDSID = [(AMSAccountCachedServerDataFields *)self oneAccountLinkedDSID];
  [coderCopy encodeObject:oneAccountLinkedDSID forKey:@"kOneAccountLinkedDSID"];

  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields personalization](self forKey:{"personalization"), @"kPersonalization"}];
  profileLock = [(AMSAccountCachedServerDataFields *)self profileLock];
  [coderCopy encodeObject:profileLock forKey:@"kProfileLock"];

  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields retailDemo](self forKey:{"retailDemo"), @"kRetailDemo"}];
  storefrontId = [(AMSAccountCachedServerDataFields *)self storefrontId];
  [coderCopy encodeObject:storefrontId forKey:@"kStorefrontId"];

  tvRestrictionRatingSystem = [(AMSAccountCachedServerDataFields *)self tvRestrictionRatingSystem];
  [coderCopy encodeObject:tvRestrictionRatingSystem forKey:@"kTVRestrictionRatingSystem"];

  [coderCopy encodeInt64:-[AMSAccountCachedServerDataFields tvRestrictionRatingValue](self forKey:{"tvRestrictionRatingValue"), @"kTVRestrictionRatingValue"}];
  [coderCopy encodeBool:-[AMSAccountCachedServerDataFields underThirteen](self forKey:{"underThirteen"), @"kUnderThirteen"}];
  [coderCopy encodeInt64:-[AMSAccountCachedServerDataFields verifiedExpirationDate](self forKey:{"verifiedExpirationDate"), @"kVerifiedExpirationDate"}];
  expiration = [(AMSAccountCachedServerDataFields *)self expiration];
  [coderCopy encodeObject:expiration forKey:@"kExpiryTimestamp"];
}

- (AMSAccountCachedServerDataFields)initWithCoder:(id)coder
{
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = AMSAccountCachedServerDataFields;
  v5 = [(AMSAccountCachedServerDataFields *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kACAccountName"];
    acAccountName = v5->_acAccountName;
    v5->_acAccountName = v6;

    v5->_accountFlagsVersion = [coderCopy decodeInt64ForKey:@"kAccountFlagsVersion"];
    v5->_allowPurchases = [coderCopy decodeBoolForKey:@"kAllowPurchases"];
    v5->_autoPlayEnabled = [coderCopy decodeBoolForKey:@"kAutoPlayEnabled"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCombinedStoreFrontID"];
    combinedStoreFrontID = v5->_combinedStoreFrontID;
    v5->_combinedStoreFrontID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCreditBalance"];
    creditBalance = v5->_creditBalance;
    v5->_creditBalance = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFirstName"];
    firstName = v5->_firstName;
    v5->_firstName = v12;

    v5->_hasAgreedToAppClipTerms = [coderCopy decodeBoolForKey:@"kHasAgreedToAppClipTerms"];
    v5->_hasAgreedToTerms = [coderCopy decodeBoolForKey:@"kHasAgreedToTerms"];
    v5->_hasSubscriptionFamilySharingEnabled = [coderCopy decodeBoolForKey:@"kHasSubscriptionFamilySharingEnabled"];
    v5->_hasHardwareWatchOffer = [coderCopy decodeBoolForKey:@"kHasHardwareWatchOffer"];
    v5->_identityLastVerified = [coderCopy decodeInt64ForKey:@"kIdentityLastVerified"];
    v5->_isAskToBuy = [coderCopy decodeBoolForKey:@"kIsAskToBuy"];
    v5->_isDisabledAccount = [coderCopy decodeBoolForKey:@"kIsDisabledAccount"];
    v5->_isInBadCredit = [coderCopy decodeBoolForKey:@"kIsInBadCredit"];
    v5->_isInFamily = [coderCopy decodeBoolForKey:@"kIsInFamily"];
    v5->_isInRestrictedRegion = [coderCopy decodeBoolForKey:@"kIsInRestrictedRegion"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIsU18OrCountrysEquivalent"];
    isU18OrCountrysEquivalent = v5->_isU18OrCountrysEquivalent;
    v5->_isU18OrCountrysEquivalent = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kISOCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kISO2CountryCode"];
    iso2CountryCode = v5->_iso2CountryCode;
    v5->_iso2CountryCode = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kISO3CountryCode"];
    iso3CountryCode = v5->_iso3CountryCode;
    v5->_iso3CountryCode = v20;

    v5->_isRestrictedAccount = [coderCopy decodeBoolForKey:@"kIsRestrictedAccount"];
    v5->_isManagedAccount = [coderCopy decodeBoolForKey:@"kIsManagedAccount"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kLastName"];
    lastName = v5->_lastName;
    v5->_lastName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMovieRestrictionRatingSystem"];
    movieRestrictionRatingSystem = v5->_movieRestrictionRatingSystem;
    v5->_movieRestrictionRatingSystem = v24;

    v5->_movieRestrictionRatingValue = [coderCopy decodeInt64ForKey:@"kMovieRestrictionRatingValue"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMusicRestriction"];
    musicRestriction = v5->_musicRestriction;
    v5->_musicRestriction = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOneAccountLinkedDSID"];
    oneAccountLinkedDSID = v5->_oneAccountLinkedDSID;
    v5->_oneAccountLinkedDSID = v28;

    v5->_personalization = [coderCopy decodeBoolForKey:@"kPersonalization"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kProfileLock"];
    profileLock = v5->_profileLock;
    v5->_profileLock = v30;

    v5->_retailDemo = [coderCopy decodeBoolForKey:@"kRetailDemo"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kStorefrontId"];
    storefrontId = v5->_storefrontId;
    v5->_storefrontId = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTVRestrictionRatingSystem"];
    tvRestrictionRatingSystem = v5->_tvRestrictionRatingSystem;
    v5->_tvRestrictionRatingSystem = v34;

    v5->_tvRestrictionRatingValue = [coderCopy decodeInt64ForKey:@"kTVRestrictionRatingValue"];
    v5->_underThirteen = [coderCopy decodeBoolForKey:@"kUnderThirteen"];
    v5->_verifiedExpirationDate = [coderCopy decodeInt64ForKey:@"kVerifiedExpirationDate"];
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kExpiryTimestamp"];
    expiration = v5->_expiration;
    v5->_expiration = v36;
  }

  return v5;
}

@end