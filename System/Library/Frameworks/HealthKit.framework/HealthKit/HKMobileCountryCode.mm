@interface HKMobileCountryCode
- (HKMobileCountryCode)initWithMobileCountryCode:(id)code ISOCode:(id)oCode isOverridden:(BOOL)overridden;
- (id)description;
- (int64_t)provenance;
@end

@implementation HKMobileCountryCode

- (HKMobileCountryCode)initWithMobileCountryCode:(id)code ISOCode:(id)oCode isOverridden:(BOOL)overridden
{
  codeCopy = code;
  oCodeCopy = oCode;
  v18.receiver = self;
  v18.super_class = HKMobileCountryCode;
  v10 = [(HKMobileCountryCode *)&v18 init];
  if (v10)
  {
    v11 = [codeCopy copy];
    code = v10->_code;
    v10->_code = v11;

    v13 = [oCodeCopy copy];
    ISOCode = v10->_ISOCode;
    v10->_ISOCode = v13;

    v10->_overridden = overridden;
    v15 = [MEMORY[0x1E695DF00] now];
    timestamp = v10->_timestamp;
    v10->_timestamp = v15;
  }

  return v10;
}

- (int64_t)provenance
{
  if (self->_overridden)
  {
    return 101;
  }

  else
  {
    return 1;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_overridden)
  {
    v5 = @" OVERRIDDEN";
  }

  else
  {
    v5 = &stru_1F05FF230;
  }

  return [v3 stringWithFormat:@"<%@:%p MCC:%@ ISO:%@ %@>", v4, self, self->_code, self->_ISOCode, v5];
}

@end