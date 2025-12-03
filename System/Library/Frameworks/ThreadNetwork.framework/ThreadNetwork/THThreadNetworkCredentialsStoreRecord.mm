@interface THThreadNetworkCredentialsStoreRecord
- (THThreadNetworkCredentialsStoreRecord)initWithCoder:(id)coder;
- (THThreadNetworkCredentialsStoreRecord)initWithNetwork:(id)network credentials:(id)credentials uniqueIdentifier:(id)identifier keychainAccessGroup:(id)group creationDate:(id)date lastModificationDate:(id)modificationDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THThreadNetworkCredentialsStoreRecord

- (THThreadNetworkCredentialsStoreRecord)initWithNetwork:(id)network credentials:(id)credentials uniqueIdentifier:(id)identifier keychainAccessGroup:(id)group creationDate:(id)date lastModificationDate:(id)modificationDate
{
  networkCopy = network;
  credentialsCopy = credentials;
  identifierCopy = identifier;
  groupCopy = group;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  v24.receiver = self;
  v24.super_class = THThreadNetworkCredentialsStoreRecord;
  v18 = [(THThreadNetworkCredentialsStoreRecord *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_network, network);
    objc_storeStrong(&v19->_credentials, credentials);
    objc_storeStrong(&v19->_uniqueIdentifier, identifier);
    objc_storeStrong(&v19->_creationDate, date);
    objc_storeStrong(&v19->_lastModificationDate, modificationDate);
    objc_storeStrong(&v19->_keychainAccessGroup, group);
  }

  return v19;
}

- (THThreadNetworkCredentialsStoreRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"net"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cred"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lm"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"grp"];
    v11 = v10;
    selfCopy = 0;
    if (v6 && v7 && v10)
    {
      self = [(THThreadNetworkCredentialsStoreRecord *)self initWithNetwork:v6 credentials:v7 uniqueIdentifier:v5 keychainAccessGroup:v10 creationDate:v8 lastModificationDate:v9];
      selfCopy = self;
    }
  }

  else
  {
    v13 = THLogHandleForCategory(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [THThreadNetworkCredentialsStoreRecord initWithCoder:v13];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(THThreadNetworkCredentialsStoreRecord *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uuid"];

  network = [(THThreadNetworkCredentialsStoreRecord *)self network];
  [coderCopy encodeObject:network forKey:@"net"];

  credentials = [(THThreadNetworkCredentialsStoreRecord *)self credentials];
  [coderCopy encodeObject:credentials forKey:@"cred"];

  creationDate = [(THThreadNetworkCredentialsStoreRecord *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"cr"];

  lastModificationDate = [(THThreadNetworkCredentialsStoreRecord *)self lastModificationDate];
  [coderCopy encodeObject:lastModificationDate forKey:@"lm"];

  keychainAccessGroup = [(THThreadNetworkCredentialsStoreRecord *)self keychainAccessGroup];
  [coderCopy encodeObject:keychainAccessGroup forKey:@"grp"];
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