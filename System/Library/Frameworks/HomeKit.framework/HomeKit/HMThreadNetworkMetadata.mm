@interface HMThreadNetworkMetadata
- (HMThreadNetworkMetadata)initWithCoder:(id)a3;
- (HMThreadNetworkMetadata)initWithName:(id)a3 channel:(unsigned __int8)a4 PANID:(id)a5 extendedPANID:(id)a6 masterKey:(id)a7 passPhrase:(id)a8 PSKc:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMThreadNetworkMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMThreadNetworkMetadata *)self name];
  [v4 encodeObject:v5 forKey:@"HMTNMN.name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[HMThreadNetworkMetadata channel](self, "channel")}];
  [v4 encodeObject:v6 forKey:@"HMTNMN.channel"];

  v7 = [(HMThreadNetworkMetadata *)self PANID];
  [v4 encodeObject:v7 forKey:@"HMTNMN.panid"];

  v8 = [(HMThreadNetworkMetadata *)self extendedPANID];
  [v4 encodeObject:v8 forKey:@"HMTNMN.xpanid"];

  v9 = [(HMThreadNetworkMetadata *)self passPhrase];
  [v4 encodeObject:v9 forKey:@"HMTNMN.passPhrase"];

  v10 = [(HMThreadNetworkMetadata *)self PSKc];
  [v4 encodeObject:v10 forKey:@"HMTNMN.PSKc"];

  v11 = [(HMThreadNetworkMetadata *)self operationalDataset];
  [v4 encodeObject:v11 forKey:@"HMTNMN.AOD"];
}

- (HMThreadNetworkMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.name"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.channel"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.panid"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.xpanid"];
        if (v8)
        {
          v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.passPhrase"];
          v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.PSKc"];
          v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.AOD"];
          self = -[HMThreadNetworkMetadata initWithName:channel:PANID:extendedPANID:masterKey:passPhrase:PSKc:operationalDataset:](self, "initWithName:channel:PANID:extendedPANID:masterKey:passPhrase:PSKc:operationalDataset:", v5, [v6 unsignedCharValue], v7, v8, 0, v9, v10, v11);

          v12 = self;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (HMThreadNetworkMetadata)initWithName:(id)a3 channel:(unsigned __int8)a4 PANID:(id)a5 extendedPANID:(id)a6 masterKey:(id)a7 passPhrase:(id)a8 PSKc:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = HMThreadNetworkMetadata;
  v21 = [(HMThreadNetworkMetadata *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    name = v21->_name;
    v21->_name = v22;

    v21->_channel = a4;
    v24 = [v16 copy];
    PANID = v21->_PANID;
    v21->_PANID = v24;

    v26 = [v17 copy];
    extendedPANID = v21->_extendedPANID;
    v21->_extendedPANID = v26;

    v28 = [v18 copy];
    masterKey = v21->_masterKey;
    v21->_masterKey = v28;

    v30 = [v19 copy];
    passPhrase = v21->_passPhrase;
    v21->_passPhrase = v30;

    v32 = [v20 copy];
    PSKc = v21->_PSKc;
    v21->_PSKc = v32;
  }

  return v21;
}

@end