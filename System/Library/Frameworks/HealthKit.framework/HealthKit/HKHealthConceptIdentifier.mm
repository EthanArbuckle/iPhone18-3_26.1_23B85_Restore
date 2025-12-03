@interface HKHealthConceptIdentifier
+ (id)baseConceptIdentifierWithSemanticIdentifierString:(id)string;
+ (id)medicationConceptIdentifierWithSemanticIdentifierString:(id)string;
- (BOOL)isEqual:(id)equal;
- (HKHealthConceptIdentifier)init;
- (HKHealthConceptIdentifier)initWithCoder:(id)coder;
- (HKHealthConceptIdentifier)initWithDomain:(id)domain underlyingIdentifier:(id)identifier;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHealthConceptIdentifier

- (HKHealthConceptIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKHealthConceptIdentifier)initWithDomain:(id)domain underlyingIdentifier:(id)identifier
{
  domainCopy = domain;
  identifierCopy = identifier;
  v10 = identifierCopy;
  if (domainCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKHealthConceptIdentifier initWithDomain:a2 underlyingIdentifier:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [HKHealthConceptIdentifier initWithDomain:a2 underlyingIdentifier:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = HKHealthConceptIdentifier;
  v11 = [(HKHealthConceptIdentifier *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_domain, domain);
    objc_storeStrong(&v12->_underlyingIdentifier, identifier);
  }

  return v12;
}

+ (id)baseConceptIdentifierWithSemanticIdentifierString:(id)string
{
  stringCopy = string;
  v4 = [HKHealthConceptIdentifier alloc];
  hk_SHA256Hash = [stringCopy hk_SHA256Hash];

  v6 = [(HKHealthConceptIdentifier *)v4 initWithDomain:@"HKHealthConceptDomainBase" underlyingIdentifier:hk_SHA256Hash];

  return v6;
}

+ (id)medicationConceptIdentifierWithSemanticIdentifierString:(id)string
{
  stringCopy = string;
  v4 = [HKHealthConceptIdentifier alloc];
  hk_SHA256Hash = [stringCopy hk_SHA256Hash];

  v6 = [(HKHealthConceptIdentifier *)v4 initWithDomain:@"HKHealthConceptDomainMedication" underlyingIdentifier:hk_SHA256Hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      domain = self->_domain;
      domain = [(HKHealthConceptIdentifier *)v5 domain];
      v8 = domain;
      if (domain == domain)
      {
      }

      else
      {
        domain2 = [(HKHealthConceptIdentifier *)v5 domain];
        if (!domain2)
        {
          goto LABEL_14;
        }

        v10 = domain2;
        v11 = self->_domain;
        domain3 = [(HKHealthConceptIdentifier *)v5 domain];
        LODWORD(v11) = [(NSString *)v11 isEqual:domain3];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      underlyingIdentifier = self->_underlyingIdentifier;
      underlyingIdentifier = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
      v8 = underlyingIdentifier;
      if (underlyingIdentifier == underlyingIdentifier)
      {

LABEL_17:
        v13 = 1;
        goto LABEL_18;
      }

      underlyingIdentifier2 = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
      if (underlyingIdentifier2)
      {
        v17 = underlyingIdentifier2;
        v18 = self->_underlyingIdentifier;
        underlyingIdentifier3 = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
        LOBYTE(v18) = [(NSString *)v18 isEqual:underlyingIdentifier3];

        if (v18)
        {
          goto LABEL_17;
        }

LABEL_15:
        v13 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v5 = compareCopy;
    domain = self->_domain;
    domain = [(HKHealthConceptIdentifier *)v5 domain];
    v8 = [(NSString *)domain compare:domain];

    if (!v8)
    {
      underlyingIdentifier = self->_underlyingIdentifier;
      underlyingIdentifier = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
      v8 = [(NSString *)underlyingIdentifier compare:underlyingIdentifier];
    }
  }

  return v8;
}

- (HKHealthConceptIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKHealthConceptIdentifier;
  v5 = [(HKHealthConceptIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DomainKey"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnderlyingIdentifierKey"];
    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"DomainKey"];
  [coderCopy encodeObject:self->_underlyingIdentifier forKey:@"UnderlyingIdentifierKey"];
}

- (void)initWithDomain:(uint64_t)a1 underlyingIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthConceptIdentifier.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"domain"}];
}

- (void)initWithDomain:(uint64_t)a1 underlyingIdentifier:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHealthConceptIdentifier.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"underlyingIdentifier"}];
}

@end