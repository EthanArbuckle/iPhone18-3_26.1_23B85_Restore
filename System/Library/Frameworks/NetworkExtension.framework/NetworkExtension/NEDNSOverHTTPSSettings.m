@interface NEDNSOverHTTPSSettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NEDNSOverHTTPSSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEDNSOverHTTPSSettings

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEDNSOverHTTPSSettings;
  v5 = [(NEDNSSettings *)&v11 initFromLegacyDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ServerURL"];
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

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEDNSOverHTTPSSettings;
  v5 = [(NEDNSSettings *)&v12 checkValidityAndCollectErrors:v4];
  v6 = [(NEDNSOverHTTPSSettings *)self serverURL];

  if (!v6)
  {
    v10 = @"Missing server URL";
    goto LABEL_5;
  }

  v7 = [(NEDNSOverHTTPSSettings *)self serverURL];
  v8 = [v7 scheme];
  v9 = [v8 isEqualToString:@"https"];

  if ((v9 & 1) == 0)
  {
    v10 = @"Server URL does not have HTTPS scheme";
LABEL_5:
    [NEConfiguration addError:v10 toList:v4];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NEDNSOverHTTPSSettings;
  v4 = [(NEDNSSettings *)&v8 copyWithZone:a3];
  v5 = [(NEDNSOverHTTPSSettings *)self serverURL];
  [v4 setServerURL:v5];

  v6 = [(NEDNSOverHTTPSSettings *)self identityReference];
  [v4 setIdentityReference:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NEDNSOverHTTPSSettings;
  v4 = a3;
  [(NEDNSSettings *)&v7 encodeWithCoder:v4];
  v5 = [(NEDNSOverHTTPSSettings *)self serverURL:v7.receiver];
  [v4 encodeObject:v5 forKey:@"ServerURL"];

  v6 = [(NEDNSOverHTTPSSettings *)self identityReference];
  [v4 encodeObject:v6 forKey:@"IdentityReference"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NEDNSOverHTTPSSettings;
  if ([(NEDNSOverHTTPSSettings *)&v17 isEqual:v4])
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(NEDNSOverHTTPSSettings *)self serverURL];
      v7 = [v5 serverURL];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }

    v10 = [(NEDNSOverHTTPSSettings *)self identityReference];
    if (v10 || ([v5 identityReference], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(NEDNSOverHTTPSSettings *)self identityReference];
      if (v11)
      {
        v12 = [(NEDNSOverHTTPSSettings *)self identityReference];
        v13 = [v5 identityReference];
        v14 = [v12 isEqualToData:v13] ^ 1;
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      if (v10)
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

- (NEDNSOverHTTPSSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEDNSOverHTTPSSettings;
  v5 = [(NEDNSSettings *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ServerURL"];
    serverURL = v5->_serverURL;
    v5->_serverURL = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityReference"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v9;
  }

  return v5;
}

@end