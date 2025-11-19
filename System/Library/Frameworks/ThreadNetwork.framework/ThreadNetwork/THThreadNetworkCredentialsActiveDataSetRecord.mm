@interface THThreadNetworkCredentialsActiveDataSetRecord
- (THThreadNetworkCredentialsActiveDataSetRecord)initWithBorderAgent:(id)a3 credentialsDataSet:(id)a4 network:(id)a5 credentials:(id)a6 uniqueIdentifier:(id)a7 keychainAccessGroup:(id)a8 creationDate:(id)a9 lastModificationDate:(id)a10;
- (THThreadNetworkCredentialsActiveDataSetRecord)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation THThreadNetworkCredentialsActiveDataSetRecord

- (THThreadNetworkCredentialsActiveDataSetRecord)initWithBorderAgent:(id)a3 credentialsDataSet:(id)a4 network:(id)a5 credentials:(id)a6 uniqueIdentifier:(id)a7 keychainAccessGroup:(id)a8 creationDate:(id)a9 lastModificationDate:(id)a10
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
  v29.super_class = THThreadNetworkCredentialsActiveDataSetRecord;
  v19 = [(THThreadNetworkCredentialsActiveDataSetRecord *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_borderAgent, a3);
    objc_storeStrong(&v20->_credentialsDataSet, a4);
    objc_storeStrong(&v20->_network, a5);
    objc_storeStrong(&v20->_credentials, a6);
    objc_storeStrong(&v20->_uniqueIdentifier, a7);
    objc_storeStrong(&v20->_creationDate, a9);
    objc_storeStrong(&v20->_lastModificationDate, a10);
    objc_storeStrong(&v20->_keychainAccessGroup, obj);
  }

  return v20;
}

- (THThreadNetworkCredentialsActiveDataSetRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if (v5)
  {
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ba"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"net"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cred"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lm"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"grp"];
    v12 = v11;
    v13 = 0;
    v19 = v5;
    if (v7 && v8 && v11)
    {
      v14 = self;
      v15 = v20;
      v13 = [(THThreadNetworkCredentialsActiveDataSetRecord *)v14 initWithBorderAgent:v20 credentialsDataSet:v6 network:v7 credentials:v8 uniqueIdentifier:v5 keychainAccessGroup:v12 creationDate:v9 lastModificationDate:v10];
      v16 = v13;
    }

    else
    {
      v16 = self;
      v15 = v20;
    }

    self = v16;
    v5 = v19;
  }

  else
  {
    v17 = THLogHandleForCategory(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsActiveDataSetRecord initWithCoder:v17];
    }

    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"uuid"];

  v6 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self borderAgent];
  [v4 encodeObject:v6 forKey:@"ba"];

  v7 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self credentialsDataSet];
  [v4 encodeObject:v7 forKey:@"ds"];

  v8 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  [v4 encodeObject:v8 forKey:@"net"];

  v9 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self credentials];
  [v4 encodeObject:v9 forKey:@"cred"];

  v10 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self creationDate];
  [v4 encodeObject:v10 forKey:@"cr"];

  v11 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self lastModificationDate];
  [v4 encodeObject:v11 forKey:@"lm"];

  v12 = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keychainAccessGroup];
  [v4 encodeObject:v12 forKey:@"grp"];
}

- (void)initWithCoder:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[THThreadNetworkCredentialsActiveDataSetRecord initWithCoder:]";
  v4 = 1024;
  v5 = 57;
  _os_log_error_impl(&dword_23AAC8000, log, OS_LOG_TYPE_ERROR, "%s:%d: Could not decode uniqueIdentifier", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end