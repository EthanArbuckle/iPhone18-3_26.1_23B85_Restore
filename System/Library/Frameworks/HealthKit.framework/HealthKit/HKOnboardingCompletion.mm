@interface HKOnboardingCompletion
- (BOOL)isEqual:(id)equal;
- (HKOnboardingCompletion)initWithCoder:(id)coder;
- (HKOnboardingCompletion)initWithFeatureIdentifier:(id)identifier version:(int64_t)version completionDate:(id)date countryCode:(id)code countryCodeProvenance:(int64_t)provenance;
- (HKOnboardingCompletion)initWithFeatureIdentifier:(id)identifier version:(int64_t)version completionDate:(id)date countryCode:(id)code countryCodeProvenance:(int64_t)provenance UUID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKOnboardingCompletion

- (HKOnboardingCompletion)initWithFeatureIdentifier:(id)identifier version:(int64_t)version completionDate:(id)date countryCode:(id)code countryCodeProvenance:(int64_t)provenance UUID:(id)d
{
  identifierCopy = identifier;
  dateCopy = date;
  codeCopy = code;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = HKOnboardingCompletion;
  v18 = [(HKOnboardingCompletion *)&v28 init];
  if (v18)
  {
    v19 = [identifierCopy copy];
    featureIdentifier = v18->_featureIdentifier;
    v18->_featureIdentifier = v19;

    v18->_version = version;
    v21 = [dateCopy copy];
    completionDate = v18->_completionDate;
    v18->_completionDate = v21;

    uppercaseString = [codeCopy uppercaseString];
    countryCode = v18->_countryCode;
    v18->_countryCode = uppercaseString;

    v18->_countryCodeProvenance = provenance;
    v25 = [dCopy copy];
    UUID = v18->_UUID;
    v18->_UUID = v25;
  }

  return v18;
}

- (HKOnboardingCompletion)initWithFeatureIdentifier:(id)identifier version:(int64_t)version completionDate:(id)date countryCode:(id)code countryCodeProvenance:(int64_t)provenance
{
  v12 = MEMORY[0x1E696AFB0];
  codeCopy = code;
  dateCopy = date;
  identifierCopy = identifier;
  uUID = [v12 UUID];
  v17 = [(HKOnboardingCompletion *)self initWithFeatureIdentifier:identifierCopy version:version completionDate:dateCopy countryCode:codeCopy countryCodeProvenance:provenance UUID:uUID];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    featureIdentifier = self->_featureIdentifier;
    v7 = v5[1];
    v12 = (featureIdentifier == v7 || v7 && [(NSString *)featureIdentifier isEqualToString:?]) && self->_version == v5[2] && ((completionDate = self->_completionDate, v9 = v5[3], completionDate == v9) || v9 && [(NSDate *)completionDate isEqualToDate:?]) && ((countryCode = self->_countryCode, v11 = v5[4], countryCode == v11) || v11 && [(NSString *)countryCode isEqualToString:?]) && self->_countryCodeProvenance == v5[5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  UUID = self->_UUID;
  featureIdentifier = self->_featureIdentifier;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  countryCode = self->_countryCode;
  v9 = NSStringFromHKOnboardingCompletionCountryCodeProvenance(self->_countryCodeProvenance);
  v10 = [v3 stringWithFormat:@"<%@: %p %@ %@ v:%@ country:%@/%@ date:%@>", v4, self, UUID, featureIdentifier, v7, countryCode, v9, self->_completionDate];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  featureIdentifier = self->_featureIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:featureIdentifier forKey:@"FeatureIdentifier"];
  [coderCopy encodeInteger:self->_version forKey:@"Version"];
  [coderCopy encodeObject:self->_completionDate forKey:@"CompletionDate"];
  [coderCopy encodeObject:self->_countryCode forKey:@"CountryCode"];
  [coderCopy encodeInteger:self->_countryCodeProvenance forKey:@"CountryCodeProvenance"];
  [coderCopy encodeObject:self->_UUID forKey:@"UUID"];
}

- (HKOnboardingCompletion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKOnboardingCompletion;
  v5 = [(HKOnboardingCompletion *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FeatureIdentifier"];
    featureIdentifier = v5->_featureIdentifier;
    v5->_featureIdentifier = v6;

    v5->_version = [coderCopy decodeIntegerForKey:@"Version"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CompletionDate"];
    completionDate = v5->_completionDate;
    v5->_completionDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CountryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v10;

    v5->_countryCodeProvenance = [coderCopy decodeIntegerForKey:@"CountryCodeProvenance"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v12;
  }

  return v5;
}

@end