@interface HKMedicationIngredient
- (BOOL)isEqual:(id)a3;
- (HKMedicationIngredient)init;
- (HKMedicationIngredient)initWithCoder:(id)a3;
- (HKMedicationIngredient)initWithSubstanceCodingCollection:(id)a3 numerator:(id)a4 denominator:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationIngredient

- (HKMedicationIngredient)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationIngredient)initWithSubstanceCodingCollection:(id)a3 numerator:(id)a4 denominator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKMedicationIngredient;
  v11 = [(HKMedicationIngredient *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    substanceCodingCollection = v11->_substanceCodingCollection;
    v11->_substanceCodingCollection = v12;

    v14 = [v9 copy];
    numerator = v11->_numerator;
    v11->_numerator = v14;

    v16 = [v10 copy];
    denominator = v11->_denominator;
    v11->_denominator = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicationIngredient *)v5 substanceCodingCollection];
      v7 = [(HKMedicationIngredient *)self substanceCodingCollection];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKMedicationIngredient *)self substanceCodingCollection];
        if (!v9)
        {
          goto LABEL_19;
        }

        v10 = v9;
        v11 = [(HKMedicationIngredient *)v5 substanceCodingCollection];
        v12 = [(HKMedicationIngredient *)self substanceCodingCollection];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKMedicationIngredient *)v5 numerator];
      v15 = [(HKMedicationIngredient *)self numerator];
      v8 = v15;
      if (v6 == v15)
      {
      }

      else
      {
        v16 = [(HKMedicationIngredient *)self numerator];
        if (!v16)
        {
          goto LABEL_19;
        }

        v17 = v16;
        v18 = [(HKMedicationIngredient *)v5 numerator];
        v19 = [(HKMedicationIngredient *)self numerator];
        v20 = [v18 isEqual:v19];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      v6 = [(HKMedicationIngredient *)v5 denominator];
      v21 = [(HKMedicationIngredient *)self denominator];
      v8 = v21;
      if (v6 == v21)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      v22 = [(HKMedicationIngredient *)self denominator];
      if (v22)
      {
        v23 = v22;
        v24 = [(HKMedicationIngredient *)v5 denominator];
        v25 = [(HKMedicationIngredient *)self denominator];
        v26 = [v24 isEqual:v25];

        if (v26)
        {
          goto LABEL_24;
        }

LABEL_20:
        v14 = 0;
LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v14 = 0;
  }

LABEL_22:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(HKClinicalCodingCollection *)self->_substanceCodingCollection hash];
  v4 = [(HKQuantity *)self->_numerator hash]^ v3;
  return v4 ^ [(HKQuantity *)self->_denominator hash];
}

- (HKMedicationIngredient)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKMedicationIngredient;
  v5 = [(HKMedicationIngredient *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Collection"];
    substanceCodingCollection = v5->_substanceCodingCollection;
    v5->_substanceCodingCollection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Numerator"];
    numerator = v5->_numerator;
    v5->_numerator = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Denominator"];
    denominator = v5->_denominator;
    v5->_denominator = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  substanceCodingCollection = self->_substanceCodingCollection;
  v5 = a3;
  [v5 encodeObject:substanceCodingCollection forKey:@"Collection"];
  [v5 encodeObject:self->_numerator forKey:@"Numerator"];
  [v5 encodeObject:self->_denominator forKey:@"Denominator"];
}

@end