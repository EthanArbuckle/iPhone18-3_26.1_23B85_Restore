@interface THCredentials
- (THCredentials)initWithCoder:(id)a3;
- (id)initThreadCredentials:(id)a3 extendedPANID:(id)a4 borderAgentID:(id)a5 activeOperationalDataSet:(id)a6 PSKC:(id)a7 networkKey:(id)a8 channel:(unsigned __int8)a9 panID:(id)a10 creationDate:(id)a11 lastModificationDate:(id)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THCredentials

- (id)initThreadCredentials:(id)a3 extendedPANID:(id)a4 borderAgentID:(id)a5 activeOperationalDataSet:(id)a6 PSKC:(id)a7 networkKey:(id)a8 channel:(unsigned __int8)a9 panID:(id)a10 creationDate:(id)a11 lastModificationDate:(id)a12
{
  v33 = a3;
  obj = a4;
  v19 = a4;
  v29 = a5;
  v20 = a5;
  v30 = a6;
  v21 = a6;
  v31 = a7;
  v34 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v32 = a12;
  v35.receiver = self;
  v35.super_class = THCredentials;
  v25 = [(THCredentials *)&v35 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_networkName, a3);
    objc_storeStrong(&v26->_extendedPANID, obj);
    objc_storeStrong(&v26->_borderAgentID, v29);
    objc_storeStrong(&v26->_activeOperationalDataSet, v30);
    objc_storeStrong(&v26->_PSKC, v31);
    objc_storeStrong(&v26->_networkKey, a8);
    v26->_channel = a9;
    objc_storeStrong(&v26->_panID, a10);
    objc_storeStrong(&v26->_creationDate, a11);
    objc_storeStrong(&v26->_lastModificationDate, a12);
  }

  return v26;
}

- (THCredentials)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"xp"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ba"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nk"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"psk"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ch"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"panid"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dscreds"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lm"];

  v11 = 0;
  v22 = v7;
  v20 = v4;
  if (v4 && v5)
  {
    v12 = v8;
    if (v7)
    {
      v13 = [v7 charValue];
    }

    else
    {
      v13 = -1;
    }

    v15 = v25;
    v17 = v23;
    LOBYTE(v19) = v13;
    v16 = v21;
    v14 = [(THCredentials *)self initThreadCredentials:v4 extendedPANID:v5 borderAgentID:v25 activeOperationalDataSet:v12 PSKC:v21 networkKey:v6 channel:v19 panID:v23 creationDate:v9 lastModificationDate:v10, v4];
    v11 = v14;
  }

  else
  {
    v14 = self;
    v15 = v25;
    v16 = v21;
    v12 = v8;
    v17 = v23;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(THCredentials *)self networkName];
  [v14 encodeObject:v4 forKey:@"name"];

  v5 = [(THCredentials *)self extendedPANID];
  [v14 encodeObject:v5 forKey:@"xp"];

  v6 = [(THCredentials *)self borderAgentID];
  [v14 encodeObject:v6 forKey:@"ba"];

  v7 = [(THCredentials *)self networkKey];
  [v14 encodeObject:v7 forKey:@"nk"];

  v8 = [(THCredentials *)self PSKC];
  [v14 encodeObject:v8 forKey:@"psk"];

  if ([(THCredentials *)self channel]== 255)
  {
    [v14 encodeObject:0 forKey:@"ch"];
  }

  else
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[THCredentials channel](self, "channel")}];
    [v14 encodeObject:v9 forKey:@"ch"];
  }

  v10 = [(THCredentials *)self panID];
  [v14 encodeObject:v10 forKey:@"panid"];

  v11 = [(THCredentials *)self activeOperationalDataSet];
  [v14 encodeObject:v11 forKey:@"dscreds"];

  v12 = [(THCredentials *)self creationDate];
  [v14 encodeObject:v12 forKey:@"cr"];

  v13 = [(THCredentials *)self lastModificationDate];
  [v14 encodeObject:v13 forKey:@"lm"];
}

@end