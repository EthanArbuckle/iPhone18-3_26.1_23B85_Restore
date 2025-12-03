@interface THCredentials
- (THCredentials)initWithCoder:(id)coder;
- (id)initThreadCredentials:(id)credentials extendedPANID:(id)d borderAgentID:(id)iD activeOperationalDataSet:(id)set PSKC:(id)c networkKey:(id)key channel:(unsigned __int8)channel panID:(id)self0 creationDate:(id)self1 lastModificationDate:(id)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THCredentials

- (id)initThreadCredentials:(id)credentials extendedPANID:(id)d borderAgentID:(id)iD activeOperationalDataSet:(id)set PSKC:(id)c networkKey:(id)key channel:(unsigned __int8)channel panID:(id)self0 creationDate:(id)self1 lastModificationDate:(id)self2
{
  credentialsCopy = credentials;
  obj = d;
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  setCopy = set;
  setCopy2 = set;
  cCopy = c;
  cCopy2 = c;
  keyCopy = key;
  panIDCopy = panID;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  v35.receiver = self;
  v35.super_class = THCredentials;
  v25 = [(THCredentials *)&v35 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_networkName, credentials);
    objc_storeStrong(&v26->_extendedPANID, obj);
    objc_storeStrong(&v26->_borderAgentID, iDCopy);
    objc_storeStrong(&v26->_activeOperationalDataSet, setCopy);
    objc_storeStrong(&v26->_PSKC, cCopy);
    objc_storeStrong(&v26->_networkKey, key);
    v26->_channel = channel;
    objc_storeStrong(&v26->_panID, panID);
    objc_storeStrong(&v26->_creationDate, date);
    objc_storeStrong(&v26->_lastModificationDate, modificationDate);
  }

  return v26;
}

- (THCredentials)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xp"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ba"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nk"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"psk"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"panid"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dscreds"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lm"];

  v11 = 0;
  v22 = v7;
  v20 = v4;
  if (v4 && v5)
  {
    v12 = v8;
    if (v7)
    {
      charValue = [v7 charValue];
    }

    else
    {
      charValue = -1;
    }

    v15 = v25;
    v17 = v23;
    LOBYTE(v19) = charValue;
    v16 = v21;
    selfCopy = [(THCredentials *)self initThreadCredentials:v4 extendedPANID:v5 borderAgentID:v25 activeOperationalDataSet:v12 PSKC:v21 networkKey:v6 channel:v19 panID:v23 creationDate:v9 lastModificationDate:v10, v4];
    v11 = selfCopy;
  }

  else
  {
    selfCopy = self;
    v15 = v25;
    v16 = v21;
    v12 = v8;
    v17 = v23;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networkName = [(THCredentials *)self networkName];
  [coderCopy encodeObject:networkName forKey:@"name"];

  extendedPANID = [(THCredentials *)self extendedPANID];
  [coderCopy encodeObject:extendedPANID forKey:@"xp"];

  borderAgentID = [(THCredentials *)self borderAgentID];
  [coderCopy encodeObject:borderAgentID forKey:@"ba"];

  networkKey = [(THCredentials *)self networkKey];
  [coderCopy encodeObject:networkKey forKey:@"nk"];

  pSKC = [(THCredentials *)self PSKC];
  [coderCopy encodeObject:pSKC forKey:@"psk"];

  if ([(THCredentials *)self channel]== 255)
  {
    [coderCopy encodeObject:0 forKey:@"ch"];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[THCredentials channel](self, "channel")}];
    [coderCopy encodeObject:v9 forKey:@"ch"];
  }

  panID = [(THCredentials *)self panID];
  [coderCopy encodeObject:panID forKey:@"panid"];

  activeOperationalDataSet = [(THCredentials *)self activeOperationalDataSet];
  [coderCopy encodeObject:activeOperationalDataSet forKey:@"dscreds"];

  creationDate = [(THCredentials *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"cr"];

  lastModificationDate = [(THCredentials *)self lastModificationDate];
  [coderCopy encodeObject:lastModificationDate forKey:@"lm"];
}

@end