@interface HMThreadNetworkMetadata
- (HMThreadNetworkMetadata)initWithCoder:(id)coder;
- (HMThreadNetworkMetadata)initWithName:(id)name channel:(unsigned __int8)channel PANID:(id)d extendedPANID:(id)iD masterKey:(id)key passPhrase:(id)phrase PSKc:(id)kc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMThreadNetworkMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(HMThreadNetworkMetadata *)self name];
  [coderCopy encodeObject:name forKey:@"HMTNMN.name"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[HMThreadNetworkMetadata channel](self, "channel")}];
  [coderCopy encodeObject:v6 forKey:@"HMTNMN.channel"];

  pANID = [(HMThreadNetworkMetadata *)self PANID];
  [coderCopy encodeObject:pANID forKey:@"HMTNMN.panid"];

  extendedPANID = [(HMThreadNetworkMetadata *)self extendedPANID];
  [coderCopy encodeObject:extendedPANID forKey:@"HMTNMN.xpanid"];

  passPhrase = [(HMThreadNetworkMetadata *)self passPhrase];
  [coderCopy encodeObject:passPhrase forKey:@"HMTNMN.passPhrase"];

  pSKc = [(HMThreadNetworkMetadata *)self PSKc];
  [coderCopy encodeObject:pSKc forKey:@"HMTNMN.PSKc"];

  operationalDataset = [(HMThreadNetworkMetadata *)self operationalDataset];
  [coderCopy encodeObject:operationalDataset forKey:@"HMTNMN.AOD"];
}

- (HMThreadNetworkMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.name"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.channel"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.panid"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.xpanid"];
        if (v8)
        {
          v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.passPhrase"];
          v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.PSKc"];
          v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMTNMN.AOD"];
          self = -[HMThreadNetworkMetadata initWithName:channel:PANID:extendedPANID:masterKey:passPhrase:PSKc:operationalDataset:](self, "initWithName:channel:PANID:extendedPANID:masterKey:passPhrase:PSKc:operationalDataset:", v5, [v6 unsignedCharValue], v7, v8, 0, v9, v10, v11);

          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMThreadNetworkMetadata)initWithName:(id)name channel:(unsigned __int8)channel PANID:(id)d extendedPANID:(id)iD masterKey:(id)key passPhrase:(id)phrase PSKc:(id)kc
{
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  keyCopy = key;
  phraseCopy = phrase;
  kcCopy = kc;
  v35.receiver = self;
  v35.super_class = HMThreadNetworkMetadata;
  v21 = [(HMThreadNetworkMetadata *)&v35 init];
  if (v21)
  {
    v22 = [nameCopy copy];
    name = v21->_name;
    v21->_name = v22;

    v21->_channel = channel;
    v24 = [dCopy copy];
    PANID = v21->_PANID;
    v21->_PANID = v24;

    v26 = [iDCopy copy];
    extendedPANID = v21->_extendedPANID;
    v21->_extendedPANID = v26;

    v28 = [keyCopy copy];
    masterKey = v21->_masterKey;
    v21->_masterKey = v28;

    v30 = [phraseCopy copy];
    passPhrase = v21->_passPhrase;
    v21->_passPhrase = v30;

    v32 = [kcCopy copy];
    PSKc = v21->_PSKc;
    v21->_PSKc = v32;
  }

  return v21;
}

@end