@interface HKRegulatoryDomainEstimate
- (BOOL)isEqual:(id)equal;
- (HKRegulatoryDomainEstimate)initWithISOCode:(id)code timestamp:(id)timestamp provenance:(int64_t)provenance;
- (id)description;
- (void)initWithEstimate:(id)estimate;
@end

@implementation HKRegulatoryDomainEstimate

- (HKRegulatoryDomainEstimate)initWithISOCode:(id)code timestamp:(id)timestamp provenance:(int64_t)provenance
{
  codeCopy = code;
  timestampCopy = timestamp;
  v16.receiver = self;
  v16.super_class = HKRegulatoryDomainEstimate;
  v10 = [(HKRegulatoryDomainEstimate *)&v16 init];
  if (v10)
  {
    v11 = [codeCopy copy];
    ISOCode = v10->_ISOCode;
    v10->_ISOCode = v11;

    v13 = [timestampCopy copy];
    timestamp = v10->_timestamp;
    v10->_timestamp = v13;

    v10->_provenance = provenance;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)initWithEstimate:(id)estimate
{
  v3 = a2;
  v4 = v3;
  if (estimate && v3)
  {
    estimateCopy = [v3 countryCode];

    if (estimateCopy)
    {
      countryCode = [v4 countryCode];
      timestamp = [v4 timestamp];
      if (timestamp)
      {
        estimate = [estimate initWithISOCode:countryCode timestamp:timestamp provenance:2];
      }

      else
      {
        v8 = [MEMORY[0x1E695DF00] now];
        estimate = [estimate initWithISOCode:countryCode timestamp:v8 provenance:2];
      }

      estimateCopy = estimate;
    }
  }

  else
  {
    estimateCopy = 0;
  }

  return estimateCopy;
}

@end