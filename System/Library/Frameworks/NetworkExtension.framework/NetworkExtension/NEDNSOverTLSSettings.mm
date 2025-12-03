@interface NEDNSOverTLSSettings
- (BOOL)isEqual:(id)equal;
- (NEDNSOverTLSSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEDNSOverTLSSettings

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = NEDNSOverTLSSettings;
  v5 = [(NEDNSSettings *)&v10 initFromLegacyDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ServerName"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NEDNSOverTLSSettings;
  v4 = [(NEDNSSettings *)&v8 copyWithZone:zone];
  serverName = [(NEDNSOverTLSSettings *)self serverName];
  [v4 setServerName:serverName];

  identityReference = [(NEDNSOverTLSSettings *)self identityReference];
  [v4 setIdentityReference:identityReference];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NEDNSOverTLSSettings;
  coderCopy = coder;
  [(NEDNSSettings *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NEDNSOverTLSSettings *)self serverName:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"ServerName"];

  identityReference = [(NEDNSOverTLSSettings *)self identityReference];
  [coderCopy encodeObject:identityReference forKey:@"IdentityReference"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = NEDNSOverTLSSettings;
  if ([(NEDNSOverTLSSettings *)&v17 isEqual:equalCopy])
  {
    v5 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serverName = [(NEDNSOverTLSSettings *)self serverName];
      serverName2 = [v5 serverName];
      v8 = [serverName isEqualToString:serverName2];
    }

    else
    {
      v8 = 0;
    }

    identityReference = [(NEDNSOverTLSSettings *)self identityReference];
    if (identityReference || ([v5 identityReference], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      identityReference2 = [(NEDNSOverTLSSettings *)self identityReference];
      if (identityReference2)
      {
        identityReference3 = [(NEDNSOverTLSSettings *)self identityReference];
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

- (NEDNSOverTLSSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NEDNSOverTLSSettings;
  v5 = [(NEDNSSettings *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ServerName"];
    serverName = v5->_serverName;
    v5->_serverName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityReference"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v9;
  }

  return v5;
}

@end