@interface HKHealthConceptIdentifier
+ (id)baseConceptIdentifierWithSemanticIdentifierString:(id)a3;
+ (id)medicationConceptIdentifierWithSemanticIdentifierString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKHealthConceptIdentifier)init;
- (HKHealthConceptIdentifier)initWithCoder:(id)a3;
- (HKHealthConceptIdentifier)initWithDomain:(id)a3 underlyingIdentifier:(id)a4;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (HKHealthConceptIdentifier)initWithDomain:(id)a3 underlyingIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    objc_storeStrong(&v11->_domain, a3);
    objc_storeStrong(&v12->_underlyingIdentifier, a4);
  }

  return v12;
}

+ (id)baseConceptIdentifierWithSemanticIdentifierString:(id)a3
{
  v3 = a3;
  v4 = [HKHealthConceptIdentifier alloc];
  v5 = [v3 hk_SHA256Hash];

  v6 = [(HKHealthConceptIdentifier *)v4 initWithDomain:@"HKHealthConceptDomainBase" underlyingIdentifier:v5];

  return v6;
}

+ (id)medicationConceptIdentifierWithSemanticIdentifierString:(id)a3
{
  v3 = a3;
  v4 = [HKHealthConceptIdentifier alloc];
  v5 = [v3 hk_SHA256Hash];

  v6 = [(HKHealthConceptIdentifier *)v4 initWithDomain:@"HKHealthConceptDomainMedication" underlyingIdentifier:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      domain = self->_domain;
      v7 = [(HKHealthConceptIdentifier *)v5 domain];
      v8 = v7;
      if (domain == v7)
      {
      }

      else
      {
        v9 = [(HKHealthConceptIdentifier *)v5 domain];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = self->_domain;
        v12 = [(HKHealthConceptIdentifier *)v5 domain];
        LODWORD(v11) = [(NSString *)v11 isEqual:v12];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      underlyingIdentifier = self->_underlyingIdentifier;
      v15 = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
      v8 = v15;
      if (underlyingIdentifier == v15)
      {

LABEL_17:
        v13 = 1;
        goto LABEL_18;
      }

      v16 = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
      if (v16)
      {
        v17 = v16;
        v18 = self->_underlyingIdentifier;
        v19 = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
        LOBYTE(v18) = [(NSString *)v18 isEqual:v19];

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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (self == v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v5 = v4;
    domain = self->_domain;
    v7 = [(HKHealthConceptIdentifier *)v5 domain];
    v8 = [(NSString *)domain compare:v7];

    if (!v8)
    {
      underlyingIdentifier = self->_underlyingIdentifier;
      v10 = [(HKHealthConceptIdentifier *)v5 underlyingIdentifier];
      v8 = [(NSString *)underlyingIdentifier compare:v10];
    }
  }

  return v8;
}

- (HKHealthConceptIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKHealthConceptIdentifier;
  v5 = [(HKHealthConceptIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DomainKey"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnderlyingIdentifierKey"];
    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeObject:domain forKey:@"DomainKey"];
  [v5 encodeObject:self->_underlyingIdentifier forKey:@"UnderlyingIdentifierKey"];
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