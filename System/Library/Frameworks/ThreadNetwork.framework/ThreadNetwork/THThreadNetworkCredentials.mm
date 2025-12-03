@interface THThreadNetworkCredentials
- (THThreadNetworkCredentials)initWithCoder:(id)coder;
- (THThreadNetworkCredentials)initWithMasterKey:(id)key passPhrase:(id)phrase PSKc:(id)kc channel:(unsigned __int8)channel PANID:(id)d userInfo:(id)info credentialDataSet:(id)set isActiveDevice:(BOOL)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THThreadNetworkCredentials

- (THThreadNetworkCredentials)initWithMasterKey:(id)key passPhrase:(id)phrase PSKc:(id)kc channel:(unsigned __int8)channel PANID:(id)d userInfo:(id)info credentialDataSet:(id)set isActiveDevice:(BOOL)self0
{
  keyCopy = key;
  phraseCopy = phrase;
  kcCopy = kc;
  dCopy = d;
  infoCopy = info;
  setCopy = set;
  v26.receiver = self;
  v26.super_class = THThreadNetworkCredentials;
  v19 = [(THThreadNetworkCredentials *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_masterKey, key);
    objc_storeStrong(&v20->_passPhrase, phrase);
    objc_storeStrong(&v20->_PSKc, kc);
    v20->_channel = channel;
    objc_storeStrong(&v20->_PANID, d);
    objc_storeStrong(&v20->_userInfo, info);
    objc_storeStrong(&v20->_credentialsDataSet, set);
    v20->_isActiveDevice = device;
  }

  return v20;
}

- (THThreadNetworkCredentials)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mk"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"psk"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pp"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"panid"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"info"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dscreds"];
  v12 = [coderCopy decodeBoolForKey:@"active"];

  if (v8)
  {
    charValue = [v8 charValue];
  }

  else
  {
    charValue = -1;
  }

  LOBYTE(v16) = v12;
  v14 = [(THThreadNetworkCredentials *)self initWithMasterKey:v5 passPhrase:v7 PSKc:v6 channel:charValue PANID:v9 userInfo:v10 credentialDataSet:v11 isActiveDevice:v16];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  masterKey = [(THThreadNetworkCredentials *)self masterKey];
  [coderCopy encodeObject:masterKey forKey:@"mk"];

  pSKc = [(THThreadNetworkCredentials *)self PSKc];
  [coderCopy encodeObject:pSKc forKey:@"psk"];

  passPhrase = [(THThreadNetworkCredentials *)self passPhrase];
  [coderCopy encodeObject:passPhrase forKey:@"pp"];

  if ([(THThreadNetworkCredentials *)self channel]== 255)
  {
    [coderCopy encodeObject:0 forKey:@"ch"];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[THThreadNetworkCredentials channel](self, "channel")}];
    [coderCopy encodeObject:v7 forKey:@"ch"];
  }

  pANID = [(THThreadNetworkCredentials *)self PANID];
  [coderCopy encodeObject:pANID forKey:@"panid"];

  userInfo = [(THThreadNetworkCredentials *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"info"];

  credentialsDataSet = [(THThreadNetworkCredentials *)self credentialsDataSet];
  [coderCopy encodeObject:credentialsDataSet forKey:@"dscreds"];

  [coderCopy encodeBool:-[THThreadNetworkCredentials isActiveDevice](self forKey:{"isActiveDevice"), @"active"}];
}

@end