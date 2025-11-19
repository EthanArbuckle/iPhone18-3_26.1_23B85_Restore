@interface NEProfileIngestionPayloadInfo
- (NEProfileIngestionPayloadInfo)init;
- (NEProfileIngestionPayloadInfo)initWithCoder:(id)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEProfileIngestionPayloadInfo

- (id)copyLegacyDictionary
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if (!v3)
  {
    goto LABEL_16;
  }

  if (self->_payloadUUID)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:self->_payloadUUID];
    [v3 setObject:v4 forKeyedSubscript:@"PayloadUUID"];
  }

  if (self->_payloadOrganization)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:self->_payloadOrganization];
    [v3 setObject:v5 forKeyedSubscript:@"PayloadOrganization"];
  }

  if (!self->_profileIdentifier && !self->_profileUUID && !self->_profileOrganization)
  {
    goto LABEL_15;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  if (!v6)
  {
LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  v7 = v6;
  if (self->_profileIdentifier)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:self->_profileIdentifier];
    [v7 setObject:v8 forKeyedSubscript:@"PayloadIdentifier"];
  }

  if (self->_profileUUID)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:self->_profileUUID];
    [v7 setObject:v9 forKeyedSubscript:@"PayloadUUID"];
  }

  [v3 setObject:v7 forKeyedSubscript:@"PayloadRoot"];

LABEL_15:
  v10 = v3;
LABEL_17:

  return v10;
}

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = NEProfileIngestionPayloadInfo;
  v5 = [(NEProfileIngestionPayloadInfo *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"PayloadType"];
    v7 = isa_nsstring(v6);

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v4 objectForKeyedSubscript:@"PayloadType"];
      v10 = [v8 initWithString:v9];
      payloadProtocolType = v5->_payloadProtocolType;
      v5->_payloadProtocolType = v10;
    }

    v12 = [v4 objectForKeyedSubscript:@"PayloadUUID"];
    v13 = isa_nsstring(v12);

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = [v4 objectForKeyedSubscript:@"PayloadUUID"];
      v16 = [v14 initWithString:v15];
      payloadUUID = v5->_payloadUUID;
      v5->_payloadUUID = v16;
    }

    v18 = [v4 objectForKeyedSubscript:@"PayloadOrganization"];
    v19 = isa_nsstring(v18);

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = [v4 objectForKeyedSubscript:@"PayloadOrganization"];
      v22 = [v20 initWithString:v21];
      payloadOrganization = v5->_payloadOrganization;
      v5->_payloadOrganization = v22;
    }

    v24 = [v4 objectForKeyedSubscript:@"PayloadRoot"];
    v25 = v24;
    if (v24 && isa_nsdictionary(v24))
    {
      v26 = [v25 objectForKeyedSubscript:@"PayloadIdentifier"];
      v27 = isa_nsstring(v26);

      if (v27)
      {
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v29 = [v25 objectForKeyedSubscript:@"PayloadIdentifier"];
        v30 = [v28 initWithString:v29];
        profileIdentifier = v5->_profileIdentifier;
        v5->_profileIdentifier = v30;
      }

      v32 = [v25 objectForKeyedSubscript:@"PayloadUUID"];
      v33 = isa_nsstring(v32);

      if (v33)
      {
        v34 = objc_alloc(MEMORY[0x1E696AEC0]);
        v35 = [v25 objectForKeyedSubscript:@"PayloadUUID"];
        v36 = [v34 initWithString:v35];
        profileUUID = v5->_profileUUID;
        v5->_profileUUID = v36;
      }

      v38 = [v25 objectForKeyedSubscript:@"PayloadOrganization"];
      v39 = isa_nsstring(v38);

      if (v39)
      {
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v41 = [v25 objectForKeyedSubscript:@"PayloadOrganization"];
        v42 = [v40 initWithString:v41];
        profileOrganization = v5->_profileOrganization;
        v5->_profileOrganization = v42;
      }
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEProfileIngestionPayloadInfo allocWithZone:?]];
  v5 = [(NEProfileIngestionPayloadInfo *)self payloadProtocolType];
  [(NEProfileIngestionPayloadInfo *)v4 setPayloadProtocolType:v5];

  v6 = [(NEProfileIngestionPayloadInfo *)self payloadUUID];
  [(NEProfileIngestionPayloadInfo *)v4 setPayloadUUID:v6];

  v7 = [(NEProfileIngestionPayloadInfo *)self payloadOrganization];
  [(NEProfileIngestionPayloadInfo *)v4 setPayloadOrganization:v7];

  v8 = [(NEProfileIngestionPayloadInfo *)self profileIdentifier];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileIdentifier:v8];

  v9 = [(NEProfileIngestionPayloadInfo *)self profileUUID];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileUUID:v9];

  v10 = [(NEProfileIngestionPayloadInfo *)self profileOrganization];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileOrganization:v10];

  [(NEProfileIngestionPayloadInfo *)v4 setIsSetAside:[(NEProfileIngestionPayloadInfo *)self isSetAside]];
  v11 = [(NEProfileIngestionPayloadInfo *)self profileIngestionDate];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileIngestionDate:v11];

  v12 = [(NEProfileIngestionPayloadInfo *)self systemVersion];
  [(NEProfileIngestionPayloadInfo *)v4 setSystemVersion:v12];

  [(NEProfileIngestionPayloadInfo *)v4 setProfileSource:[(NEProfileIngestionPayloadInfo *)self profileSource]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(NEProfileIngestionPayloadInfo *)self payloadProtocolType];
  [v12 encodeObject:v4 forKey:@"PayloadType"];

  v5 = [(NEProfileIngestionPayloadInfo *)self payloadUUID];
  [v12 encodeObject:v5 forKey:@"PayloadUUID"];

  v6 = [(NEProfileIngestionPayloadInfo *)self payloadOrganization];
  [v12 encodeObject:v6 forKey:@"PayloadOrganization"];

  v7 = [(NEProfileIngestionPayloadInfo *)self profileIdentifier];
  [v12 encodeObject:v7 forKey:@"ProfileIdentifier"];

  v8 = [(NEProfileIngestionPayloadInfo *)self profileUUID];
  [v12 encodeObject:v8 forKey:@"ProfileUUID"];

  v9 = [(NEProfileIngestionPayloadInfo *)self profileOrganization];
  [v12 encodeObject:v9 forKey:@"ProfileOrganization"];

  [v12 encodeBool:-[NEProfileIngestionPayloadInfo isSetAside](self forKey:{"isSetAside"), @"isSetAside"}];
  v10 = [(NEProfileIngestionPayloadInfo *)self profileIngestionDate];
  [v12 encodeObject:v10 forKey:@"profileIngestionDate"];

  v11 = [(NEProfileIngestionPayloadInfo *)self systemVersion];
  [v12 encodeObject:v11 forKey:@"systemVersion"];

  [v12 encodeInteger:-[NEProfileIngestionPayloadInfo profileSource](self forKey:{"profileSource"), @"profileSource"}];
}

- (NEProfileIngestionPayloadInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NEProfileIngestionPayloadInfo;
  v5 = [(NEProfileIngestionPayloadInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PayloadType"];
    payloadProtocolType = v5->_payloadProtocolType;
    v5->_payloadProtocolType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PayloadUUID"];
    payloadUUID = v5->_payloadUUID;
    v5->_payloadUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PayloadOrganization"];
    payloadOrganization = v5->_payloadOrganization;
    v5->_payloadOrganization = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProfileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProfileUUID"];
    profileUUID = v5->_profileUUID;
    v5->_profileUUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProfileOrganization"];
    profileOrganization = v5->_profileOrganization;
    v5->_profileOrganization = v16;

    v5->_isSetAside = [v4 decodeBoolForKey:@"isSetAside"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileIngestionDate"];
    profileIngestionDate = v5->_profileIngestionDate;
    v5->_profileIngestionDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v20;

    v5->_profileSource = [v4 decodeIntegerForKey:@"profileSource"];
  }

  return v5;
}

- (NEProfileIngestionPayloadInfo)init
{
  v9.receiver = self;
  v9.super_class = NEProfileIngestionPayloadInfo;
  v2 = [(NEProfileIngestionPayloadInfo *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    v4 = [v3 operatingSystemVersionString];
    systemVersion = v2->_systemVersion;
    v2->_systemVersion = v4;

    v6 = [MEMORY[0x1E695DF00] date];
    profileIngestionDate = v2->_profileIngestionDate;
    v2->_profileIngestionDate = v6;
  }

  return v2;
}

@end