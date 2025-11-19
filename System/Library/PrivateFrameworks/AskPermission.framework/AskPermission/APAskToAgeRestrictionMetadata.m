@interface APAskToAgeRestrictionMetadata
- (APAskToAgeRestrictionMetadata)initWithCoder:(id)a3;
- (APAskToAgeRestrictionMetadata)initWithDictionary:(id)a3;
- (id)compile;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APAskToAgeRestrictionMetadata

- (id)compile
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(APAskToAgeRestrictionMetadata *)self appBundleID];
  [v3 setObject:v4 forKeyedSubscript:@"appBundleID"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata appItemID](self, "appItemID")}];
  [v3 setObject:v5 forKeyedSubscript:@"appItemID"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata appVersionID](self, "appVersionID")}];
  [v3 setObject:v6 forKeyedSubscript:@"appVersionID"];

  v7 = [(APAskToAgeRestrictionMetadata *)self appName];
  [v3 setObject:v7 forKeyedSubscript:@"appName"];

  v8 = [(APAskToAgeRestrictionMetadata *)self requestedAppIconURL];
  v9 = [v8 absoluteString];
  [v3 setObject:v9 forKeyedSubscript:@"requestedAppIconURL"];

  v10 = [(APAskToAgeRestrictionMetadata *)self distributorID];
  [v3 setObject:v10 forKeyedSubscript:@"distributorID"];

  v11 = [(APAskToAgeRestrictionMetadata *)self distributorName];
  [v3 setObject:v11 forKeyedSubscript:@"distributorName"];

  v12 = [(APAskToAgeRestrictionMetadata *)self developerID];
  [v3 setObject:v12 forKeyedSubscript:@"developerID"];

  v13 = [(APAskToAgeRestrictionMetadata *)self developerName];
  [v3 setObject:v13 forKeyedSubscript:@"developerName"];

  v14 = [(APAskToAgeRestrictionMetadata *)self developerSupportURL];
  v15 = [v14 absoluteString];
  [v3 setObject:v15 forKeyedSubscript:@"developerSupportURL"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata isWebApp](self, "isWebApp")}];
  [v3 setObject:v16 forKeyedSubscript:@"isWebApp"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata isDistributor](self, "isDistributor")}];
  [v3 setObject:v17 forKeyedSubscript:@"isDistributor"];

  v18 = [(APAskToAgeRestrictionMetadata *)self askerName];
  [v3 setObject:v18 forKeyedSubscript:@"askerName"];

  v19 = [(APAskToAgeRestrictionMetadata *)self ageRatingString];
  [v3 setObject:v19 forKeyedSubscript:@"ageRatingString"];

  v20 = [(APAskToAgeRestrictionMetadata *)self distributorType];
  [v3 setObject:v20 forKeyedSubscript:@"distributorType"];

  v21 = [(APAskToAgeRestrictionMetadata *)self distributorBundleID];
  [v3 setObject:v21 forKeyedSubscript:@"distributorBundleID"];

  v22 = [(APAskToAgeRestrictionMetadata *)self distributorDomain];
  [v3 setObject:v22 forKeyedSubscript:@"distributorDomain"];

  v23 = [(APAskToAgeRestrictionMetadata *)self distributorIconURL];
  v24 = [v23 absoluteString];
  [v3 setObject:v24 forKeyedSubscript:@"distributorIconURL"];

  v25 = [(APAskToAgeRestrictionMetadata *)self installTypeRawValue];
  [v3 setObject:v25 forKeyedSubscript:@"installTypeRawValue"];

  v26 = [(APAskToAgeRestrictionMetadata *)self accountID];
  [v3 setObject:v26 forKeyedSubscript:@"accountID"];

  v27 = [(APAskToAgeRestrictionMetadata *)self url];
  v28 = [v27 absoluteString];
  [v3 setObject:v28 forKeyedSubscript:@"url"];

  v29 = [(APAskToAgeRestrictionMetadata *)self oAuthToken];
  [v3 setObject:v29 forKeyedSubscript:@"oAuthToken"];

  v30 = [(APAskToAgeRestrictionMetadata *)self installVerificationToken];
  [v3 setObject:v30 forKeyedSubscript:@"installVerificationToken"];

  v31 = [(APAskToAgeRestrictionMetadata *)self clientID];
  [v3 setObject:v31 forKeyedSubscript:@"clientID"];

  v32 = [(APAskToAgeRestrictionMetadata *)self authenticationContextData];
  v33 = [v32 base64EncodedStringWithOptions:0];
  [v3 setObject:v33 forKeyedSubscript:@"authenticationContextData"];

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata userInitiatedOverride](self, "userInitiatedOverride")}];
  [v3 setObject:v34 forKeyedSubscript:@"userInitiatedOverride"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[APAskToAgeRestrictionMetadata allowAccountPrompt](self, "allowAccountPrompt")}];
  [v3 setObject:v35 forKeyedSubscript:@"allowAccountPrompt"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata originallyRequestedVersionID](self, "originallyRequestedVersionID")}];
  [v3 setObject:v36 forKeyedSubscript:@"originallyRequestedVersionID"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[APAskToAgeRestrictionMetadata itemIDFromButtonConfiguration](self, "itemIDFromButtonConfiguration")}];
  [v3 setObject:v37 forKeyedSubscript:@"itemIDFromButtonConfiguration"];

  v38 = [(APAskToAgeRestrictionMetadata *)self referrer];
  v39 = [v38 absoluteString];
  [v3 setObject:v39 forKeyedSubscript:@"referrer"];

  v40 = [(APAskToAgeRestrictionMetadata *)self appShareURL];
  v41 = [v40 absoluteString];
  [v3 setObject:v41 forKeyedSubscript:@"appShareURL"];

  v42 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v42;
}

- (APAskToAgeRestrictionMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = APAskToAgeRestrictionMetadata;
  v5 = [(APAskToAgeRestrictionMetadata *)&v68 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appBundleID"];
    appBundleID = v5->_appBundleID;
    v5->_appBundleID = v6;

    v8 = [v4 objectForKeyedSubscript:@"appItemID"];
    v5->_appItemID = [v8 unsignedLongLongValue];

    v9 = [v4 objectForKeyedSubscript:@"appVersionID"];
    v5->_appVersionID = [v9 unsignedLongLongValue];

    v10 = [v4 objectForKeyedSubscript:@"appName"];
    appName = v5->_appName;
    v5->_appName = v10;

    v12 = [v4 objectForKeyedSubscript:@"requestedAppIconURL"];
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    requestedAppIconURL = v5->_requestedAppIconURL;
    v5->_requestedAppIconURL = v13;

    v15 = [v4 objectForKeyedSubscript:@"distributorID"];
    distributorID = v5->_distributorID;
    v5->_distributorID = v15;

    v17 = [v4 objectForKeyedSubscript:@"distributorName"];
    distributorName = v5->_distributorName;
    v5->_distributorName = v17;

    v19 = [v4 objectForKeyedSubscript:@"developerSupportURL"];
    v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];
    developerSupportURL = v5->_developerSupportURL;
    v5->_developerSupportURL = v20;

    v22 = [v4 objectForKeyedSubscript:@"developerID"];
    developerID = v5->_developerID;
    v5->_developerID = v22;

    v24 = [v4 objectForKeyedSubscript:@"developerName"];
    developerName = v5->_developerName;
    v5->_developerName = v24;

    v26 = [v4 objectForKeyedSubscript:@"isWebApp"];
    v5->_isWebApp = [v26 BOOLValue];

    v27 = [v4 objectForKeyedSubscript:@"isDistributor"];
    v5->_isDistributor = [v27 BOOLValue];

    v28 = [v4 objectForKeyedSubscript:@"askerName"];
    askerName = v5->_askerName;
    v5->_askerName = v28;

    v30 = [v4 objectForKeyedSubscript:@"ageRatingString"];
    ageRatingString = v5->_ageRatingString;
    v5->_ageRatingString = v30;

    v32 = [v4 objectForKeyedSubscript:@"distributorType"];
    distributorType = v5->_distributorType;
    v5->_distributorType = v32;

    v34 = [v4 objectForKeyedSubscript:@"distributorBundleID"];
    distributorBundleID = v5->_distributorBundleID;
    v5->_distributorBundleID = v34;

    v36 = [v4 objectForKeyedSubscript:@"distributorDomain"];
    distributorDomain = v5->_distributorDomain;
    v5->_distributorDomain = v36;

    v38 = [v4 objectForKeyedSubscript:@"distributorIconURL"];
    v39 = [MEMORY[0x277CBEBC0] URLWithString:v38];
    distributorIconURL = v5->_distributorIconURL;
    v5->_distributorIconURL = v39;

    v41 = [v4 objectForKeyedSubscript:@"installTypeRawValue"];
    installTypeRawValue = v5->_installTypeRawValue;
    v5->_installTypeRawValue = v41;

    v43 = [v4 objectForKeyedSubscript:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v43;

    v45 = [v4 objectForKeyedSubscript:@"url"];
    v46 = [MEMORY[0x277CBEBC0] URLWithString:v45];
    url = v5->_url;
    v5->_url = v46;

    v48 = [v4 objectForKeyedSubscript:@"oAuthToken"];
    oAuthToken = v5->_oAuthToken;
    v5->_oAuthToken = v48;

    v50 = [v4 objectForKeyedSubscript:@"installVerificationToken"];
    installVerificationToken = v5->_installVerificationToken;
    v5->_installVerificationToken = v50;

    v52 = [v4 objectForKeyedSubscript:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v52;

    v54 = [v4 objectForKeyedSubscript:@"authenticationContextData"];
    if (v54)
    {
      v55 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v54 options:0];
      authenticationContextData = v5->_authenticationContextData;
      v5->_authenticationContextData = v55;
    }

    v57 = [v4 objectForKeyedSubscript:@"userInitiatedOverride"];
    v5->_userInitiatedOverride = [v57 BOOLValue];

    v58 = [v4 objectForKeyedSubscript:@"allowAccountPrompt"];
    v5->_allowAccountPrompt = [v58 BOOLValue];

    v59 = [v4 objectForKeyedSubscript:@"originallyRequestedVersionID"];
    v5->_originallyRequestedVersionID = [v59 unsignedLongLongValue];

    v60 = [v4 objectForKeyedSubscript:@"itemIDFromButtonConfiguration"];
    v5->_itemIDFromButtonConfiguration = [v60 unsignedLongLongValue];

    v61 = [v4 objectForKeyedSubscript:@"referrer"];
    v62 = [MEMORY[0x277CBEBC0] URLWithString:v61];
    referrer = v5->_referrer;
    v5->_referrer = v62;

    v64 = [v4 objectForKeyedSubscript:@"appShareURL"];
    v65 = [MEMORY[0x277CBEBC0] URLWithString:v64];
    appShareURL = v5->_appShareURL;
    v5->_appShareURL = v65;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APAskToAgeRestrictionMetadata *)self appBundleID];
  [v4 encodeObject:v5 forKey:@"appBundleID"];

  [v4 encodeInt64:-[APAskToAgeRestrictionMetadata appItemID](self forKey:{"appItemID"), @"appItemID"}];
  [v4 encodeInt64:-[APAskToAgeRestrictionMetadata appVersionID](self forKey:{"appVersionID"), @"appVersionID"}];
  v6 = [(APAskToAgeRestrictionMetadata *)self appName];
  [v4 encodeObject:v6 forKey:@"appName"];

  v7 = [(APAskToAgeRestrictionMetadata *)self requestedAppIconURL];
  [v4 encodeObject:v7 forKey:@"requestedAppIconURL"];

  v8 = [(APAskToAgeRestrictionMetadata *)self distributorID];
  [v4 encodeObject:v8 forKey:@"distributorID"];

  v9 = [(APAskToAgeRestrictionMetadata *)self distributorName];
  [v4 encodeObject:v9 forKey:@"distributorName"];

  v10 = [(APAskToAgeRestrictionMetadata *)self developerID];
  [v4 encodeObject:v10 forKey:@"developerID"];

  v11 = [(APAskToAgeRestrictionMetadata *)self developerName];
  [v4 encodeObject:v11 forKey:@"developerName"];

  v12 = [(APAskToAgeRestrictionMetadata *)self developerSupportURL];
  [v4 encodeObject:v12 forKey:@"developerSupportURL"];

  [v4 encodeBool:-[APAskToAgeRestrictionMetadata isWebApp](self forKey:{"isWebApp"), @"isWebApp"}];
  [v4 encodeBool:-[APAskToAgeRestrictionMetadata isDistributor](self forKey:{"isDistributor"), @"isDistributor"}];
  v13 = [(APAskToAgeRestrictionMetadata *)self askerName];
  [v4 encodeObject:v13 forKey:@"askerName"];

  v14 = [(APAskToAgeRestrictionMetadata *)self ageRatingString];
  [v4 encodeObject:v14 forKey:@"ageRatingString"];

  v15 = [(APAskToAgeRestrictionMetadata *)self distributorType];
  [v4 encodeObject:v15 forKey:@"distributorType"];

  v16 = [(APAskToAgeRestrictionMetadata *)self distributorBundleID];
  [v4 encodeObject:v16 forKey:@"distributorBundleID"];

  v17 = [(APAskToAgeRestrictionMetadata *)self distributorDomain];
  [v4 encodeObject:v17 forKey:@"distributorDomain"];

  v18 = [(APAskToAgeRestrictionMetadata *)self distributorIconURL];
  [v4 encodeObject:v18 forKey:@"distributorIconURL"];

  v19 = [(APAskToAgeRestrictionMetadata *)self installTypeRawValue];
  [v4 encodeObject:v19 forKey:@"installTypeRawValue"];

  v20 = [(APAskToAgeRestrictionMetadata *)self accountID];
  [v4 encodeObject:v20 forKey:@"accountID"];

  v21 = [(APAskToAgeRestrictionMetadata *)self url];
  [v4 encodeObject:v21 forKey:@"url"];

  v22 = [(APAskToAgeRestrictionMetadata *)self oAuthToken];
  [v4 encodeObject:v22 forKey:@"oAuthToken"];

  v23 = [(APAskToAgeRestrictionMetadata *)self installVerificationToken];
  [v4 encodeObject:v23 forKey:@"installVerificationToken"];

  v24 = [(APAskToAgeRestrictionMetadata *)self clientID];
  [v4 encodeObject:v24 forKey:@"clientID"];

  v25 = [(APAskToAgeRestrictionMetadata *)self authenticationContextData];
  [v4 encodeObject:v25 forKey:@"authenticationContextData"];

  [v4 encodeBool:-[APAskToAgeRestrictionMetadata userInitiatedOverride](self forKey:{"userInitiatedOverride"), @"userInitiatedOverride"}];
  [v4 encodeBool:-[APAskToAgeRestrictionMetadata allowAccountPrompt](self forKey:{"allowAccountPrompt"), @"allowAccountPrompt"}];
  [v4 encodeInt64:-[APAskToAgeRestrictionMetadata originallyRequestedVersionID](self forKey:{"originallyRequestedVersionID"), @"originallyRequestedVersionID"}];
  [v4 encodeInt64:-[APAskToAgeRestrictionMetadata itemIDFromButtonConfiguration](self forKey:{"itemIDFromButtonConfiguration"), @"itemIDFromButtonConfiguration"}];
  v26 = [(APAskToAgeRestrictionMetadata *)self referrer];
  [v4 encodeObject:v26 forKey:@"referrer"];

  v27 = [(APAskToAgeRestrictionMetadata *)self appShareURL];
  [v4 encodeObject:v27 forKey:@"appShareURL"];
}

- (APAskToAgeRestrictionMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = APAskToAgeRestrictionMetadata;
  v5 = [(APAskToAgeRestrictionMetadata *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appBundleID"];
    appBundleID = v5->_appBundleID;
    v5->_appBundleID = v6;

    v5->_appItemID = [v4 decodeInt64ForKey:@"appItemID"];
    v5->_appVersionID = [v4 decodeInt64ForKey:@"appVersionID"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appName"];
    appName = v5->_appName;
    v5->_appName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedAppIconURL"];
    requestedAppIconURL = v5->_requestedAppIconURL;
    v5->_requestedAppIconURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorID"];
    distributorID = v5->_distributorID;
    v5->_distributorID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorName"];
    distributorName = v5->_distributorName;
    v5->_distributorName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"developerSupportURL"];
    developerSupportURL = v5->_developerSupportURL;
    v5->_developerSupportURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"developerID"];
    developerID = v5->_developerID;
    v5->_developerID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"developerName"];
    developerName = v5->_developerName;
    v5->_developerName = v20;

    v5->_isWebApp = [v4 decodeBoolForKey:@"isWebApp"];
    v5->_isDistributor = [v4 decodeBoolForKey:@"isDistributor"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"askerName"];
    askerName = v5->_askerName;
    v5->_askerName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ageRatingString"];
    ageRatingString = v5->_ageRatingString;
    v5->_ageRatingString = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorType"];
    distributorType = v5->_distributorType;
    v5->_distributorType = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorBundleID"];
    distributorBundleID = v5->_distributorBundleID;
    v5->_distributorBundleID = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorDomain"];
    distributorDomain = v5->_distributorDomain;
    v5->_distributorDomain = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"distributorIconURL"];
    distributorIconURL = v5->_distributorIconURL;
    v5->_distributorIconURL = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installTypeRawValue"];
    installTypeRawValue = v5->_installTypeRawValue;
    v5->_installTypeRawValue = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oAuthToken"];
    oAuthToken = v5->_oAuthToken;
    v5->_oAuthToken = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installVerificationToken"];
    installVerificationToken = v5->_installVerificationToken;
    v5->_installVerificationToken = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContextData"];
    authenticationContextData = v5->_authenticationContextData;
    v5->_authenticationContextData = v46;

    v5->_userInitiatedOverride = [v4 decodeBoolForKey:@"userInitiatedOverride"];
    v5->_allowAccountPrompt = [v4 decodeBoolForKey:@"allowAccountPrompt"];
    v5->_originallyRequestedVersionID = [v4 decodeInt64ForKey:@"originallyRequestedVersionID"];
    v5->_itemIDFromButtonConfiguration = [v4 decodeInt64ForKey:@"itemIDFromButtonConfiguration"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrer"];
    referrer = v5->_referrer;
    v5->_referrer = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appShareURL"];
    appShareURL = v5->_appShareURL;
    v5->_appShareURL = v50;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(APAskToAgeRestrictionMetadata);
  v6 = [(NSString *)self->_appBundleID copyWithZone:a3];
  appBundleID = v5->_appBundleID;
  v5->_appBundleID = v6;

  v5->_appItemID = self->_appItemID;
  v5->_appVersionID = self->_appVersionID;
  v8 = [(NSString *)self->_appName copyWithZone:a3];
  appName = v5->_appName;
  v5->_appName = v8;

  v10 = [(NSURL *)self->_requestedAppIconURL copyWithZone:a3];
  requestedAppIconURL = v5->_requestedAppIconURL;
  v5->_requestedAppIconURL = v10;

  v12 = [(NSString *)self->_distributorID copyWithZone:a3];
  distributorID = v5->_distributorID;
  v5->_distributorID = v12;

  v14 = [(NSString *)self->_distributorName copyWithZone:a3];
  distributorName = v5->_distributorName;
  v5->_distributorName = v14;

  v16 = [(NSString *)self->_developerID copyWithZone:a3];
  developerID = v5->_developerID;
  v5->_developerID = v16;

  v18 = [(NSString *)self->_developerName copyWithZone:a3];
  developerName = v5->_developerName;
  v5->_developerName = v18;

  v20 = [(NSURL *)self->_developerSupportURL copyWithZone:a3];
  developerSupportURL = v5->_developerSupportURL;
  v5->_developerSupportURL = v20;

  v5->_isWebApp = self->_isWebApp;
  v5->_isDistributor = self->_isDistributor;
  v22 = [(NSString *)self->_askerName copyWithZone:a3];
  askerName = v5->_askerName;
  v5->_askerName = v22;

  v24 = [(NSString *)self->_ageRatingString copyWithZone:a3];
  ageRatingString = v5->_ageRatingString;
  v5->_ageRatingString = v24;

  v26 = [(NSString *)self->_distributorType copyWithZone:a3];
  distributorType = v5->_distributorType;
  v5->_distributorType = v26;

  v28 = [(NSString *)self->_distributorBundleID copyWithZone:a3];
  distributorBundleID = v5->_distributorBundleID;
  v5->_distributorBundleID = v28;

  v30 = [(NSString *)self->_distributorDomain copyWithZone:a3];
  distributorDomain = v5->_distributorDomain;
  v5->_distributorDomain = v30;

  v32 = [(NSURL *)self->_distributorIconURL copyWithZone:a3];
  distributorIconURL = v5->_distributorIconURL;
  v5->_distributorIconURL = v32;

  v34 = [(NSString *)self->_installTypeRawValue copyWithZone:a3];
  installTypeRawValue = v5->_installTypeRawValue;
  v5->_installTypeRawValue = v34;

  v36 = [(NSString *)self->_accountID copyWithZone:a3];
  accountID = v5->_accountID;
  v5->_accountID = v36;

  v38 = [(NSURL *)self->_url copyWithZone:a3];
  url = v5->_url;
  v5->_url = v38;

  v40 = [(NSString *)self->_oAuthToken copyWithZone:a3];
  oAuthToken = v5->_oAuthToken;
  v5->_oAuthToken = v40;

  v42 = [(NSString *)self->_installVerificationToken copyWithZone:a3];
  installVerificationToken = v5->_installVerificationToken;
  v5->_installVerificationToken = v42;

  v44 = [(NSString *)self->_clientID copyWithZone:a3];
  clientID = v5->_clientID;
  v5->_clientID = v44;

  v46 = [(NSData *)self->_authenticationContextData copyWithZone:a3];
  authenticationContextData = v5->_authenticationContextData;
  v5->_authenticationContextData = v46;

  v5->_userInitiatedOverride = self->_userInitiatedOverride;
  v5->_allowAccountPrompt = self->_allowAccountPrompt;
  v5->_originallyRequestedVersionID = self->_originallyRequestedVersionID;
  v5->_itemIDFromButtonConfiguration = self->_itemIDFromButtonConfiguration;
  v48 = [(NSURL *)self->_referrer copyWithZone:a3];
  referrer = v5->_referrer;
  v5->_referrer = v48;

  v50 = [(NSURL *)self->_appShareURL copyWithZone:a3];
  appShareURL = v5->_appShareURL;
  v5->_appShareURL = v50;

  return v5;
}

@end