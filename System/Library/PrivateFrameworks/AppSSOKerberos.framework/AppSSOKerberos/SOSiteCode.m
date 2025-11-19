@interface SOSiteCode
- (SOSiteCode)initWithCoder:(id)a3;
- (SOSiteCode)initWithSiteCode:(id)a3 forNetworkFingerprint:(id)a4;
- (double)age;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SOSiteCode

- (SOSiteCode)initWithSiteCode:(id)a3 forNetworkFingerprint:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SOSiteCode;
  v9 = [(SOSiteCode *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_code, a3);
    objc_storeStrong(&v10->_networkFingerprint, a4);
    v11 = [MEMORY[0x277CBEAA8] date];
    timeStamp = v10->_timeStamp;
    v10->_timeStamp = v11;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA68]);
  [v3 setFormatOptions:1907];
  v4 = [(SOSiteCode *)self timeStamp];
  v5 = [v3 stringFromDate:v4];

  v6 = MEMORY[0x277CCACA8];
  v7 = [(SOSiteCode *)self networkFingerprint];
  v8 = [(SOSiteCode *)self code];
  v9 = [v6 stringWithFormat:@"%@, %@, %@", v7, v8, v5];

  return v9;
}

- (double)age
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(SOSiteCode *)self timeStamp];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
}

- (SOSiteCode)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SOSiteCode;
  v5 = [(SOSiteCode *)&v25 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_code);
    v7 = [v4 containsValueForKey:v6];

    if (v7)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(sel_code);
      v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
      code = v5->_code;
      v5->_code = v10;
    }

    v12 = NSStringFromSelector(sel_timeStamp);
    v13 = [v4 containsValueForKey:v12];

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = NSStringFromSelector(sel_timeStamp);
      v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
      timeStamp = v5->_timeStamp;
      v5->_timeStamp = v16;
    }

    v18 = NSStringFromSelector(sel_networkFingerprint);
    v19 = [v4 containsValueForKey:v18];

    if (v19)
    {
      v20 = objc_opt_class();
      v21 = NSStringFromSelector(sel_networkFingerprint);
      v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
      networkFingerprint = v5->_networkFingerprint;
      v5->_networkFingerprint = v22;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  code = self->_code;
  v5 = a3;
  v6 = NSStringFromSelector(sel_code);
  [v5 encodeObject:code forKey:v6];

  timeStamp = self->_timeStamp;
  v8 = NSStringFromSelector(sel_timeStamp);
  [v5 encodeObject:timeStamp forKey:v8];

  networkFingerprint = self->_networkFingerprint;
  v10 = NSStringFromSelector(sel_networkFingerprint);
  [v5 encodeObject:networkFingerprint forKey:v10];
}

@end