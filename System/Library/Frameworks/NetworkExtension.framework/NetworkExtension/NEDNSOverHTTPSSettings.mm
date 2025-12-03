@interface NEDNSOverHTTPSSettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isEqual:(id)equal;
- (NEDNSOverHTTPSSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEDNSOverHTTPSSettings

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = NEDNSOverHTTPSSettings;
  v5 = [(NEDNSSettings *)&v11 initFromLegacyDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ServerURL"];
    if (isa_nsstring(v6))
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
      if (!v7)
      {

        v9 = 0;
        goto LABEL_7;
      }

      v8 = v5[7];
      v5[7] = v7;
    }
  }

  v9 = v5;
LABEL_7:

  return v9;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v12.receiver = self;
  v12.super_class = NEDNSOverHTTPSSettings;
  v5 = [(NEDNSSettings *)&v12 checkValidityAndCollectErrors:errorsCopy];
  serverURL = [(NEDNSOverHTTPSSettings *)self serverURL];

  if (!serverURL)
  {
    v10 = @"Missing server URL";
    goto LABEL_5;
  }

  serverURL2 = [(NEDNSOverHTTPSSettings *)self serverURL];
  scheme = [serverURL2 scheme];
  v9 = [scheme isEqualToString:@"https"];

  if ((v9 & 1) == 0)
  {
    v10 = @"Server URL does not have HTTPS scheme";
LABEL_5:
    [NEConfiguration addError:v10 toList:errorsCopy];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NEDNSOverHTTPSSettings;
  v4 = [(NEDNSSettings *)&v8 copyWithZone:zone];
  serverURL = [(NEDNSOverHTTPSSettings *)self serverURL];
  [v4 setServerURL:serverURL];

  identityReference = [(NEDNSOverHTTPSSettings *)self identityReference];
  [v4 setIdentityReference:identityReference];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NEDNSOverHTTPSSettings;
  coderCopy = coder;
  [(NEDNSSettings *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NEDNSOverHTTPSSettings *)self serverURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"ServerURL"];

  identityReference = [(NEDNSOverHTTPSSettings *)self identityReference];
  [coderCopy encodeObject:identityReference forKey:@"IdentityReference"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = NEDNSOverHTTPSSettings;
  if ([(NEDNSOverHTTPSSettings *)&v17 isEqual:equalCopy])
  {
    v5 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serverURL = [(NEDNSOverHTTPSSettings *)self serverURL];
      serverURL2 = [v5 serverURL];
      v8 = [serverURL isEqual:serverURL2];
    }

    else
    {
      v8 = 0;
    }

    identityReference = [(NEDNSOverHTTPSSettings *)self identityReference];
    if (identityReference || ([v5 identityReference], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      identityReference2 = [(NEDNSOverHTTPSSettings *)self identityReference];
      if (identityReference2)
      {
        identityReference3 = [(NEDNSOverHTTPSSettings *)self identityReference];
        identityReference4 = [v5 identityReference];
        v14 = [identityReference3 isEqualToData:identityReference4] ^ 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if (identityReference)
      {
        goto LABEL_15;
      }

      v15 = 0;
    }

    else
    {
      LOBYTE(v14) = 1;
    }

LABEL_15:
    v9 = (v14 ^ 1) & v8;

    goto LABEL_16;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (NEDNSOverHTTPSSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NEDNSOverHTTPSSettings;
  v5 = [(NEDNSSettings *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ServerURL"];
    serverURL = v5->_serverURL;
    v5->_serverURL = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityReference"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v9;
  }

  return v5;
}

@end