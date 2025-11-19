@interface HKMedicationComponent
- (BOOL)isEqual:(id)a3;
- (HKMedicationComponent)init;
- (HKMedicationComponent)initWithCoder:(id)a3;
- (HKMedicationComponent)initWithComponentForm:(int64_t)a3 ingredients:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationComponent

- (HKMedicationComponent)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicationComponent)initWithComponentForm:(int64_t)a3 ingredients:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKMedicationComponent;
  v7 = [(HKMedicationComponent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_componentForm = a3;
    v9 = [v6 copy];
    ingredients = v8->_ingredients;
    v8->_ingredients = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKMedicationComponent *)v5 componentForm];
      if (v6 == [(HKMedicationComponent *)self componentForm])
      {
        v7 = [(HKMedicationComponent *)v5 ingredients];
        v8 = [(HKMedicationComponent *)self ingredients];
        v9 = v8;
        if (v7 == v8)
        {

          goto LABEL_11;
        }

        v10 = [(HKMedicationComponent *)self ingredients];
        if (v10)
        {
          v11 = v10;
          v12 = [(HKMedicationComponent *)v5 ingredients];
          v13 = [(HKMedicationComponent *)self ingredients];
          v14 = [v12 isEqualToSet:v13];

          if ((v14 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_11:
          v15 = 1;
LABEL_14:

          goto LABEL_15;
        }
      }

LABEL_13:
      v15 = 0;
      goto LABEL_14;
    }

    v15 = 0;
  }

LABEL_15:

  return v15;
}

- (HKMedicationComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKMedicationComponent;
  v5 = [(HKMedicationComponent *)&v10 init];
  if (v5)
  {
    v5->_componentForm = [v4 decodeIntegerForKey:@"Form"];
    v6 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"Ingredients"];
    ingredients = v5->_ingredients;
    v5->_ingredients = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  componentForm = self->_componentForm;
  v5 = a3;
  [v5 encodeInteger:componentForm forKey:@"Form"];
  [v5 encodeObject:self->_ingredients forKey:@"Ingredients"];
}

@end