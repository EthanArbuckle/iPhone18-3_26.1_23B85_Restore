@interface AMSAccountCachedServerDataFields
- (AMSAccountCachedServerDataFields)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSAccountCachedServerDataFields

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSAccountCachedServerDataFields *)self acAccountName];
  [v4 encodeObject:v5 forKey:@"kACAccountName"];

  [v4 encodeInt64:-[AMSAccountCachedServerDataFields accountFlagsVersion](self forKey:{"accountFlagsVersion"), @"kAccountFlagsVersion"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields allowPurchases](self forKey:{"allowPurchases"), @"kAllowPurchases"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields autoPlayEnabled](self forKey:{"autoPlayEnabled"), @"kAutoPlayEnabled"}];
  v6 = [(AMSAccountCachedServerDataFields *)self combinedStoreFrontID];
  [v4 encodeObject:v6 forKey:@"kCombinedStoreFrontID"];

  v7 = [(AMSAccountCachedServerDataFields *)self creditBalance];
  [v4 encodeObject:v7 forKey:@"kCreditBalance"];

  v8 = [(AMSAccountCachedServerDataFields *)self firstName];
  [v4 encodeObject:v8 forKey:@"kFirstName"];

  [v4 encodeBool:-[AMSAccountCachedServerDataFields hasAgreedToAppClipTerms](self forKey:{"hasAgreedToAppClipTerms"), @"kHasAgreedToAppClipTerms"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields hasAgreedToTerms](self forKey:{"hasAgreedToTerms"), @"kHasAgreedToTerms"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields hasSubscriptionFamilySharingEnabled](self forKey:{"hasSubscriptionFamilySharingEnabled"), @"kHasSubscriptionFamilySharingEnabled"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields hasHardwareWatchOffer](self forKey:{"hasHardwareWatchOffer"), @"kHasHardwareWatchOffer"}];
  [v4 encodeInt64:-[AMSAccountCachedServerDataFields identityLastVerified](self forKey:{"identityLastVerified"), @"kIdentityLastVerified"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isAskToBuy](self forKey:{"isAskToBuy"), @"kIsAskToBuy"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isDisabledAccount](self forKey:{"isDisabledAccount"), @"kIsDisabledAccount"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isInBadCredit](self forKey:{"isInBadCredit"), @"kIsInBadCredit"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isInFamily](self forKey:{"isInFamily"), @"kIsInFamily"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isInRestrictedRegion](self forKey:{"isInRestrictedRegion"), @"kIsInRestrictedRegion"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isDisabledAccount](self forKey:{"isDisabledAccount"), @"kIsDisabledAccount"}];
  v9 = [(AMSAccountCachedServerDataFields *)self isU18OrCountrysEquivalent];
  [v4 encodeObject:v9 forKey:@"kIsU18OrCountrysEquivalent"];

  v10 = [(AMSAccountCachedServerDataFields *)self isoCountryCode];
  [v4 encodeObject:v10 forKey:@"kISOCountryCode"];

  v11 = [(AMSAccountCachedServerDataFields *)self iso2CountryCode];
  [v4 encodeObject:v11 forKey:@"kISO2CountryCode"];

  v12 = [(AMSAccountCachedServerDataFields *)self iso3CountryCode];
  [v4 encodeObject:v12 forKey:@"kISO3CountryCode"];

  [v4 encodeBool:-[AMSAccountCachedServerDataFields isRestrictedAccount](self forKey:{"isRestrictedAccount"), @"kIsRestrictedAccount"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields isManagedAccount](self forKey:{"isManagedAccount"), @"kIsManagedAccount"}];
  v13 = [(AMSAccountCachedServerDataFields *)self lastName];
  [v4 encodeObject:v13 forKey:@"kLastName"];

  v14 = [(AMSAccountCachedServerDataFields *)self movieRestrictionRatingSystem];
  [v4 encodeObject:v14 forKey:@"kMovieRestrictionRatingSystem"];

  [v4 encodeInt64:-[AMSAccountCachedServerDataFields movieRestrictionRatingValue](self forKey:{"movieRestrictionRatingValue"), @"kMovieRestrictionRatingValue"}];
  v15 = [(AMSAccountCachedServerDataFields *)self musicRestriction];
  [v4 encodeObject:v15 forKey:@"kMusicRestriction"];

  v16 = [(AMSAccountCachedServerDataFields *)self oneAccountLinkedDSID];
  [v4 encodeObject:v16 forKey:@"kOneAccountLinkedDSID"];

  [v4 encodeBool:-[AMSAccountCachedServerDataFields personalization](self forKey:{"personalization"), @"kPersonalization"}];
  v17 = [(AMSAccountCachedServerDataFields *)self profileLock];
  [v4 encodeObject:v17 forKey:@"kProfileLock"];

  [v4 encodeBool:-[AMSAccountCachedServerDataFields retailDemo](self forKey:{"retailDemo"), @"kRetailDemo"}];
  v18 = [(AMSAccountCachedServerDataFields *)self storefrontId];
  [v4 encodeObject:v18 forKey:@"kStorefrontId"];

  v19 = [(AMSAccountCachedServerDataFields *)self tvRestrictionRatingSystem];
  [v4 encodeObject:v19 forKey:@"kTVRestrictionRatingSystem"];

  [v4 encodeInt64:-[AMSAccountCachedServerDataFields tvRestrictionRatingValue](self forKey:{"tvRestrictionRatingValue"), @"kTVRestrictionRatingValue"}];
  [v4 encodeBool:-[AMSAccountCachedServerDataFields underThirteen](self forKey:{"underThirteen"), @"kUnderThirteen"}];
  [v4 encodeInt64:-[AMSAccountCachedServerDataFields verifiedExpirationDate](self forKey:{"verifiedExpirationDate"), @"kVerifiedExpirationDate"}];
  v20 = [(AMSAccountCachedServerDataFields *)self expiration];
  [v4 encodeObject:v20 forKey:@"kExpiryTimestamp"];
}

- (AMSAccountCachedServerDataFields)initWithCoder:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = AMSAccountCachedServerDataFields;
  v5 = [(AMSAccountCachedServerDataFields *)&v39 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kACAccountName"];
    acAccountName = v5->_acAccountName;
    v5->_acAccountName = v6;

    v5->_accountFlagsVersion = [v4 decodeInt64ForKey:@"kAccountFlagsVersion"];
    v5->_allowPurchases = [v4 decodeBoolForKey:@"kAllowPurchases"];
    v5->_autoPlayEnabled = [v4 decodeBoolForKey:@"kAutoPlayEnabled"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCombinedStoreFrontID"];
    combinedStoreFrontID = v5->_combinedStoreFrontID;
    v5->_combinedStoreFrontID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCreditBalance"];
    creditBalance = v5->_creditBalance;
    v5->_creditBalance = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFirstName"];
    firstName = v5->_firstName;
    v5->_firstName = v12;

    v5->_hasAgreedToAppClipTerms = [v4 decodeBoolForKey:@"kHasAgreedToAppClipTerms"];
    v5->_hasAgreedToTerms = [v4 decodeBoolForKey:@"kHasAgreedToTerms"];
    v5->_hasSubscriptionFamilySharingEnabled = [v4 decodeBoolForKey:@"kHasSubscriptionFamilySharingEnabled"];
    v5->_hasHardwareWatchOffer = [v4 decodeBoolForKey:@"kHasHardwareWatchOffer"];
    v5->_identityLastVerified = [v4 decodeInt64ForKey:@"kIdentityLastVerified"];
    v5->_isAskToBuy = [v4 decodeBoolForKey:@"kIsAskToBuy"];
    v5->_isDisabledAccount = [v4 decodeBoolForKey:@"kIsDisabledAccount"];
    v5->_isInBadCredit = [v4 decodeBoolForKey:@"kIsInBadCredit"];
    v5->_isInFamily = [v4 decodeBoolForKey:@"kIsInFamily"];
    v5->_isInRestrictedRegion = [v4 decodeBoolForKey:@"kIsInRestrictedRegion"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIsU18OrCountrysEquivalent"];
    isU18OrCountrysEquivalent = v5->_isU18OrCountrysEquivalent;
    v5->_isU18OrCountrysEquivalent = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kISOCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kISO2CountryCode"];
    iso2CountryCode = v5->_iso2CountryCode;
    v5->_iso2CountryCode = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kISO3CountryCode"];
    iso3CountryCode = v5->_iso3CountryCode;
    v5->_iso3CountryCode = v20;

    v5->_isRestrictedAccount = [v4 decodeBoolForKey:@"kIsRestrictedAccount"];
    v5->_isManagedAccount = [v4 decodeBoolForKey:@"kIsManagedAccount"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kLastName"];
    lastName = v5->_lastName;
    v5->_lastName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMovieRestrictionRatingSystem"];
    movieRestrictionRatingSystem = v5->_movieRestrictionRatingSystem;
    v5->_movieRestrictionRatingSystem = v24;

    v5->_movieRestrictionRatingValue = [v4 decodeInt64ForKey:@"kMovieRestrictionRatingValue"];
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMusicRestriction"];
    musicRestriction = v5->_musicRestriction;
    v5->_musicRestriction = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOneAccountLinkedDSID"];
    oneAccountLinkedDSID = v5->_oneAccountLinkedDSID;
    v5->_oneAccountLinkedDSID = v28;

    v5->_personalization = [v4 decodeBoolForKey:@"kPersonalization"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kProfileLock"];
    profileLock = v5->_profileLock;
    v5->_profileLock = v30;

    v5->_retailDemo = [v4 decodeBoolForKey:@"kRetailDemo"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kStorefrontId"];
    storefrontId = v5->_storefrontId;
    v5->_storefrontId = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTVRestrictionRatingSystem"];
    tvRestrictionRatingSystem = v5->_tvRestrictionRatingSystem;
    v5->_tvRestrictionRatingSystem = v34;

    v5->_tvRestrictionRatingValue = [v4 decodeInt64ForKey:@"kTVRestrictionRatingValue"];
    v5->_underThirteen = [v4 decodeBoolForKey:@"kUnderThirteen"];
    v5->_verifiedExpirationDate = [v4 decodeInt64ForKey:@"kVerifiedExpirationDate"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kExpiryTimestamp"];
    expiration = v5->_expiration;
    v5->_expiration = v36;
  }

  return v5;
}

@end