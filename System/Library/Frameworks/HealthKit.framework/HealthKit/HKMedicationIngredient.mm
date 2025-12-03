@interface HKMedicationIngredient
- (BOOL)isEqual:(id)equal;
- (HKMedicationIngredient)init;
- (HKMedicationIngredient)initWithCoder:(id)coder;
- (HKMedicationIngredient)initWithSubstanceCodingCollection:(id)collection numerator:(id)numerator denominator:(id)denominator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (HKMedicationIngredient)initWithSubstanceCodingCollection:(id)collection numerator:(id)numerator denominator:(id)denominator
{
  collectionCopy = collection;
  numeratorCopy = numerator;
  denominatorCopy = denominator;
  v19.receiver = self;
  v19.super_class = HKMedicationIngredient;
  v11 = [(HKMedicationIngredient *)&v19 init];
  if (v11)
  {
    v12 = [collectionCopy copy];
    substanceCodingCollection = v11->_substanceCodingCollection;
    v11->_substanceCodingCollection = v12;

    v14 = [numeratorCopy copy];
    numerator = v11->_numerator;
    v11->_numerator = v14;

    v16 = [denominatorCopy copy];
    denominator = v11->_denominator;
    v11->_denominator = v16;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      substanceCodingCollection = [(HKMedicationIngredient *)v5 substanceCodingCollection];
      substanceCodingCollection2 = [(HKMedicationIngredient *)self substanceCodingCollection];
      v8 = substanceCodingCollection2;
      if (substanceCodingCollection == substanceCodingCollection2)
      {
      }

      else
      {
        substanceCodingCollection3 = [(HKMedicationIngredient *)self substanceCodingCollection];
        if (!substanceCodingCollection3)
        {
          goto LABEL_19;
        }

        v10 = substanceCodingCollection3;
        substanceCodingCollection4 = [(HKMedicationIngredient *)v5 substanceCodingCollection];
        substanceCodingCollection5 = [(HKMedicationIngredient *)self substanceCodingCollection];
        v13 = [substanceCodingCollection4 isEqual:substanceCodingCollection5];

        if (!v13)
        {
          goto LABEL_20;
        }
      }

      substanceCodingCollection = [(HKMedicationIngredient *)v5 numerator];
      numerator = [(HKMedicationIngredient *)self numerator];
      v8 = numerator;
      if (substanceCodingCollection == numerator)
      {
      }

      else
      {
        numerator2 = [(HKMedicationIngredient *)self numerator];
        if (!numerator2)
        {
          goto LABEL_19;
        }

        v17 = numerator2;
        numerator3 = [(HKMedicationIngredient *)v5 numerator];
        numerator4 = [(HKMedicationIngredient *)self numerator];
        v20 = [numerator3 isEqual:numerator4];

        if (!v20)
        {
          goto LABEL_20;
        }
      }

      substanceCodingCollection = [(HKMedicationIngredient *)v5 denominator];
      denominator = [(HKMedicationIngredient *)self denominator];
      v8 = denominator;
      if (substanceCodingCollection == denominator)
      {

LABEL_24:
        v14 = 1;
        goto LABEL_21;
      }

      denominator2 = [(HKMedicationIngredient *)self denominator];
      if (denominator2)
      {
        v23 = denominator2;
        denominator3 = [(HKMedicationIngredient *)v5 denominator];
        denominator4 = [(HKMedicationIngredient *)self denominator];
        v26 = [denominator3 isEqual:denominator4];

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

- (HKMedicationIngredient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKMedicationIngredient;
  v5 = [(HKMedicationIngredient *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Collection"];
    substanceCodingCollection = v5->_substanceCodingCollection;
    v5->_substanceCodingCollection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Numerator"];
    numerator = v5->_numerator;
    v5->_numerator = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Denominator"];
    denominator = v5->_denominator;
    v5->_denominator = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  substanceCodingCollection = self->_substanceCodingCollection;
  coderCopy = coder;
  [coderCopy encodeObject:substanceCodingCollection forKey:@"Collection"];
  [coderCopy encodeObject:self->_numerator forKey:@"Numerator"];
  [coderCopy encodeObject:self->_denominator forKey:@"Denominator"];
}

@end