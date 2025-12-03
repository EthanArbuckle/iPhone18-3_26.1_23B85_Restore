@interface THPreferredNetworkEntry
- (THPreferredNetworkEntry)initWithCoder:(id)coder;
- (id)initPrefEntry:(id)entry extendedPANID:(id)d ipv4Signature:(id)signature ipv6Signature:(id)ipv6Signature wifiSSID:(id)iD creationDate:(id)date lastModificationDate:(id)modificationDate credentialsRecord:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation THPreferredNetworkEntry

- (id)initPrefEntry:(id)entry extendedPANID:(id)d ipv4Signature:(id)signature ipv6Signature:(id)ipv6Signature wifiSSID:(id)iD creationDate:(id)date lastModificationDate:(id)modificationDate credentialsRecord:(id)self0
{
  entryCopy = entry;
  dCopy = d;
  signatureCopy = signature;
  ipv6SignatureCopy = ipv6Signature;
  iDCopy = iD;
  obj = date;
  dateCopy = date;
  modificationDateCopy = modificationDate;
  recordCopy = record;
  v29.receiver = self;
  v29.super_class = THPreferredNetworkEntry;
  v19 = [(THPreferredNetworkEntry *)&v29 init];
  p_isa = &v19->super.isa;
  if (v19)
  {
    objc_storeStrong(&v19->_networkName, entry);
    objc_storeStrong(p_isa + 2, d);
    objc_storeStrong(p_isa + 6, record);
    objc_storeStrong(p_isa + 3, signature);
    objc_storeStrong(p_isa + 4, ipv6Signature);
    objc_storeStrong(p_isa + 5, iD);
    objc_storeStrong(p_isa + 7, obj);
    objc_storeStrong(p_isa + 8, modificationDate);
  }

  return p_isa;
}

- (THPreferredNetworkEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xp"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipv4"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ipv6"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wifissid"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creds"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cr"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lm"];

  selfCopy = 0;
  if (v5 && v6)
  {
    self = [(THPreferredNetworkEntry *)self initPrefEntry:v5 extendedPANID:v6 ipv4Signature:v7 ipv6Signature:v8 wifiSSID:v9 creationDate:v11 lastModificationDate:v12 credentialsRecord:v10];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networkName = [(THPreferredNetworkEntry *)self networkName];
  [coderCopy encodeObject:networkName forKey:@"name"];

  extendedPANID = [(THPreferredNetworkEntry *)self extendedPANID];
  [coderCopy encodeObject:extendedPANID forKey:@"xp"];

  ipv4Signature = [(THPreferredNetworkEntry *)self ipv4Signature];
  [coderCopy encodeObject:ipv4Signature forKey:@"ipv4"];

  ipv6Signature = [(THPreferredNetworkEntry *)self ipv6Signature];
  [coderCopy encodeObject:ipv6Signature forKey:@"ipv6"];

  wifiSSID = [(THPreferredNetworkEntry *)self wifiSSID];
  [coderCopy encodeObject:wifiSSID forKey:@"wifissid"];

  credentialsRecord = [(THPreferredNetworkEntry *)self credentialsRecord];
  [coderCopy encodeObject:credentialsRecord forKey:@"creds"];

  creationDate = [(THPreferredNetworkEntry *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"cr"];

  lastModificationDate = [(THPreferredNetworkEntry *)self lastModificationDate];
  [coderCopy encodeObject:lastModificationDate forKey:@"lm"];
}

@end