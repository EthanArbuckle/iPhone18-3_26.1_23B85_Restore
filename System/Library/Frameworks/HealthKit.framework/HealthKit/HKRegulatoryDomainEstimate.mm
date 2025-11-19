@interface HKRegulatoryDomainEstimate
- (BOOL)isEqual:(id)a3;
- (HKRegulatoryDomainEstimate)initWithISOCode:(id)a3 timestamp:(id)a4 provenance:(int64_t)a5;
- (id)description;
- (void)initWithEstimate:(id)a1;
@end

@implementation HKRegulatoryDomainEstimate

- (HKRegulatoryDomainEstimate)initWithISOCode:(id)a3 timestamp:(id)a4 provenance:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = HKRegulatoryDomainEstimate;
  v10 = [(HKRegulatoryDomainEstimate *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    ISOCode = v10->_ISOCode;
    v10->_ISOCode = v11;

    v13 = [v9 copy];
    timestamp = v10->_timestamp;
    v10->_timestamp = v13;

    v10->_provenance = a5;
  }

  return v10;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  ISOCode = self->_ISOCode;
  timestamp = self->_timestamp;
  v5 = NSStringFromHKOnboardingCompletionCountryCodeProvenance(self->_provenance);
  v6 = [v2 stringWithFormat:@"<HKRegulatoryDomainEstimate %@ %@ %@>", ISOCode, timestamp, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      ISOCode = self->_ISOCode;
      v7 = v5->_ISOCode;
      v10 = (ISOCode == v7 || v7 && [(NSString *)ISOCode isEqualToString:?]) && ((timestamp = self->_timestamp, v9 = v5->_timestamp, timestamp == v9) || v9 && [(NSDate *)timestamp isEqual:?]) && self->_provenance == v5->_provenance;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)initWithEstimate:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = [v3 countryCode];

    if (v5)
    {
      v6 = [v4 countryCode];
      v7 = [v4 timestamp];
      if (v7)
      {
        a1 = [a1 initWithISOCode:v6 timestamp:v7 provenance:2];
      }

      else
      {
        v8 = [MEMORY[0x1E695DF00] now];
        a1 = [a1 initWithISOCode:v6 timestamp:v8 provenance:2];
      }

      v5 = a1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end