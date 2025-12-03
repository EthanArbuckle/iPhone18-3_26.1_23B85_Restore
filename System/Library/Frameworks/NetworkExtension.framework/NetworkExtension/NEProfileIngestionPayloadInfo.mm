@interface NEProfileIngestionPayloadInfo
- (NEProfileIngestionPayloadInfo)init;
- (NEProfileIngestionPayloadInfo)initWithCoder:(id)coder;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
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

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = NEProfileIngestionPayloadInfo;
  v5 = [(NEProfileIngestionPayloadInfo *)&v45 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"PayloadType"];
    v7 = isa_nsstring(v6);

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [dictionaryCopy objectForKeyedSubscript:@"PayloadType"];
      v10 = [v8 initWithString:v9];
      payloadProtocolType = v5->_payloadProtocolType;
      v5->_payloadProtocolType = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"PayloadUUID"];
    v13 = isa_nsstring(v12);

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = [dictionaryCopy objectForKeyedSubscript:@"PayloadUUID"];
      v16 = [v14 initWithString:v15];
      payloadUUID = v5->_payloadUUID;
      v5->_payloadUUID = v16;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"PayloadOrganization"];
    v19 = isa_nsstring(v18);

    if (v19)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = [dictionaryCopy objectForKeyedSubscript:@"PayloadOrganization"];
      v22 = [v20 initWithString:v21];
      payloadOrganization = v5->_payloadOrganization;
      v5->_payloadOrganization = v22;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"PayloadRoot"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEProfileIngestionPayloadInfo allocWithZone:?]];
  payloadProtocolType = [(NEProfileIngestionPayloadInfo *)self payloadProtocolType];
  [(NEProfileIngestionPayloadInfo *)v4 setPayloadProtocolType:payloadProtocolType];

  payloadUUID = [(NEProfileIngestionPayloadInfo *)self payloadUUID];
  [(NEProfileIngestionPayloadInfo *)v4 setPayloadUUID:payloadUUID];

  payloadOrganization = [(NEProfileIngestionPayloadInfo *)self payloadOrganization];
  [(NEProfileIngestionPayloadInfo *)v4 setPayloadOrganization:payloadOrganization];

  profileIdentifier = [(NEProfileIngestionPayloadInfo *)self profileIdentifier];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileIdentifier:profileIdentifier];

  profileUUID = [(NEProfileIngestionPayloadInfo *)self profileUUID];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileUUID:profileUUID];

  profileOrganization = [(NEProfileIngestionPayloadInfo *)self profileOrganization];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileOrganization:profileOrganization];

  [(NEProfileIngestionPayloadInfo *)v4 setIsSetAside:[(NEProfileIngestionPayloadInfo *)self isSetAside]];
  profileIngestionDate = [(NEProfileIngestionPayloadInfo *)self profileIngestionDate];
  [(NEProfileIngestionPayloadInfo *)v4 setProfileIngestionDate:profileIngestionDate];

  systemVersion = [(NEProfileIngestionPayloadInfo *)self systemVersion];
  [(NEProfileIngestionPayloadInfo *)v4 setSystemVersion:systemVersion];

  [(NEProfileIngestionPayloadInfo *)v4 setProfileSource:[(NEProfileIngestionPayloadInfo *)self profileSource]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payloadProtocolType = [(NEProfileIngestionPayloadInfo *)self payloadProtocolType];
  [coderCopy encodeObject:payloadProtocolType forKey:@"PayloadType"];

  payloadUUID = [(NEProfileIngestionPayloadInfo *)self payloadUUID];
  [coderCopy encodeObject:payloadUUID forKey:@"PayloadUUID"];

  payloadOrganization = [(NEProfileIngestionPayloadInfo *)self payloadOrganization];
  [coderCopy encodeObject:payloadOrganization forKey:@"PayloadOrganization"];

  profileIdentifier = [(NEProfileIngestionPayloadInfo *)self profileIdentifier];
  [coderCopy encodeObject:profileIdentifier forKey:@"ProfileIdentifier"];

  profileUUID = [(NEProfileIngestionPayloadInfo *)self profileUUID];
  [coderCopy encodeObject:profileUUID forKey:@"ProfileUUID"];

  profileOrganization = [(NEProfileIngestionPayloadInfo *)self profileOrganization];
  [coderCopy encodeObject:profileOrganization forKey:@"ProfileOrganization"];

  [coderCopy encodeBool:-[NEProfileIngestionPayloadInfo isSetAside](self forKey:{"isSetAside"), @"isSetAside"}];
  profileIngestionDate = [(NEProfileIngestionPayloadInfo *)self profileIngestionDate];
  [coderCopy encodeObject:profileIngestionDate forKey:@"profileIngestionDate"];

  systemVersion = [(NEProfileIngestionPayloadInfo *)self systemVersion];
  [coderCopy encodeObject:systemVersion forKey:@"systemVersion"];

  [coderCopy encodeInteger:-[NEProfileIngestionPayloadInfo profileSource](self forKey:{"profileSource"), @"profileSource"}];
}

- (NEProfileIngestionPayloadInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NEProfileIngestionPayloadInfo;
  v5 = [(NEProfileIngestionPayloadInfo *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PayloadType"];
    payloadProtocolType = v5->_payloadProtocolType;
    v5->_payloadProtocolType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PayloadUUID"];
    payloadUUID = v5->_payloadUUID;
    v5->_payloadUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PayloadOrganization"];
    payloadOrganization = v5->_payloadOrganization;
    v5->_payloadOrganization = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProfileIdentifier"];
    profileIdentifier = v5->_profileIdentifier;
    v5->_profileIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProfileUUID"];
    profileUUID = v5->_profileUUID;
    v5->_profileUUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProfileOrganization"];
    profileOrganization = v5->_profileOrganization;
    v5->_profileOrganization = v16;

    v5->_isSetAside = [coderCopy decodeBoolForKey:@"isSetAside"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileIngestionDate"];
    profileIngestionDate = v5->_profileIngestionDate;
    v5->_profileIngestionDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v20;

    v5->_profileSource = [coderCopy decodeIntegerForKey:@"profileSource"];
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
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    operatingSystemVersionString = [processInfo operatingSystemVersionString];
    systemVersion = v2->_systemVersion;
    v2->_systemVersion = operatingSystemVersionString;

    date = [MEMORY[0x1E695DF00] date];
    profileIngestionDate = v2->_profileIngestionDate;
    v2->_profileIngestionDate = date;
  }

  return v2;
}

@end