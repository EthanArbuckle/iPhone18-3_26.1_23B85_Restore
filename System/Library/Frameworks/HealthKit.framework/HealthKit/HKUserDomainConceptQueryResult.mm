@interface HKUserDomainConceptQueryResult
- (HKUserDomainConceptQueryResult)init;
- (HKUserDomainConceptQueryResult)initWithCoder:(id)coder;
- (HKUserDomainConceptQueryResult)initWithUserConcept:(id)concept rawAnchor:(int64_t)anchor;
- (void)encodeWithCoder:(id)coder;
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

- (HKUserDomainConceptQueryResult)initWithUserConcept:(id)concept rawAnchor:(int64_t)anchor
{
  conceptCopy = concept;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptQueryResult;
  v7 = [(HKUserDomainConceptQueryResult *)&v11 init];
  if (v7)
  {
    v8 = [conceptCopy copy];
    userConcept = v7->_userConcept;
    v7->_userConcept = v8;

    v7->_rawAnchor = anchor;
  }

  return v7;
}

- (HKUserDomainConceptQueryResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKUserDomainConceptQueryResult;
  v5 = [(HKUserDomainConceptQueryResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userConcept"];
    userConcept = v5->_userConcept;
    v5->_userConcept = v6;

    v5->_rawAnchor = [coderCopy decodeInt64ForKey:@"anchor"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  userConcept = self->_userConcept;
  coderCopy = coder;
  [coderCopy encodeObject:userConcept forKey:@"userConcept"];
  [coderCopy encodeInt64:self->_rawAnchor forKey:@"anchor"];
}

@end