@interface THThreadNetworkCredentialsActiveDataSetRecord
- (THThreadNetworkCredentialsActiveDataSetRecord)initWithBorderAgent:(id)agent credentialsDataSet:(id)set network:(id)network credentials:(id)credentials uniqueIdentifier:(id)identifier keychainAccessGroup:(id)group creationDate:(id)date lastModificationDate:(id)self0;
- (THThreadNetworkCredentialsActiveDataSetRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THThreadNetworkCredentialsActiveDataSetRecord

- (THThreadNetworkCredentialsActiveDataSetRecord)initWithBorderAgent:(id)agent credentialsDataSet:(id)set network:(id)network credentials:(id)credentials uniqueIdentifier:(id)identifier keychainAccessGroup:(id)group creationDate:(id)date lastModificationDate:(id)self0
{
  agentCopy = agent;
  setCopy = set;
  networkCopy = network;
  credentialsCopy = credentials;
  identifierCopy = identifier;
  obj = group;
  groupCopy = group;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  v29.receiver = self;
  v29.super_class = THThreadNetworkCredentialsActiveDataSetRecord;
  v19 = [(THThreadNetworkCredentialsActiveDataSetRecord *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_borderAgent, agent);
    objc_storeStrong(&v20->_credentialsDataSet, set);
    objc_storeStrong(&v20->_network, network);
    objc_storeStrong(&v20->_credentials, credentials);
    objc_storeStrong(&v20->_uniqueIdentifier, identifier);
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_lastModificationDate, modificationDate);
    objc_storeStrong(&v20->_keychainAccessGroup, obj);
  }

  return v20;
}

- (THThreadNetworkCredentialsActiveDataSetRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  if (v5)
  {
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ba"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"net"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cred"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lm"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"grp"];
    v12 = v11;
    v13 = 0;
    v19 = v5;
    if (v7 && v8 && v11)
    {
      selfCopy = self;
      v15 = v20;
      v13 = [(THThreadNetworkCredentialsActiveDataSetRecord *)selfCopy initWithBorderAgent:v20 credentialsDataSet:v6 network:v7 credentials:v8 uniqueIdentifier:v5 keychainAccessGroup:v12 creationDate:v9 lastModificationDate:v10];
      selfCopy2 = v13;
    }

    else
    {
      selfCopy2 = self;
      v15 = v20;
    }

    self = selfCopy2;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(THThreadNetworkCredentialsActiveDataSetRecord *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uuid"];

  borderAgent = [(THThreadNetworkCredentialsActiveDataSetRecord *)self borderAgent];
  [coderCopy encodeObject:borderAgent forKey:@"ba"];

  credentialsDataSet = [(THThreadNetworkCredentialsActiveDataSetRecord *)self credentialsDataSet];
  [coderCopy encodeObject:credentialsDataSet forKey:@"ds"];

  network = [(THThreadNetworkCredentialsActiveDataSetRecord *)self network];
  [coderCopy encodeObject:network forKey:@"net"];

  credentials = [(THThreadNetworkCredentialsActiveDataSetRecord *)self credentials];
  [coderCopy encodeObject:credentials forKey:@"cred"];

  creationDate = [(THThreadNetworkCredentialsActiveDataSetRecord *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"cr"];

  lastModificationDate = [(THThreadNetworkCredentialsActiveDataSetRecord *)self lastModificationDate];
  [coderCopy encodeObject:lastModificationDate forKey:@"lm"];

  keychainAccessGroup = [(THThreadNetworkCredentialsActiveDataSetRecord *)self keychainAccessGroup];
  [coderCopy encodeObject:keychainAccessGroup forKey:@"grp"];
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