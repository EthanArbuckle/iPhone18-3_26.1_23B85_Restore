@interface THPreferredThreadNetwork
- (THPreferredThreadNetwork)initWithCoder:(id)coder;
- (THPreferredThreadNetwork)initWithThreadNetwork:(id)network networkSignature:(id)signature credentialsDataSetRecord:(id)record creationDate:(id)date lastModificationDate:(id)modificationDate userInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THPreferredThreadNetwork

- (THPreferredThreadNetwork)initWithThreadNetwork:(id)network networkSignature:(id)signature credentialsDataSetRecord:(id)record creationDate:(id)date lastModificationDate:(id)modificationDate userInfo:(id)info
{
  networkCopy = network;
  signatureCopy = signature;
  recordCopy = record;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = THPreferredThreadNetwork;
  v19 = [(THPreferredThreadNetwork *)&v26 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_network, network);
    objc_storeStrong(&v20->_networkSignature, signature);
    objc_storeStrong(&v20->_credentialsDataSetRecord, record);
    objc_storeStrong(&v20->_creationDate, date);
    objc_storeStrong(&v20->_lastModificationDate, modificationDate);
    v21 = [infoCopy copy];
    userInfo = v20->_userInfo;
    v20->_userInfo = v21;
  }

  return v20;
}

- (THPreferredThreadNetwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"net"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sig"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lm"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ui"];

  selfCopy = 0;
  if (v6 && v5 && v7)
  {
    self = [(THPreferredThreadNetwork *)self initWithThreadNetwork:v6 networkSignature:v7 credentialsDataSetRecord:v5 creationDate:v8 lastModificationDate:v9 userInfo:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  credentialsDataSetRecord = [(THPreferredThreadNetwork *)self credentialsDataSetRecord];
  [coderCopy encodeObject:credentialsDataSetRecord forKey:@"ds"];

  network = [(THPreferredThreadNetwork *)self network];
  [coderCopy encodeObject:network forKey:@"net"];

  networkSignature = [(THPreferredThreadNetwork *)self networkSignature];
  [coderCopy encodeObject:networkSignature forKey:@"sig"];

  creationDate = [(THPreferredThreadNetwork *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"cr"];

  lastModificationDate = [(THPreferredThreadNetwork *)self lastModificationDate];
  [coderCopy encodeObject:lastModificationDate forKey:@"lm"];

  userInfo = [(THPreferredThreadNetwork *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"ui"];
}

@end