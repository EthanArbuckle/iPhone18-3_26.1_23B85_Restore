@interface THPreferredThreadNetwork
- (THPreferredThreadNetwork)initWithCoder:(id)a3;
- (THPreferredThreadNetwork)initWithThreadNetwork:(id)a3 networkSignature:(id)a4 credentialsDataSetRecord:(id)a5 creationDate:(id)a6 lastModificationDate:(id)a7 userInfo:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THPreferredThreadNetwork

- (THPreferredThreadNetwork)initWithThreadNetwork:(id)a3 networkSignature:(id)a4 credentialsDataSetRecord:(id)a5 creationDate:(id)a6 lastModificationDate:(id)a7 userInfo:(id)a8
{
  v25 = a3;
  v24 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = THPreferredThreadNetwork;
  v19 = [(THPreferredThreadNetwork *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_network, a3);
    objc_storeStrong(&v20->_networkSignature, a4);
    objc_storeStrong(&v20->_credentialsDataSetRecord, a5);
    objc_storeStrong(&v20->_creationDate, a6);
    objc_storeStrong(&v20->_lastModificationDate, a7);
    v21 = [v18 copy];
    userInfo = v20->_userInfo;
    v20->_userInfo = v21;
  }

  return v20;
}

- (THPreferredThreadNetwork)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"net"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sig"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lm"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ui"];

  v11 = 0;
  if (v6 && v5 && v7)
  {
    self = [(THPreferredThreadNetwork *)self initWithThreadNetwork:v6 networkSignature:v7 credentialsDataSetRecord:v5 creationDate:v8 lastModificationDate:v9 userInfo:v10];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THPreferredThreadNetwork *)self credentialsDataSetRecord];
  [v4 encodeObject:v5 forKey:@"ds"];

  v6 = [(THPreferredThreadNetwork *)self network];
  [v4 encodeObject:v6 forKey:@"net"];

  v7 = [(THPreferredThreadNetwork *)self networkSignature];
  [v4 encodeObject:v7 forKey:@"sig"];

  v8 = [(THPreferredThreadNetwork *)self creationDate];
  [v4 encodeObject:v8 forKey:@"cr"];

  v9 = [(THPreferredThreadNetwork *)self lastModificationDate];
  [v4 encodeObject:v9 forKey:@"lm"];

  v10 = [(THPreferredThreadNetwork *)self userInfo];
  [v4 encodeObject:v10 forKey:@"ui"];
}

@end