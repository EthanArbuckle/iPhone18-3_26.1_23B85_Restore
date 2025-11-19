@interface THThreadNetworkCredentialsStoreRecord
- (THThreadNetworkCredentialsStoreRecord)initWithCoder:(id)a3;
- (THThreadNetworkCredentialsStoreRecord)initWithNetwork:(id)a3 credentials:(id)a4 uniqueIdentifier:(id)a5 keychainAccessGroup:(id)a6 creationDate:(id)a7 lastModificationDate:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THThreadNetworkCredentialsStoreRecord

- (THThreadNetworkCredentialsStoreRecord)initWithNetwork:(id)a3 credentials:(id)a4 uniqueIdentifier:(id)a5 keychainAccessGroup:(id)a6 creationDate:(id)a7 lastModificationDate:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = THThreadNetworkCredentialsStoreRecord;
  v18 = [(THThreadNetworkCredentialsStoreRecord *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_network, a3);
    objc_storeStrong(&v19->_credentials, a4);
    objc_storeStrong(&v19->_uniqueIdentifier, a5);
    objc_storeStrong(&v19->_creationDate, a7);
    objc_storeStrong(&v19->_lastModificationDate, a8);
    objc_storeStrong(&v19->_keychainAccessGroup, a6);
  }

  return v19;
}

- (THThreadNetworkCredentialsStoreRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"net"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cred"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lm"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"grp"];
    v11 = v10;
    v12 = 0;
    if (v6 && v7 && v10)
    {
      self = [(THThreadNetworkCredentialsStoreRecord *)self initWithNetwork:v6 credentials:v7 uniqueIdentifier:v5 keychainAccessGroup:v10 creationDate:v8 lastModificationDate:v9];
      v12 = self;
    }
  }

  else
  {
    v13 = THLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreRecord initWithCoder:v13];
    }

    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsStoreRecord *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(THThreadNetworkCredentialsStoreRecord *)self network];
  [v4 encodeObject:v6 forKey:@"net"];

  v7 = [(THThreadNetworkCredentialsStoreRecord *)self credentials];
  [v4 encodeObject:v7 forKey:@"cred"];

  v8 = [(THThreadNetworkCredentialsStoreRecord *)self creationDate];
  [v4 encodeObject:v8 forKey:@"cr"];

  v9 = [(THThreadNetworkCredentialsStoreRecord *)self lastModificationDate];
  [v4 encodeObject:v9 forKey:@"lm"];

  v10 = [(THThreadNetworkCredentialsStoreRecord *)self keychainAccessGroup];
  [v4 encodeObject:v10 forKey:@"grp"];
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[THThreadNetworkCredentialsStoreRecord initWithCoder:]";
  v4 = 1024;
  v5 = 52;
  _os_log_error_impl(&dword_23AAC8000, log, OS_LOG_TYPE_ERROR, "%s:%d: Could not decode uniqueIdentifier", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end