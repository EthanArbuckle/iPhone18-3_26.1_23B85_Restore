@interface HKMedicationComponent
- (BOOL)isEqual:(id)equal;
- (HKMedicationComponent)init;
- (HKMedicationComponent)initWithCoder:(id)coder;
- (HKMedicationComponent)initWithComponentForm:(int64_t)form ingredients:(id)ingredients;
- (void)encodeWithCoder:(id)coder;
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

- (HKMedicationComponent)initWithComponentForm:(int64_t)form ingredients:(id)ingredients
{
  ingredientsCopy = ingredients;
  v12.receiver = self;
  v12.super_class = HKMedicationComponent;
  v7 = [(HKMedicationComponent *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_componentForm = form;
    v9 = [ingredientsCopy copy];
    ingredients = v8->_ingredients;
    v8->_ingredients = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      componentForm = [(HKMedicationComponent *)v5 componentForm];
      if (componentForm == [(HKMedicationComponent *)self componentForm])
      {
        ingredients = [(HKMedicationComponent *)v5 ingredients];
        ingredients2 = [(HKMedicationComponent *)self ingredients];
        v9 = ingredients2;
        if (ingredients == ingredients2)
        {

          goto LABEL_11;
        }

        ingredients3 = [(HKMedicationComponent *)self ingredients];
        if (ingredients3)
        {
          v11 = ingredients3;
          ingredients4 = [(HKMedicationComponent *)v5 ingredients];
          ingredients5 = [(HKMedicationComponent *)self ingredients];
          v14 = [ingredients4 isEqualToSet:ingredients5];

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

- (HKMedicationComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKMedicationComponent;
  v5 = [(HKMedicationComponent *)&v10 init];
  if (v5)
  {
    v5->_componentForm = [coderCopy decodeIntegerForKey:@"Form"];
    v6 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"Ingredients"];
    ingredients = v5->_ingredients;
    v5->_ingredients = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  componentForm = self->_componentForm;
  coderCopy = coder;
  [coderCopy encodeInteger:componentForm forKey:@"Form"];
  [coderCopy encodeObject:self->_ingredients forKey:@"Ingredients"];
}

@end