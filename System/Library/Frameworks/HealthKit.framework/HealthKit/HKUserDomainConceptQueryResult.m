@interface HKUserDomainConceptQueryResult
- (HKUserDomainConceptQueryResult)init;
- (HKUserDomainConceptQueryResult)initWithCoder:(id)a3;
- (HKUserDomainConceptQueryResult)initWithUserConcept:(id)a3 rawAnchor:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserDomainConceptQueryResult

- (HKUserDomainConceptQueryResult)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptQueryResult)initWithUserConcept:(id)a3 rawAnchor:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptQueryResult;
  v7 = [(HKUserDomainConceptQueryResult *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    userConcept = v7->_userConcept;
    v7->_userConcept = v8;

    v7->_rawAnchor = a4;
  }

  return v7;
}

- (HKUserDomainConceptQueryResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKUserDomainConceptQueryResult;
  v5 = [(HKUserDomainConceptQueryResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userConcept"];
    userConcept = v5->_userConcept;
    v5->_userConcept = v6;

    v5->_rawAnchor = [v4 decodeInt64ForKey:@"anchor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  userConcept = self->_userConcept;
  v5 = a3;
  [v5 encodeObject:userConcept forKey:@"userConcept"];
  [v5 encodeInt64:self->_rawAnchor forKey:@"anchor"];
}

@end