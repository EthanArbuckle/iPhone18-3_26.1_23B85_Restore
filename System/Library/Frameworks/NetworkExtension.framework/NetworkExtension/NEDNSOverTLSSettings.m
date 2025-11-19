@interface NEDNSOverTLSSettings
- (BOOL)isEqual:(id)a3;
- (NEDNSOverTLSSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEDNSOverTLSSettings

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NEDNSOverTLSSettings;
  v5 = [(NEDNSSettings *)&v10 initFromLegacyDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ServerName"];
    if (!isa_nsstring(v6))
    {

      v8 = 0;
      goto LABEL_6;
    }

    v7 = v5[7];
    v5[7] = v6;
  }

  v8 = v5;
LABEL_6:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NEDNSOverTLSSettings;
  v4 = [(NEDNSSettings *)&v8 copyWithZone:a3];
  v5 = [(NEDNSOverTLSSettings *)self serverName];
  [v4 setServerName:v5];

  v6 = [(NEDNSOverTLSSettings *)self identityReference];
  [v4 setIdentityReference:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NEDNSOverTLSSettings;
  v4 = a3;
  [(NEDNSSettings *)&v7 encodeWithCoder:v4];
  v5 = [(NEDNSOverTLSSettings *)self serverName:v7.receiver];
  [v4 encodeObject:v5 forKey:@"ServerName"];

  v6 = [(NEDNSOverTLSSettings *)self identityReference];
  [v4 encodeObject:v6 forKey:@"IdentityReference"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NEDNSOverTLSSettings;
  if ([(NEDNSOverTLSSettings *)&v17 isEqual:v4])
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(NEDNSOverTLSSettings *)self serverName];
      v7 = [v5 serverName];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }

    v10 = [(NEDNSOverTLSSettings *)self identityReference];
    if (v10 || ([v5 identityReference], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [(NEDNSOverTLSSettings *)self identityReference];
      if (v11)
      {
        v12 = [(NEDNSOverTLSSettings *)self identityReference];
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

- (NEDNSOverTLSSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEDNSOverTLSSettings;
  v5 = [(NEDNSSettings *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"ServerName"];
    serverName = v5->_serverName;
    v5->_serverName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityReference"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v9;
  }

  return v5;
}

@end