@interface SOSiteCode
- (SOSiteCode)initWithCoder:(id)coder;
- (SOSiteCode)initWithSiteCode:(id)code forNetworkFingerprint:(id)fingerprint;
- (double)age;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOSiteCode

- (SOSiteCode)initWithSiteCode:(id)code forNetworkFingerprint:(id)fingerprint
{
  codeCopy = code;
  fingerprintCopy = fingerprint;
  v14.receiver = self;
  v14.super_class = SOSiteCode;
  v9 = [(SOSiteCode *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_code, code);
    objc_storeStrong(&v10->_networkFingerprint, fingerprint);
    date = [MEMORY[0x277CBEAA8] date];
    timeStamp = v10->_timeStamp;
    v10->_timeStamp = date;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v3 setFormatOptions:1907];
  timeStamp = [(SOSiteCode *)self timeStamp];
  v5 = [v3 stringFromDate:timeStamp];

  v6 = MEMORY[0x277CCACA8];
  networkFingerprint = [(SOSiteCode *)self networkFingerprint];
  code = [(SOSiteCode *)self code];
  v9 = [v6 stringWithFormat:@"%@, %@, %@", networkFingerprint, code, v5];

  return v9;
}

- (double)age
{
  date = [MEMORY[0x277CBEAA8] date];
  timeStamp = [(SOSiteCode *)self timeStamp];
  [date timeIntervalSinceDate:timeStamp];
  v6 = v5;

  return v6;
}

- (SOSiteCode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = SOSiteCode;
  v5 = [(SOSiteCode *)&v25 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_code);
    v7 = [coderCopy containsValueForKey:v6];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(sel_code);
      v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
      code = v5->_code;
      v5->_code = v10;
    }

    v12 = NSStringFromSelector(sel_timeStamp);
    v13 = [coderCopy containsValueForKey:v12];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromSelector(sel_timeStamp);
      v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
      timeStamp = v5->_timeStamp;
      v5->_timeStamp = v16;
    }

    v18 = NSStringFromSelector(sel_networkFingerprint);
    v19 = [coderCopy containsValueForKey:v18];

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromSelector(sel_networkFingerprint);
      v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
      networkFingerprint = v5->_networkFingerprint;
      v5->_networkFingerprint = v22;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  code = self->_code;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_code);
  [coderCopy encodeObject:code forKey:v6];

  timeStamp = self->_timeStamp;
  v8 = NSStringFromSelector(sel_timeStamp);
  [coderCopy encodeObject:timeStamp forKey:v8];

  networkFingerprint = self->_networkFingerprint;
  v10 = NSStringFromSelector(sel_networkFingerprint);
  [coderCopy encodeObject:networkFingerprint forKey:v10];
}

@end