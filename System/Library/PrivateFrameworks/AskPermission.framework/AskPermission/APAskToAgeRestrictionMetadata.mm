@interface APAskToAgeRestrictionMetadata
- (APAskToAgeRestrictionMetadata)initWithCoder:(id)coder;
- (APAskToAgeRestrictionMetadata)initWithDictionary:(id)dictionary;
- (id)compile;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APAskToAgeRestrictionMetadata

- (id)compile
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  appBundleID = [(APAskToAgeRestrictionMetadata *)self appBundleID];
  [v3 setObject:appBundleID forKeyedSubscript:@"appBundleID"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata appItemID](self, "appItemID")}];
  [v3 setObject:v5 forKeyedSubscript:@"appItemID"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata appVersionID](self, "appVersionID")}];
  [v3 setObject:v6 forKeyedSubscript:@"appVersionID"];

  appName = [(APAskToAgeRestrictionMetadata *)self appName];
  [v3 setObject:appName forKeyedSubscript:@"appName"];

  requestedAppIconURL = [(APAskToAgeRestrictionMetadata *)self requestedAppIconURL];
  absoluteString = [requestedAppIconURL absoluteString];
  [v3 setObject:absoluteString forKeyedSubscript:@"requestedAppIconURL"];

  distributorID = [(APAskToAgeRestrictionMetadata *)self distributorID];
  [v3 setObject:distributorID forKeyedSubscript:@"distributorID"];

  distributorName = [(APAskToAgeRestrictionMetadata *)self distributorName];
  [v3 setObject:distributorName forKeyedSubscript:@"distributorName"];

  developerID = [(APAskToAgeRestrictionMetadata *)self developerID];
  [v3 setObject:developerID forKeyedSubscript:@"developerID"];

  developerName = [(APAskToAgeRestrictionMetadata *)self developerName];
  [v3 setObject:developerName forKeyedSubscript:@"developerName"];

  developerSupportURL = [(APAskToAgeRestrictionMetadata *)self developerSupportURL];
  absoluteString2 = [developerSupportURL absoluteString];
  [v3 setObject:absoluteString2 forKeyedSubscript:@"developerSupportURL"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata isWebApp](self, "isWebApp")}];
  [v3 setObject:v16 forKeyedSubscript:@"isWebApp"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata isDistributor](self, "isDistributor")}];
  [v3 setObject:v17 forKeyedSubscript:@"isDistributor"];

  askerName = [(APAskToAgeRestrictionMetadata *)self askerName];
  [v3 setObject:askerName forKeyedSubscript:@"askerName"];

  ageRatingString = [(APAskToAgeRestrictionMetadata *)self ageRatingString];
  [v3 setObject:ageRatingString forKeyedSubscript:@"ageRatingString"];

  distributorType = [(APAskToAgeRestrictionMetadata *)self distributorType];
  [v3 setObject:distributorType forKeyedSubscript:@"distributorType"];

  distributorBundleID = [(APAskToAgeRestrictionMetadata *)self distributorBundleID];
  [v3 setObject:distributorBundleID forKeyedSubscript:@"distributorBundleID"];

  distributorDomain = [(APAskToAgeRestrictionMetadata *)self distributorDomain];
  [v3 setObject:distributorDomain forKeyedSubscript:@"distributorDomain"];

  distributorIconURL = [(APAskToAgeRestrictionMetadata *)self distributorIconURL];
  absoluteString3 = [distributorIconURL absoluteString];
  [v3 setObject:absoluteString3 forKeyedSubscript:@"distributorIconURL"];

  installTypeRawValue = [(APAskToAgeRestrictionMetadata *)self installTypeRawValue];
  [v3 setObject:installTypeRawValue forKeyedSubscript:@"installTypeRawValue"];

  accountID = [(APAskToAgeRestrictionMetadata *)self accountID];
  [v3 setObject:accountID forKeyedSubscript:@"accountID"];

  v27 = [(APAskToAgeRestrictionMetadata *)self url];
  absoluteString4 = [v27 absoluteString];
  [v3 setObject:absoluteString4 forKeyedSubscript:@"url"];

  oAuthToken = [(APAskToAgeRestrictionMetadata *)self oAuthToken];
  [v3 setObject:oAuthToken forKeyedSubscript:@"oAuthToken"];

  installVerificationToken = [(APAskToAgeRestrictionMetadata *)self installVerificationToken];
  [v3 setObject:installVerificationToken forKeyedSubscript:@"installVerificationToken"];

  clientID = [(APAskToAgeRestrictionMetadata *)self clientID];
  [v3 setObject:clientID forKeyedSubscript:@"clientID"];

  authenticationContextData = [(APAskToAgeRestrictionMetadata *)self authenticationContextData];
  v33 = [authenticationContextData base64EncodedStringWithOptions:0];
  [v3 setObject:v33 forKeyedSubscript:@"authenticationContextData"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata userInitiatedOverride](self, "userInitiatedOverride")}];
  [v3 setObject:v34 forKeyedSubscript:@"userInitiatedOverride"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata allowAccountPrompt](self, "allowAccountPrompt")}];
  [v3 setObject:v35 forKeyedSubscript:@"allowAccountPrompt"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata originallyRequestedVersionID](self, "originallyRequestedVersionID")}];
  [v3 setObject:v36 forKeyedSubscript:@"originallyRequestedVersionID"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata itemIDFromButtonConfiguration](self, "itemIDFromButtonConfiguration")}];
  [v3 setObject:v37 forKeyedSubscript:@"itemIDFromButtonConfiguration"];

  referrer = [(APAskToAgeRestrictionMetadata *)self referrer];
  absoluteString5 = [referrer absoluteString];
  [v3 setObject:absoluteString5 forKeyedSubscript:@"referrer"];

  appShareURL = [(APAskToAgeRestrictionMetadata *)self appShareURL];
  absoluteString6 = [appShareURL absoluteString];
  [v3 setObject:absoluteString6 forKeyedSubscript:@"appShareURL"];

  v42 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v42;
}

- (APAskToAgeRestrictionMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v68.receiver = self;
  v68.super_class = APAskToAgeRestrictionMetadata;
  v5 = [(APAskToAgeRestrictionMetadata *)&v68 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appBundleID"];
    appBundleID = v5->_appBundleID;
    v5->_appBundleID = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"appItemID"];
    v5->_appItemID = [v8 unsignedLongLongValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"appVersionID"];
    v5->_appVersionID = [v9 unsignedLongLongValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appName"];
    appName = v5->_appName;
    v5->_appName = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"requestedAppIconURL"];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    requestedAppIconURL = v5->_requestedAppIconURL;
    v5->_requestedAppIconURL = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"distributorID"];
    distributorID = v5->_distributorID;
    v5->_distributorID = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"distributorName"];
    distributorName = v5->_distributorName;
    v5->_distributorName = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"developerSupportURL"];
    v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
    developerSupportURL = v5->_developerSupportURL;
    v5->_developerSupportURL = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"developerID"];
    developerID = v5->_developerID;
    v5->_developerID = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"developerName"];
    developerName = v5->_developerName;
    v5->_developerName = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"isWebApp"];
    v5->_isWebApp = [v26 BOOLValue];

    v27 = [dictionaryCopy objectForKeyedSubscript:@"isDistributor"];
    v5->_isDistributor = [v27 BOOLValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"askerName"];
    askerName = v5->_askerName;
    v5->_askerName = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"ageRatingString"];
    ageRatingString = v5->_ageRatingString;
    v5->_ageRatingString = v30;

    v32 = [dictionaryCopy objectForKeyedSubscript:@"distributorType"];
    distributorType = v5->_distributorType;
    v5->_distributorType = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"distributorBundleID"];
    distributorBundleID = v5->_distributorBundleID;
    v5->_distributorBundleID = v34;

    v36 = [dictionaryCopy objectForKeyedSubscript:@"distributorDomain"];
    distributorDomain = v5->_distributorDomain;
    v5->_distributorDomain = v36;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"distributorIconURL"];
    v39 = [MEMORY[0x277CBEBC0] URLWithString:v38];
    distributorIconURL = v5->_distributorIconURL;
    v5->_distributorIconURL = v39;

    v41 = [dictionaryCopy objectForKeyedSubscript:@"installTypeRawValue"];
    installTypeRawValue = v5->_installTypeRawValue;
    v5->_installTypeRawValue = v41;

    v43 = [dictionaryCopy objectForKeyedSubscript:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v43;

    v45 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    v46 = [MEMORY[0x277CBEBC0] URLWithString:v45];
    url = v5->_url;
    v5->_url = v46;

    v48 = [dictionaryCopy objectForKeyedSubscript:@"oAuthToken"];
    oAuthToken = v5->_oAuthToken;
    v5->_oAuthToken = v48;

    v50 = [dictionaryCopy objectForKeyedSubscript:@"installVerificationToken"];
    installVerificationToken = v5->_installVerificationToken;
    v5->_installVerificationToken = v50;

    v52 = [dictionaryCopy objectForKeyedSubscript:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v52;

    v54 = [dictionaryCopy objectForKeyedSubscript:@"authenticationContextData"];
    if (v54)
    {
      v55 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v54 options:0];
      authenticationContextData = v5->_authenticationContextData;
      v5->_authenticationContextData = v55;
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"userInitiatedOverride"];
    v5->_userInitiatedOverride = [v57 BOOLValue];

    v58 = [dictionaryCopy objectForKeyedSubscript:@"allowAccountPrompt"];
    v5->_allowAccountPrompt = [v58 BOOLValue];

    v59 = [dictionaryCopy objectForKeyedSubscript:@"originallyRequestedVersionID"];
    v5->_originallyRequestedVersionID = [v59 unsignedLongLongValue];

    v60 = [dictionaryCopy objectForKeyedSubscript:@"itemIDFromButtonConfiguration"];
    v5->_itemIDFromButtonConfiguration = [v60 unsignedLongLongValue];

    v61 = [dictionaryCopy objectForKeyedSubscript:@"referrer"];
    v62 = [MEMORY[0x277CBEBC0] URLWithString:v61];
    referrer = v5->_referrer;
    v5->_referrer = v62;

    v64 = [dictionaryCopy objectForKeyedSubscript:@"appShareURL"];
    v65 = [MEMORY[0x277CBEBC0] URLWithString:v64];
    appShareURL = v5->_appShareURL;
    v5->_appShareURL = v65;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  appBundleID = [(APAskToAgeRestrictionMetadata *)self appBundleID];
  [coderCopy encodeObject:appBundleID forKey:@"appBundleID"];

  [coderCopy encodeInt64:-[APAskToAgeRestrictionMetadata appItemID](self forKey:{"appItemID"), @"appItemID"}];
  [coderCopy encodeInt64:-[APAskToAgeRestrictionMetadata appVersionID](self forKey:{"appVersionID"), @"appVersionID"}];
  appName = [(APAskToAgeRestrictionMetadata *)self appName];
  [coderCopy encodeObject:appName forKey:@"appName"];

  requestedAppIconURL = [(APAskToAgeRestrictionMetadata *)self requestedAppIconURL];
  [coderCopy encodeObject:requestedAppIconURL forKey:@"requestedAppIconURL"];

  distributorID = [(APAskToAgeRestrictionMetadata *)self distributorID];
  [coderCopy encodeObject:distributorID forKey:@"distributorID"];

  distributorName = [(APAskToAgeRestrictionMetadata *)self distributorName];
  [coderCopy encodeObject:distributorName forKey:@"distributorName"];

  developerID = [(APAskToAgeRestrictionMetadata *)self developerID];
  [coderCopy encodeObject:developerID forKey:@"developerID"];

  developerName = [(APAskToAgeRestrictionMetadata *)self developerName];
  [coderCopy encodeObject:developerName forKey:@"developerName"];

  developerSupportURL = [(APAskToAgeRestrictionMetadata *)self developerSupportURL];
  [coderCopy encodeObject:developerSupportURL forKey:@"developerSupportURL"];

  [coderCopy encodeBool:-[APAskToAgeRestrictionMetadata isWebApp](self forKey:{"isWebApp"), @"isWebApp"}];
  [coderCopy encodeBool:-[APAskToAgeRestrictionMetadata isDistributor](self forKey:{"isDistributor"), @"isDistributor"}];
  askerName = [(APAskToAgeRestrictionMetadata *)self askerName];
  [coderCopy encodeObject:askerName forKey:@"askerName"];

  ageRatingString = [(APAskToAgeRestrictionMetadata *)self ageRatingString];
  [coderCopy encodeObject:ageRatingString forKey:@"ageRatingString"];

  distributorType = [(APAskToAgeRestrictionMetadata *)self distributorType];
  [coderCopy encodeObject:distributorType forKey:@"distributorType"];

  distributorBundleID = [(APAskToAgeRestrictionMetadata *)self distributorBundleID];
  [coderCopy encodeObject:distributorBundleID forKey:@"distributorBundleID"];

  distributorDomain = [(APAskToAgeRestrictionMetadata *)self distributorDomain];
  [coderCopy encodeObject:distributorDomain forKey:@"distributorDomain"];

  distributorIconURL = [(APAskToAgeRestrictionMetadata *)self distributorIconURL];
  [coderCopy encodeObject:distributorIconURL forKey:@"distributorIconURL"];

  installTypeRawValue = [(APAskToAgeRestrictionMetadata *)self installTypeRawValue];
  [coderCopy encodeObject:installTypeRawValue forKey:@"installTypeRawValue"];

  accountID = [(APAskToAgeRestrictionMetadata *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  v21 = [(APAskToAgeRestrictionMetadata *)self url];
  [coderCopy encodeObject:v21 forKey:@"url"];

  oAuthToken = [(APAskToAgeRestrictionMetadata *)self oAuthToken];
  [coderCopy encodeObject:oAuthToken forKey:@"oAuthToken"];

  installVerificationToken = [(APAskToAgeRestrictionMetadata *)self installVerificationToken];
  [coderCopy encodeObject:installVerificationToken forKey:@"installVerificationToken"];

  clientID = [(APAskToAgeRestrictionMetadata *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];

  authenticationContextData = [(APAskToAgeRestrictionMetadata *)self authenticationContextData];
  [coderCopy encodeObject:authenticationContextData forKey:@"authenticationContextData"];

  [coderCopy encodeBool:-[APAskToAgeRestrictionMetadata userInitiatedOverride](self forKey:{"userInitiatedOverride"), @"userInitiatedOverride"}];
  [coderCopy encodeBool:-[APAskToAgeRestrictionMetadata allowAccountPrompt](self forKey:{"allowAccountPrompt"), @"allowAccountPrompt"}];
  [coderCopy encodeInt64:-[APAskToAgeRestrictionMetadata originallyRequestedVersionID](self forKey:{"originallyRequestedVersionID"), @"originallyRequestedVersionID"}];
  [coderCopy encodeInt64:-[APAskToAgeRestrictionMetadata itemIDFromButtonConfiguration](self forKey:{"itemIDFromButtonConfiguration"), @"itemIDFromButtonConfiguration"}];
  referrer = [(APAskToAgeRestrictionMetadata *)self referrer];
  [coderCopy encodeObject:referrer forKey:@"referrer"];

  appShareURL = [(APAskToAgeRestrictionMetadata *)self appShareURL];
  [coderCopy encodeObject:appShareURL forKey:@"appShareURL"];
}

- (APAskToAgeRestrictionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = APAskToAgeRestrictionMetadata;
  v5 = [(APAskToAgeRestrictionMetadata *)&v53 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleID"];
    appBundleID = v5->_appBundleID;
    v5->_appBundleID = v6;

    v5->_appItemID = [coderCopy decodeInt64ForKey:@"appItemID"];
    v5->_appVersionID = [coderCopy decodeInt64ForKey:@"appVersionID"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedAppIconURL"];
    requestedAppIconURL = v5->_requestedAppIconURL;
    v5->_requestedAppIconURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
    distributorID = v5->_distributorID;
    v5->_distributorID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorName"];
    distributorName = v5->_distributorName;
    v5->_distributorName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerSupportURL"];
    developerSupportURL = v5->_developerSupportURL;
    v5->_developerSupportURL = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerID"];
    developerID = v5->_developerID;
    v5->_developerID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"developerName"];
    developerName = v5->_developerName;
    v5->_developerName = v20;

    v5->_isWebApp = [coderCopy decodeBoolForKey:@"isWebApp"];
    v5->_isDistributor = [coderCopy decodeBoolForKey:@"isDistributor"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"askerName"];
    askerName = v5->_askerName;
    v5->_askerName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ageRatingString"];
    ageRatingString = v5->_ageRatingString;
    v5->_ageRatingString = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorType"];
    distributorType = v5->_distributorType;
    v5->_distributorType = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorBundleID"];
    distributorBundleID = v5->_distributorBundleID;
    v5->_distributorBundleID = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorDomain"];
    distributorDomain = v5->_distributorDomain;
    v5->_distributorDomain = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"distributorIconURL"];
    distributorIconURL = v5->_distributorIconURL;
    v5->_distributorIconURL = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installTypeRawValue"];
    installTypeRawValue = v5->_installTypeRawValue;
    v5->_installTypeRawValue = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oAuthToken"];
    oAuthToken = v5->_oAuthToken;
    v5->_oAuthToken = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installVerificationToken"];
    installVerificationToken = v5->_installVerificationToken;
    v5->_installVerificationToken = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContextData"];
    authenticationContextData = v5->_authenticationContextData;
    v5->_authenticationContextData = v46;

    v5->_userInitiatedOverride = [coderCopy decodeBoolForKey:@"userInitiatedOverride"];
    v5->_allowAccountPrompt = [coderCopy decodeBoolForKey:@"allowAccountPrompt"];
    v5->_originallyRequestedVersionID = [coderCopy decodeInt64ForKey:@"originallyRequestedVersionID"];
    v5->_itemIDFromButtonConfiguration = [coderCopy decodeInt64ForKey:@"itemIDFromButtonConfiguration"];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrer"];
    referrer = v5->_referrer;
    v5->_referrer = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appShareURL"];
    appShareURL = v5->_appShareURL;
    v5->_appShareURL = v50;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(APAskToAgeRestrictionMetadata);
  v6 = [(NSString *)self->_appBundleID copyWithZone:zone];
  appBundleID = v5->_appBundleID;
  v5->_appBundleID = v6;

  v5->_appItemID = self->_appItemID;
  v5->_appVersionID = self->_appVersionID;
  v8 = [(NSString *)self->_appName copyWithZone:zone];
  appName = v5->_appName;
  v5->_appName = v8;

  v10 = [(NSURL *)self->_requestedAppIconURL copyWithZone:zone];
  requestedAppIconURL = v5->_requestedAppIconURL;
  v5->_requestedAppIconURL = v10;

  v12 = [(NSString *)self->_distributorID copyWithZone:zone];
  distributorID = v5->_distributorID;
  v5->_distributorID = v12;

  v14 = [(NSString *)self->_distributorName copyWithZone:zone];
  distributorName = v5->_distributorName;
  v5->_distributorName = v14;

  v16 = [(NSString *)self->_developerID copyWithZone:zone];
  developerID = v5->_developerID;
  v5->_developerID = v16;

  v18 = [(NSString *)self->_developerName copyWithZone:zone];
  developerName = v5->_developerName;
  v5->_developerName = v18;

  v20 = [(NSURL *)self->_developerSupportURL copyWithZone:zone];
  developerSupportURL = v5->_developerSupportURL;
  v5->_developerSupportURL = v20;

  v5->_isWebApp = self->_isWebApp;
  v5->_isDistributor = self->_isDistributor;
  v22 = [(NSString *)self->_askerName copyWithZone:zone];
  askerName = v5->_askerName;
  v5->_askerName = v22;

  v24 = [(NSString *)self->_ageRatingString copyWithZone:zone];
  ageRatingString = v5->_ageRatingString;
  v5->_ageRatingString = v24;

  v26 = [(NSString *)self->_distributorType copyWithZone:zone];
  distributorType = v5->_distributorType;
  v5->_distributorType = v26;

  v28 = [(NSString *)self->_distributorBundleID copyWithZone:zone];
  distributorBundleID = v5->_distributorBundleID;
  v5->_distributorBundleID = v28;

  v30 = [(NSString *)self->_distributorDomain copyWithZone:zone];
  distributorDomain = v5->_distributorDomain;
  v5->_distributorDomain = v30;

  v32 = [(NSURL *)self->_distributorIconURL copyWithZone:zone];
  distributorIconURL = v5->_distributorIconURL;
  v5->_distributorIconURL = v32;

  v34 = [(NSString *)self->_installTypeRawValue copyWithZone:zone];
  installTypeRawValue = v5->_installTypeRawValue;
  v5->_installTypeRawValue = v34;

  v36 = [(NSString *)self->_accountID copyWithZone:zone];
  accountID = v5->_accountID;
  v5->_accountID = v36;

  v38 = [(NSURL *)self->_url copyWithZone:zone];
  url = v5->_url;
  v5->_url = v38;

  v40 = [(NSString *)self->_oAuthToken copyWithZone:zone];
  oAuthToken = v5->_oAuthToken;
  v5->_oAuthToken = v40;

  v42 = [(NSString *)self->_installVerificationToken copyWithZone:zone];
  installVerificationToken = v5->_installVerificationToken;
  v5->_installVerificationToken = v42;

  v44 = [(NSString *)self->_clientID copyWithZone:zone];
  clientID = v5->_clientID;
  v5->_clientID = v44;

  v46 = [(NSData *)self->_authenticationContextData copyWithZone:zone];
  authenticationContextData = v5->_authenticationContextData;
  v5->_authenticationContextData = v46;

  v5->_userInitiatedOverride = self->_userInitiatedOverride;
  v5->_allowAccountPrompt = self->_allowAccountPrompt;
  v5->_originallyRequestedVersionID = self->_originallyRequestedVersionID;
  v5->_itemIDFromButtonConfiguration = self->_itemIDFromButtonConfiguration;
  v48 = [(NSURL *)self->_referrer copyWithZone:zone];
  referrer = v5->_referrer;
  v5->_referrer = v48;

  v50 = [(NSURL *)self->_appShareURL copyWithZone:zone];
  appShareURL = v5->_appShareURL;
  v5->_appShareURL = v50;

  return v5;
}

@end