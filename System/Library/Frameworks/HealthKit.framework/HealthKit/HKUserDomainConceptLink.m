@interface HKUserDomainConceptLink
- (BOOL)isEqual:(id)a3;
- (HKUserDomainConceptLink)init;
- (HKUserDomainConceptLink)initWithCoder:(id)a3;
- (HKUserDomainConceptLink)initWithLinkStructWrapper:(id)a3;
- (HKUserDomainConceptLink)initWithTarget:(id)a3 type:(int64_t)a4;
- (HKUserDomainConceptLink)initWithUserConcept:(id)a3 type:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserDomainConceptLink

- (HKUserDomainConceptLink)initWithLinkStructWrapper:(id)a3
{
  v4 = a3;
  v5 = [v4 target];
  v6 = [v4 type];

  v7 = [(HKUserDomainConceptLink *)self initWithTarget:v5 type:v6];
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

- (HKUserDomainConceptLink)initWithTarget:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HKUserDomainConceptLink;
  v7 = [(HKUserDomainConceptLink *)&v11 init];
  if (v7)
  {
    v8 = [[HKUserDomainConceptLinkStructWrapper alloc] initWithTarget:v6 type:a4];
    implementation = v7->_implementation;
    v7->_implementation = v8;
  }

  return v7;
}

- (HKUserDomainConceptLink)initWithUserConcept:(id)a3 type:(int64_t)a4
{
  v6 = [a3 UUID];
  v7 = [(HKUserDomainConceptLink *)self initWithTarget:v6 type:a4];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKStringFromUserDomainConceptLinkType([(HKUserDomainConceptLink *)self type]);
  v6 = [(HKUserDomainConceptLink *)self targetUUID];
  v7 = [v6 hk_shortRepresentation];
  v8 = [v3 stringWithFormat:@"<%@ (%@, %@)>", v4, v5, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKUserDomainConceptLinkStructWrapper *)self->_implementation isEqual:v4->_implementation];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  implementation = self->_implementation;
  v6 = a3;
  v5 = [(HKUserDomainConceptLinkStructWrapper *)implementation target];
  [v6 encodeObject:v5 forKey:@"uuid"];

  [v6 encodeInt64:-[HKUserDomainConceptLinkStructWrapper type](self->_implementation forKey:{"type"), @"type"}];
}

- (HKUserDomainConceptLink)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeIntegerForKey:@"type"];

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