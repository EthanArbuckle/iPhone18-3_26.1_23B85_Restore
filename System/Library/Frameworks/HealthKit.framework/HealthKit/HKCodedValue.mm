@interface HKCodedValue
+ (id)codedValueWithCodings:(id)a3 value:(id)a4 referenceRanges:(id)a5;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKCodedValue)init;
- (HKCodedValue)initWithCoder:(id)a3;
- (HKCodedValue)initWithCodings:(id)a3 value:(id)a4 referenceRanges:(id)a5;
- (HKConcept)ontologyConcept;
- (id)chartableCodedQuantitySetWithDate:(id)a3 error:(id *)a4;
- (id)chartableCodedQuantityWithError:(id *)a3;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)_setOntologyConcept:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCodedValue

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = @"concept";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:v4, v9, v10];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)codedValueWithCodings:(id)a3 value:(id)a4 referenceRanges:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithCodings:v10 value:v9 referenceRanges:v8];

  return v11;
}

- (HKCodedValue)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKCodedValue)initWithCodings:(id)a3 value:(id)a4 referenceRanges:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKCodedValue initWithCodings:a2 value:self referenceRanges:?];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [HKCodedValue initWithCodings:a2 value:self referenceRanges:?];
LABEL_3:
  v20.receiver = self;
  v20.super_class = HKCodedValue;
  v12 = [(HKCodedValue *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    codings = v12->_codings;
    v12->_codings = v13;

    v15 = [v10 copy];
    value = v12->_value;
    v12->_value = v15;

    v17 = [v11 copy];
    referenceRanges = v12->_referenceRanges;
    v12->_referenceRanges = v17;
  }

  return v12;
}

- (void)_setOntologyConcept:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    [(HKCodedValue *)a2 _setOntologyConcept:?];
    v5 = 0;
  }

  v6 = [v5 copy];
  ontologyConcept = self->_ontologyConcept;
  self->_ontologyConcept = v6;
}

- (HKConcept)ontologyConcept
{
  ontologyConcept = self->_ontologyConcept;
  v3 = [HKMedicalCodingCollection collectionWithCodings:self->_codings];
  v4 = HKSafeConcept(ontologyConcept, v3);

  return v4;
}

- (id)chartableCodedQuantityWithError:(id *)a3
{
  v5 = [(HKInspectableValue *)self->_value codedQuantityValue];
  if (v5)
  {
    v6 = [(NSArray *)self->_referenceRanges firstObject];
    codings = self->_codings;
    v8 = [v6 valueRange];
    v9 = [v8 min];
    v10 = [v9 codedQuantityValue];
    v11 = [v6 valueRange];
    v12 = [v11 max];
    v13 = [v12 codedQuantityValue];
    v14 = [HKChartableCodedQuantity chartableCodedQuantityWithCodings:codings originalCodedQuantity:v5 originalRangeLowCodedQuantity:v10 originalRangeHighCodedQuantity:v13 error:a3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)chartableCodedQuantitySetWithDate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKInspectableValue *)self->_value codedQuantityValue];

  if (v7)
  {
    v8 = [(HKCodedValue *)self chartableCodedQuantityWithError:a4];
    if (v8)
    {
      v9 = [HKChartableCodedQuantitySet setWithChartableQuantity:v8 date:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [(HKInspectableValue *)self->_value codedValueCollection];

    if (v10)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy_;
      v26 = __Block_byref_object_dispose_;
      v27 = 0;
      v11 = [(HKInspectableValue *)self->_value codedValueCollection];
      v12 = [v11 codedValues];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __56__HKCodedValue_chartableCodedQuantitySetWithDate_error___block_invoke;
      v21[3] = &unk_1E7376B90;
      v21[4] = &v22;
      v13 = [v12 hk_map:v21];

      v14 = v23[5];
      if (v14)
      {
        v15 = v14;
        v16 = v15;
        if (a4)
        {
          v17 = v15;
          *a4 = v16;
        }

        else
        {
          _HKLogDroppedError(v15);
        }

        v9 = 0;
      }

      else
      {
        codings = self->_codings;
        v20 = 0;
        v9 = [HKChartableCodedQuantitySet setWithMedicalCodings:codings quantities:v13 date:v6 error:&v20];
      }

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      [MEMORY[0x1E696ABC0] hk_assignError:a4 code:3 format:{@"Unable to create chartable quantity set from coded value %@", self}];
      v9 = 0;
    }
  }

  return v9;
}

id __56__HKCodedValue_chartableCodedQuantitySetWithDate_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  obj = *(v2 + 40);
  v3 = [a2 chartableCodedQuantityWithError:&obj];
  objc_storeStrong((v2 + 40), obj);

  return v3;
}

- (HKCodedValue)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HKCodedValue;
  v5 = [(HKCodedValue *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"Codings"];
    codings = v5->_codings;
    v5->_codings = v7;

    if (!v5->_codings)
    {
      v16 = 0;
      goto LABEL_6;
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ontologyConcept"];
    ontologyConcept = v5->_ontologyConcept;
    v5->_ontologyConcept = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"ReferenceRanges"];
    referenceRanges = v5->_referenceRanges;
    v5->_referenceRanges = v14;
  }

  v16 = v5;
LABEL_6:

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  codings = self->_codings;
  v5 = a3;
  [v5 encodeObject:codings forKey:@"Codings"];
  [v5 encodeObject:self->_ontologyConcept forKey:@"ontologyConcept"];
  [v5 encodeObject:self->_value forKey:@"Value"];
  [v5 encodeObject:self->_referenceRanges forKey:@"ReferenceRanges"];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_codings hash];
  v4 = [(HKConcept *)self->_ontologyConcept hash]^ v3;
  v5 = [(HKInspectableValue *)self->_value hash];
  return v4 ^ v5 ^ [(NSArray *)self->_referenceRanges hash];
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
      codings = self->_codings;
      v7 = v5->_codings;
      v14 = 0;
      if (codings == v7 || v7 && [(NSArray *)codings isEqual:?])
      {
        ontologyConcept = self->_ontologyConcept;
        v9 = v5->_ontologyConcept;
        if (ontologyConcept == v9 || v9 && [(HKConcept *)ontologyConcept isEqual:?])
        {
          value = self->_value;
          v11 = v5->_value;
          if (value == v11 || v11 && [(HKInspectableValue *)value isEqual:?])
          {
            referenceRanges = self->_referenceRanges;
            v13 = v5->_referenceRanges;
            if (referenceRanges == v13 || v13 && [(NSArray *)referenceRanges isEqual:?])
            {
              v14 = 1;
            }
          }
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 isEqualToString:@"concept"])
  {
    if (self->_codings)
    {
      v7 = [HKMedicalCodingCollection collectionWithCodings:?];
      v8 = [HKIndexableObject indexableObjectWithObject:v7];
      v12[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v9 isEqualToString:@"concept"];
  if (v10)
  {
    v11 = HKIndexableObjectCheckCardinalityForIndexRestore([v8 count], self->_codings != 0, v9, a5);

    if (!v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_7;
    }

    v9 = [v8 firstObject];
    v12 = [v9 object];
    v13 = [v12 copy];
    ontologyConcept = self->_ontologyConcept;
    self->_ontologyConcept = v13;
  }

  else
  {
    [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v9 inClass:objc_opt_class()];
  }

LABEL_7:
  return v10;
}

- (void)initWithCodings:(uint64_t)a1 value:(uint64_t)a2 referenceRanges:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCodedValue.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"codings"}];
}

- (void)initWithCodings:(uint64_t)a1 value:(uint64_t)a2 referenceRanges:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCodedValue.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"value"}];
}

- (void)_setOntologyConcept:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCodedValue.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"ontologyConcept"}];
}

@end