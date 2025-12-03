@interface HKUserDomainConceptLink
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptLink)init;
- (HKUserDomainConceptLink)initWithCoder:(id)coder;
- (HKUserDomainConceptLink)initWithLinkStructWrapper:(id)wrapper;
- (HKUserDomainConceptLink)initWithTarget:(id)target type:(int64_t)type;
- (HKUserDomainConceptLink)initWithUserConcept:(id)concept type:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConceptLink

- (HKUserDomainConceptLink)initWithLinkStructWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  target = [wrapperCopy target];
  type = [wrapperCopy type];

  v7 = [(HKUserDomainConceptLink *)self initWithTarget:target type:type];
  return v7;
}

- (HKUserDomainConceptLink)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptLink)initWithTarget:(id)target type:(int64_t)type
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptLink;
  v7 = [(HKUserDomainConceptLink *)&v11 init];
  if (v7)
  {
    v8 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithTarget:targetCopy type:type];
    implementation = v7->_implementation;
    v7->_implementation = v8;
  }

  return v7;
}

- (HKUserDomainConceptLink)initWithUserConcept:(id)concept type:(int64_t)type
{
  uUID = [concept UUID];
  v7 = [(HKUserDomainConceptLink *)self initWithTarget:uUID type:type];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKStringFromUserDomainConceptLinkType([(HKUserDomainConceptLink *)self type]);
  targetUUID = [(HKUserDomainConceptLink *)self targetUUID];
  hk_shortRepresentation = [targetUUID hk_shortRepresentation];
  v8 = [v3 stringWithFormat:@"<%@ (%@, %@)>", v4, v5, hk_shortRepresentation];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKUserDomainConceptLinkStructWrapper *)self->_implementation isEqual:equalCopy->_implementation];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  implementation = self->_implementation;
  coderCopy = coder;
  target = [(HKUserDomainConceptLinkStructWrapper *)implementation target];
  [coderCopy encodeObject:target forKey:@"uuid"];

  [coderCopy encodeInt64:-[HKUserDomainConceptLinkStructWrapper type](self->_implementation forKey:{"type"), @"type"}];
}

- (HKUserDomainConceptLink)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeIntegerForKey:@"type"];

  v11.receiver = self;
  v11.super_class = HKUserDomainConceptLink;
  v7 = [(HKUserDomainConceptLink *)&v11 init];
  if (v7)
  {
    v8 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithTarget:v5 type:v6];
    implementation = v7->_implementation;
    v7->_implementation = v8;
  }

  return v7;
}

@end