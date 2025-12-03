@interface HKMedicationIdentifier
- (BOOL)isEqual:(id)equal;
- (HKMedicationIdentifier)init;
- (HKMedicationIdentifier)initWithCoder:(id)coder;
- (HKMedicationIdentifier)initWithRawIdentifier:(id)identifier;
- (HKMedicationIdentifier)initWithSemanticIdentifierString:(id)string;
- (int64_t)compare:(id)compare;
@end

@implementation HKMedicationIdentifier

- (HKMedicationIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationIdentifier)initWithRawIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(HKMedicationIdentifier *)a2 initWithRawIdentifier:?];
  }

  v10.receiver = self;
  v10.super_class = HKMedicationIdentifier;
  v6 = [(HKMedicationIdentifier *)&v10 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    underlyingIdentifier = v6->_underlyingIdentifier;
    v6->_underlyingIdentifier = v7;
  }

  return v6;
}

- (HKMedicationIdentifier)initWithSemanticIdentifierString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    [(HKMedicationIdentifier *)a2 initWithSemanticIdentifierString:?];
  }

  hk_SHA256Hash = [stringCopy hk_SHA256Hash];
  v7 = [(HKMedicationIdentifier *)self initWithRawIdentifier:hk_SHA256Hash];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      underlyingIdentifier = [(HKMedicationIdentifier *)v5 underlyingIdentifier];
      underlyingIdentifier2 = [(HKMedicationIdentifier *)self underlyingIdentifier];
      if (underlyingIdentifier == underlyingIdentifier2)
      {
        v11 = 1;
      }

      else
      {
        underlyingIdentifier3 = [(HKMedicationIdentifier *)self underlyingIdentifier];
        if (underlyingIdentifier3)
        {
          underlyingIdentifier4 = [(HKMedicationIdentifier *)v5 underlyingIdentifier];
          underlyingIdentifier5 = [(HKMedicationIdentifier *)self underlyingIdentifier];
          v11 = [underlyingIdentifier4 isEqualToString:underlyingIdentifier5];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = compareCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6 && ([v6 underlyingIdentifier], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    underlyingIdentifier = [(HKMedicationIdentifier *)self underlyingIdentifier];
    v11 = [underlyingIdentifier compare:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (HKMedicationIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HKMedicationIdentifier;
  v5 = [(HKMedicationIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnderlyingIdentifier"];
    underlyingIdentifier = v5->_underlyingIdentifier;
    v5->_underlyingIdentifier = v6;
  }

  return v5;
}

- (void)initWithRawIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationIdentifier.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"rawIdentifier"}];
}

- (void)initWithSemanticIdentifierString:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMedicationIdentifier.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"semanticIdentifierString"}];
}

@end