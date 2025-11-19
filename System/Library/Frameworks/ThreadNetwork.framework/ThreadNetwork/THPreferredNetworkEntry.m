@interface THPreferredNetworkEntry
- (THPreferredNetworkEntry)initWithCoder:(id)a3;
- (id)initPrefEntry:(id)a3 extendedPANID:(id)a4 ipv4Signature:(id)a5 ipv6Signature:(id)a6 wifiSSID:(id)a7 creationDate:(id)a8 lastModificationDate:(id)a9 credentialsRecord:(id)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THPreferredNetworkEntry

- (id)initPrefEntry:(id)a3 extendedPANID:(id)a4 ipv4Signature:(id)a5 ipv6Signature:(id)a6 wifiSSID:(id)a7 creationDate:(id)a8 lastModificationDate:(id)a9 credentialsRecord:(id)a10
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v24 = a7;
  obj = a8;
  v23 = a8;
  v17 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = THPreferredNetworkEntry;
  v19 = [(THPreferredNetworkEntry *)&v29 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_networkName, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 6, a10);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 7, obj);
    objc_storeStrong(p_isa + 8, a9);
  }

  return p_isa;
}

- (THPreferredNetworkEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xp"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipv4"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ipv6"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wifissid"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creds"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lm"];

  v13 = 0;
  if (v5 && v6)
  {
    self = [(THPreferredNetworkEntry *)self initPrefEntry:v5 extendedPANID:v6 ipv4Signature:v7 ipv6Signature:v8 wifiSSID:v9 creationDate:v11 lastModificationDate:v12 credentialsRecord:v10];
    v13 = self;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THPreferredNetworkEntry *)self networkName];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(THPreferredNetworkEntry *)self extendedPANID];
  [v4 encodeObject:v6 forKey:@"xp"];

  v7 = [(THPreferredNetworkEntry *)self ipv4Signature];
  [v4 encodeObject:v7 forKey:@"ipv4"];

  v8 = [(THPreferredNetworkEntry *)self ipv6Signature];
  [v4 encodeObject:v8 forKey:@"ipv6"];

  v9 = [(THPreferredNetworkEntry *)self wifiSSID];
  [v4 encodeObject:v9 forKey:@"wifissid"];

  v10 = [(THPreferredNetworkEntry *)self credentialsRecord];
  [v4 encodeObject:v10 forKey:@"creds"];

  v11 = [(THPreferredNetworkEntry *)self creationDate];
  [v4 encodeObject:v11 forKey:@"cr"];

  v12 = [(THPreferredNetworkEntry *)self lastModificationDate];
  [v4 encodeObject:v12 forKey:@"lm"];
}

@end