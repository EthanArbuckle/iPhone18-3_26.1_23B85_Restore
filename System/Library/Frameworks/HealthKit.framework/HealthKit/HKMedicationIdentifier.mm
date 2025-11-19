@interface HKMedicationIdentifier
- (BOOL)isEqual:(id)a3;
- (HKMedicationIdentifier)init;
- (HKMedicationIdentifier)initWithCoder:(id)a3;
- (HKMedicationIdentifier)initWithRawIdentifier:(id)a3;
- (HKMedicationIdentifier)initWithSemanticIdentifierString:(id)a3;
- (int64_t)compare:(id)a3;
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

- (HKMedicationIdentifier)initWithRawIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKMedicationIdentifier *)a2 initWithRawIdentifier:?];
  }

  v10.receiver = self;
  v10.super_class = HKMedicationIdentifier;
  v6 = [(HKMedicationIdentifier *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    underlyingIdentifier = v6->_underlyingIdentifier;
    v6->_underlyingIdentifier = v7;
  }

  return v6;
}

- (HKMedicationIdentifier)initWithSemanticIdentifierString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKMedicationIdentifier *)a2 initWithSemanticIdentifierString:?];
  }

  v6 = [v5 hk_SHA256Hash];
  v7 = [(HKMedicationIdentifier *)self initWithRawIdentifier:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicationIdentifier *)v5 underlyingIdentifier];
      v7 = [(HKMedicationIdentifier *)self underlyingIdentifier];
      if (v6 == v7)
      {
        v11 = 1;
      }

      else
      {
        v8 = [(HKMedicationIdentifier *)self underlyingIdentifier];
        if (v8)
        {
          v9 = [(HKMedicationIdentifier *)v5 underlyingIdentifier];
          v10 = [(HKMedicationIdentifier *)self underlyingIdentifier];
          v11 = [v9 isEqualToString:v10];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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
    v10 = [(HKMedicationIdentifier *)self underlyingIdentifier];
    v11 = [v10 compare:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (HKMedicationIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMedicationIdentifier;
  v5 = [(HKMedicationIdentifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnderlyingIdentifier"];
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