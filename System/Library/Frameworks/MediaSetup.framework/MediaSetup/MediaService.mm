@interface MediaService
- (MediaService)initWithCoder:(id)coder;
- (MediaService)initWithMediaServiceIdentifier:(id)identifier;
- (MediaService)initWithServiceAccount:(id)account bundleIdentifier:(id)identifier error:(id *)error;
- (id)_failWithError:(unint64_t)error errorString:(id)string;
- (id)basicPropertiesDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MediaService

- (MediaService)initWithServiceAccount:(id)account bundleIdentifier:(id)identifier error:(id *)error
{
  accountCopy = account;
  identifierCopy = identifier;
  v38.receiver = self;
  v38.super_class = MediaService;
  v10 = [(MediaService *)&v38 init];
  v11 = v10;
  if (!v10)
  {
LABEL_37:
    v32 = v11;
    goto LABEL_38;
  }

  if (!accountCopy)
  {
    if (error)
    {
      v30 = @"setupContext";
      v31 = 6;
      goto LABEL_30;
    }

LABEL_31:
    v32 = 0;
    goto LABEL_38;
  }

  objc_storeStrong(&v10->_bundleIdentifier, identifier);
  if (!identifierCopy)
  {
    if (error)
    {
      v30 = @"bundleIdentifier";
      v10 = v11;
      v31 = 8;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  serviceName = [accountCopy serviceName];
  serviceName = v11->_serviceName;
  v11->_serviceName = serviceName;

  if (!serviceName)
  {
    if (error)
    {
      v30 = @"serviceName";
      v10 = v11;
      v31 = 0;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  clientID = [accountCopy clientID];

  if (!clientID)
  {
    if (error)
    {
      v30 = @"clientID";
      v10 = v11;
      v31 = 2;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  clientSecret = [accountCopy clientSecret];

  if (!clientSecret)
  {
    if (error)
    {
      v30 = @"clientSecret";
      v10 = v11;
      v31 = 3;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  accountName = [accountCopy accountName];
  accountName = v11->_accountName;
  v11->_accountName = accountName;

  if (!accountName)
  {
    if (error)
    {
      v30 = @"accountName";
      v10 = v11;
      v31 = 1;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  configurationURL = [accountCopy configurationURL];
  configURL = v11->_configURL;
  v11->_configURL = configurationURL;

  if (!configurationURL)
  {
    if (error)
    {
      v30 = @"configURL";
      v10 = v11;
      v31 = 5;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  authorizationTokenURL = [accountCopy authorizationTokenURL];

  if (!authorizationTokenURL)
  {
    if (error)
    {
      v30 = @"authorizationTokenURL";
      v10 = v11;
      v31 = 7;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  [accountCopy authorizationScope];

  clientID2 = [accountCopy clientID];
  clientSecret2 = [accountCopy clientSecret];
  authorizationTokenURL2 = [accountCopy authorizationTokenURL];
  authorizationScope = [accountCopy authorizationScope];
  v25 = [CMSAuthenticationConfiguration authConfigurationWithClientID:clientID2 clientSecret:clientSecret2 authorizationURL:authorizationTokenURL2 scope:authorizationScope];
  authConfiguration = v11->_authConfiguration;
  v11->_authConfiguration = v25;

  serviceID = [accountCopy serviceID];

  if (!serviceID)
  {
    NSLog(&cfstr_UsingRandomUui.isa);
    uUID = [MEMORY[0x277CCAD78] UUID];
    serviceID = v11->_serviceID;
    v11->_serviceID = uUID;

    goto LABEL_33;
  }

  serviceID2 = [accountCopy serviceID];
  v29 = v11->_serviceID;
  v11->_serviceID = serviceID2;

  if (v11->_serviceID)
  {
LABEL_33:
    v35 = +[MSAssistantPreferences isMultiUserEnabledForSiri];
    v36 = v35;
    if (v35)
    {
      NSLog(&cfstr_DeviceSiriLang.isa);
    }

    else
    {
      NSLog(&cfstr_DeviceSiriLang_0.isa);
    }

    v11->_updateListeningHistoryEnabled = v36;
    goto LABEL_37;
  }

  if (!error)
  {
    goto LABEL_31;
  }

  NSLog(&cfstr_MalformedServi.isa);
  v30 = @"serviceIdentifier";
  v10 = v11;
  v31 = 9;
LABEL_30:
  [(MediaService *)v10 _failWithError:v31 errorString:v30];
  *error = v32 = 0;
LABEL_38:

  return v32;
}

- (id)_failWithError:(unint64_t)error errorString:(id)string
{
  v12[1] = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to initialize MediaService object, Nil %@", string];
  NSLog(&stru_284C4D138.isa, string);
  v6 = MEMORY[0x277CCA9B8];
  v11 = @"MSUserInfoErrorStringKey";
  v12[0] = string;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.mediasetup.serviceonboarding.errorDomain" code:error userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)description
{
  basicPropertiesDictionary = [(MediaService *)self basicPropertiesDictionary];
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"<MediaService = %@", basicPropertiesDictionary];
  v5 = v4;
  if (self->_authCredential)
  {
    [v4 appendFormat:@" AuthCredential = %@", self->_authCredential];
  }

  if (self->_authConfiguration)
  {
    [v5 appendFormat:@" AuthConfiguration = %@", self->_authConfiguration];
  }

  if (self->_alternateBundleIdentifiers)
  {
    [v5 appendFormat:@" AlternateBundleIdentifiers = %@>", self->_alternateBundleIdentifiers];
  }

  return v5;
}

- (id)jsonDictionary
{
  basicPropertiesDictionary = [(MediaService *)self basicPropertiesDictionary];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:basicPropertiesDictionary];
  uUIDString = [(NSUUID *)self->_serviceID UUIDString];
  [v4 na_safeSetObject:uUIDString forKey:@"serviceIdentifier"];

  absoluteString = [(NSURL *)self->_configURL absoluteString];
  [v4 na_safeSetObject:absoluteString forKey:@"configURL"];

  absoluteString2 = [(NSURL *)self->_iconImageURL absoluteString];
  [v4 na_safeSetObject:absoluteString2 forKey:@"iconImageURL"];

  absoluteString3 = [(NSURL *)self->_remoteIconURL absoluteString];
  [v4 na_safeSetObject:absoluteString3 forKey:@"remoteIconImageURL"];

  authCredential = self->_authCredential;
  if (authCredential)
  {
    jsonDictionary = [(CMSAuthenticationCredential *)authCredential jsonDictionary];
    [v4 na_safeSetObject:jsonDictionary forKey:@"authCredential"];
  }

  authConfiguration = self->_authConfiguration;
  if (authConfiguration)
  {
    jsonDictionary2 = [(CMSAuthenticationConfiguration *)authConfiguration jsonDictionary];
    [v4 na_safeSetObject:jsonDictionary2 forKey:@"authConfiguration"];
  }

  alternateBundleIdentifiers = self->_alternateBundleIdentifiers;
  if (alternateBundleIdentifiers)
  {
    [v4 na_safeSetObject:alternateBundleIdentifiers forKey:@"alternateBundleIdentifiers"];
  }

  return v4;
}

- (MediaService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSServiceIdentifierEncodedKey"];
  serviceID = self->_serviceID;
  self->_serviceID = v5;

  uUIDString = [(NSUUID *)self->_serviceID UUIDString];
  v8 = [(MediaService *)self initWithMediaServiceIdentifier:uUIDString];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSServiceNameEncodedKey"];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSBundleIdentifierEncodedKey"];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAccountNameEncodedKey"];
    accountName = v8->_accountName;
    v8->_accountName = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceType"];
    serviceType = v8->_serviceType;
    v8->_serviceType = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSServiceRemovableEncodedKey"];
    v8->_serviceRemovable = [v17 BOOLValue];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSUpdateListeningHistoryEncodedKey"];
    v8->_updateListeningHistoryEnabled = [v18 BOOLValue];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthCredentialEncodedKey"];
    if (v19)
    {
      v20 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v19 error:0];
      authCredential = v8->_authCredential;
      v8->_authCredential = v20;
    }

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthConfigurationEncodedKey"];
    if (v22)
    {
      v23 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:0];
      authConfiguration = v8->_authConfiguration;
      v8->_authConfiguration = v23;
    }

    if (!v8->_authCredential)
    {
      v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthCredentialObjectEncodedKey"];
      credential = [v25 credential];
      v27 = v8->_authCredential;
      v8->_authCredential = credential;
    }

    if (!v8->_authConfiguration)
    {
      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthConfigurationObjectEncodedKey"];
      configuration = [v28 configuration];
      v30 = v8->_authConfiguration;
      v8->_authConfiguration = configuration;
    }

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSAuthFatalErrorEncodedKey"];
    v8->_authFatalError = [v31 BOOLValue];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSConfigPublicKeyEncodedKey"];
    configPublicKey = v8->_configPublicKey;
    v8->_configPublicKey = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSConfigETagEncodedKey"];
    configETag = v8->_configETag;
    v8->_configETag = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSconfigURLEncodedKey"];
    configURL = v8->_configURL;
    v8->_configURL = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSConfigAssetEncodedKey"];
    configAsset = v8->_configAsset;
    v8->_configAsset = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSiconImageURLEncodedKey"];
    iconImageURL = v8->_iconImageURL;
    v8->_iconImageURL = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSRemoteIconURLEncodedKey"];
    remoteIconURL = v8->_remoteIconURL;
    v8->_remoteIconURL = v42;

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [coderCopy decodeObjectOfClasses:v46 forKey:@"MSAlternateBundleIdentifiersEncodedKey"];
    alternateBundleIdentifiers = v8->_alternateBundleIdentifiers;
    v8->_alternateBundleIdentifiers = v47;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  serviceName = self->_serviceName;
  coderCopy = coder;
  [coderCopy encodeObject:serviceName forKey:@"MSServiceNameEncodedKey"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"MSBundleIdentifierEncodedKey"];
  [coderCopy encodeObject:self->_accountName forKey:@"MSAccountNameEncodedKey"];
  [coderCopy encodeObject:self->_serviceID forKey:@"MSServiceIdentifierEncodedKey"];
  [coderCopy encodeObject:self->_serviceType forKey:@"ServiceType"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_serviceRemovable];
  [coderCopy encodeObject:v6 forKey:@"MSServiceRemovableEncodedKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_updateListeningHistoryEnabled];
  [coderCopy encodeObject:v7 forKey:@"MSUpdateListeningHistoryEncodedKey"];

  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_authCredential requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v10 forKey:@"MSAuthCredentialEncodedKey"];
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self->_authConfiguration requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v8 forKey:@"MSAuthConfigurationEncodedKey"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_authFatalError];
  [coderCopy encodeObject:v9 forKey:@"MSAuthFatalErrorEncodedKey"];

  [coderCopy encodeObject:self->_iconImageURL forKey:@"MSiconImageURLEncodedKey"];
  [coderCopy encodeObject:self->_remoteIconURL forKey:@"MSRemoteIconURLEncodedKey"];
  [coderCopy encodeObject:self->_configPublicKey forKey:@"MSConfigPublicKeyEncodedKey"];
  [coderCopy encodeObject:self->_configURL forKey:@"MSconfigURLEncodedKey"];
  [coderCopy encodeObject:self->_configETag forKey:@"MSConfigETagEncodedKey"];
  [coderCopy encodeObject:self->_configAsset forKey:@"MSConfigAssetEncodedKey"];
  [coderCopy encodeObject:self->_alternateBundleIdentifiers forKey:@"MSAlternateBundleIdentifiersEncodedKey"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSUUID *)self->_serviceID copyWithZone:zone];
  [v5 setServiceID:v6];

  v7 = [(NSString *)self->_accountName copyWithZone:zone];
  [v5 setAccountName:v7];

  v8 = [(NSString *)self->_serviceName copyWithZone:zone];
  [v5 setServiceName:v8];

  v9 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v9];

  v10 = [(NSString *)self->_serviceType copyWithZone:zone];
  [v5 setServiceType:v10];

  v11 = [(CMSAuthenticationCredential *)self->_authCredential copyWithZone:zone];
  [v5 setAuthCredential:v11];

  v12 = [(CMSAuthenticationConfiguration *)self->_authConfiguration copyWithZone:zone];
  [v5 setAuthConfiguration:v12];

  [v5 setAuthFatalError:{-[MediaService authFatalError](self, "authFatalError")}];
  [v5 setUpdateListeningHistoryEnabled:{-[MediaService updateListeningHistoryEnabled](self, "updateListeningHistoryEnabled")}];
  [v5 setServiceRemovable:{-[MediaService isServiceRemovable](self, "isServiceRemovable")}];
  v13 = [(NSURL *)self->_remoteIconURL copyWithZone:zone];
  [v5 setRemoteIconURL:v13];

  v14 = [(NSURL *)self->_iconImageURL copyWithZone:zone];
  [v5 setIconImageURL:v14];

  v15 = [(NSData *)self->_configAsset copyWithZone:zone];
  [v5 setConfigAsset:v15];

  v16 = [(NSString *)self->_configPublicKey copyWithZone:zone];
  [v5 setConfigPublicKey:v16];

  v17 = [(NSString *)self->_configETag copyWithZone:zone];
  [v5 setConfigETag:v17];

  v18 = [(NSURL *)self->_configURL copyWithZone:zone];
  [v5 setConfigURL:v18];

  v19 = [(NSArray *)self->_alternateBundleIdentifiers copyWithZone:zone];
  [v5 setAlternateBundleIdentifiers:v19];

  return v5;
}

- (MediaService)initWithMediaServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = MediaService;
  v5 = [(MediaService *)&v10 init];
  if (v5)
  {
    if (!identifierCopy)
    {
      NSLog(&cfstr_FailedToInitia_0.isa);
      v8 = 0;
      goto LABEL_6;
    }

    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
    serviceID = v5->_serviceID;
    v5->_serviceID = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (id)basicPropertiesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 na_safeSetObject:self->_serviceName forKey:@"serviceName"];
  [v3 na_safeSetObject:self->_serviceID forKey:@"serviceIdentifier"];
  [v3 na_safeSetObject:self->_accountName forKey:@"accountName"];
  [v3 na_safeSetObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_updateListeningHistoryEnabled];
  [v3 na_safeSetObject:v4 forKey:@"updateListeningHistoryEnabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[MediaService isServiceRemovable](self, "isServiceRemovable")}];
  [v3 na_safeSetObject:v5 forKey:@"serviceRemovable"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_authFatalError];
  [v3 na_safeSetObject:v6 forKey:@"authFatalError"];

  [v3 na_safeSetObject:self->_configURL forKey:@"configURL"];
  [v3 na_safeSetObject:self->_iconImageURL forKey:@"iconImageURL"];
  [v3 na_safeSetObject:self->_configPublicKey forKey:@"configPublicKey"];
  [v3 na_safeSetObject:self->_remoteIconURL forKey:@"remoteIconImageURL"];
  [v3 na_safeSetObject:self->_configETag forKey:@"configETag"];
  [v3 na_safeSetObject:self->_serviceType forKey:@"serviceType"];

  return v3;
}

@end