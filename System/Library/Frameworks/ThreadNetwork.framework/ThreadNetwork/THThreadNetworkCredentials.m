@interface THThreadNetworkCredentials
- (THThreadNetworkCredentials)initWithCoder:(id)a3;
- (THThreadNetworkCredentials)initWithMasterKey:(id)a3 passPhrase:(id)a4 PSKc:(id)a5 channel:(unsigned __int8)a6 PANID:(id)a7 userInfo:(id)a8 credentialDataSet:(id)a9 isActiveDevice:(BOOL)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THThreadNetworkCredentials

- (THThreadNetworkCredentials)initWithMasterKey:(id)a3 passPhrase:(id)a4 PSKc:(id)a5 channel:(unsigned __int8)a6 PANID:(id)a7 userInfo:(id)a8 credentialDataSet:(id)a9 isActiveDevice:(BOOL)a10
{
  v16 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a7;
  v17 = a8;
  v18 = a9;
  v26.receiver = self;
  v26.super_class = THThreadNetworkCredentials;
  v19 = [(THThreadNetworkCredentials *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_masterKey, a3);
    objc_storeStrong(&v20->_passPhrase, a4);
    objc_storeStrong(&v20->_PSKc, a5);
    v20->_channel = a6;
    objc_storeStrong(&v20->_PANID, a7);
    objc_storeStrong(&v20->_userInfo, a8);
    objc_storeStrong(&v20->_credentialsDataSet, a9);
    v20->_isActiveDevice = a10;
  }

  return v20;
}

- (THThreadNetworkCredentials)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mk"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"psk"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pp"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"panid"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"info"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dscreds"];
  v12 = [v4 decodeBoolForKey:@"active"];

  if (v8)
  {
    v13 = [v8 charValue];
  }

  else
  {
    v13 = -1;
  }

  LOBYTE(v16) = v12;
  v14 = [(THThreadNetworkCredentials *)self initWithMasterKey:v5 passPhrase:v7 PSKc:v6 channel:v13 PANID:v9 userInfo:v10 credentialDataSet:v11 isActiveDevice:v16];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(THThreadNetworkCredentials *)self masterKey];
  [v11 encodeObject:v4 forKey:@"mk"];

  v5 = [(THThreadNetworkCredentials *)self PSKc];
  [v11 encodeObject:v5 forKey:@"psk"];

  v6 = [(THThreadNetworkCredentials *)self passPhrase];
  [v11 encodeObject:v6 forKey:@"pp"];

  if ([(THThreadNetworkCredentials *)self channel]== 255)
  {
    [v11 encodeObject:0 forKey:@"ch"];
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[THThreadNetworkCredentials channel](self, "channel")}];
    [v11 encodeObject:v7 forKey:@"ch"];
  }

  v8 = [(THThreadNetworkCredentials *)self PANID];
  [v11 encodeObject:v8 forKey:@"panid"];

  v9 = [(THThreadNetworkCredentials *)self userInfo];
  [v11 encodeObject:v9 forKey:@"info"];

  v10 = [(THThreadNetworkCredentials *)self credentialsDataSet];
  [v11 encodeObject:v10 forKey:@"dscreds"];

  [v11 encodeBool:-[THThreadNetworkCredentials isActiveDevice](self forKey:{"isActiveDevice"), @"active"}];
}

@end