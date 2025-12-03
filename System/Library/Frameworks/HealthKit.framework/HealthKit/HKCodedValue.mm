@interface HKCodedValue
+ (id)codedValueWithCodings:(id)codings value:(id)value referenceRanges:(id)ranges;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKCodedValue)init;
- (HKCodedValue)initWithCoder:(id)coder;
- (HKCodedValue)initWithCodings:(id)codings value:(id)value referenceRanges:(id)ranges;
- (HKConcept)ontologyConcept;
- (id)chartableCodedQuantitySetWithDate:(id)date error:(id *)error;
- (id)chartableCodedQuantityWithError:(id *)error;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (unint64_t)hash;
- (void)_setOntologyConcept:(id)concept;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCodedValue

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = @"concept";
  v3 = MEMORY[0x1E695DEC8];
  prefixCopy = prefix;
  v5 = [v3 arrayWithObjects:&v9 count:1];
  v6 = [HKConceptIndexUtilities keyPaths:v5 prefix:prefixCopy, v9, v10];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)codedValueWithCodings:(id)codings value:(id)value referenceRanges:(id)ranges
{
  rangesCopy = ranges;
  valueCopy = value;
  codingsCopy = codings;
  v11 = [[self alloc] initWithCodings:codingsCopy value:valueCopy referenceRanges:rangesCopy];

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

- (HKCodedValue)initWithCodings:(id)codings value:(id)value referenceRanges:(id)ranges
{
  codingsCopy = codings;
  valueCopy = value;
  rangesCopy = ranges;
  if (codingsCopy)
  {
    if (valueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKCodedValue initWithCodings:a2 value:self referenceRanges:?];
    if (valueCopy)
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
    v13 = [codingsCopy copy];
    codings = v12->_codings;
    v12->_codings = v13;

    v15 = [valueCopy copy];
    value = v12->_value;
    v12->_value = v15;

    v17 = [rangesCopy copy];
    referenceRanges = v12->_referenceRanges;
    v12->_referenceRanges = v17;
  }

  return v12;
}

- (void)_setOntologyConcept:(id)concept
{
  conceptCopy = concept;
  v8 = conceptCopy;
  if (!conceptCopy)
  {
    [(HKCodedValue *)a2 _setOntologyConcept:?];
    conceptCopy = 0;
  }

  v6 = [conceptCopy copy];
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

- (id)chartableCodedQuantityWithError:(id *)error
{
  codedQuantityValue = [(HKInspectableValue *)self->_value codedQuantityValue];
  if (codedQuantityValue)
  {
    firstObject = [(NSArray *)self->_referenceRanges firstObject];
    codings = self->_codings;
    valueRange = [firstObject valueRange];
    v9 = [valueRange min];
    codedQuantityValue2 = [v9 codedQuantityValue];
    valueRange2 = [firstObject valueRange];
    v12 = [valueRange2 max];
    codedQuantityValue3 = [v12 codedQuantityValue];
    v14 = [HKChartableCodedQuantity chartableCodedQuantityWithCodings:codings originalCodedQuantity:codedQuantityValue originalRangeLowCodedQuantity:codedQuantityValue2 originalRangeHighCodedQuantity:codedQuantityValue3 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)chartableCodedQuantitySetWithDate:(id)date error:(id *)error
{
  dateCopy = date;
  codedQuantityValue = [(HKInspectableValue *)self->_value codedQuantityValue];

  if (codedQuantityValue)
  {
    v8 = [(HKCodedValue *)self chartableCodedQuantityWithError:error];
    if (v8)
    {
      v9 = [HKChartableCodedQuantitySet setWithChartableQuantity:v8 date:dateCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    codedValueCollection = [(HKInspectableValue *)self->_value codedValueCollection];

    if (codedValueCollection)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy_;
      v26 = __Block_byref_object_dispose_;
      v27 = 0;
      codedValueCollection2 = [(HKInspectableValue *)self->_value codedValueCollection];
      codedValues = [codedValueCollection2 codedValues];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __56__HKCodedValue_chartableCodedQuantitySetWithDate_error___block_invoke;
      v21[3] = &unk_1E7376B90;
      v21[4] = &v22;
      v13 = [codedValues hk_map:v21];

      v14 = v23[5];
      if (v14)
      {
        v15 = v14;
        v16 = v15;
        if (error)
        {
          v17 = v15;
          *error = v16;
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
        v9 = [HKChartableCodedQuantitySet setWithMedicalCodings:codings quantities:v13 date:dateCopy error:&v20];
      }

      _Block_object_dispose(&v22, 8);
    }

    else
    {
      [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"Unable to create chartable quantity set from coded value %@", self}];
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

- (HKCodedValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HKCodedValue;
  v5 = [(HKCodedValue *)&v18 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"Codings"];
    codings = v5->_codings;
    v5->_codings = v7;

    if (!v5->_codings)
    {
      v16 = 0;
      goto LABEL_6;
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ontologyConcept"];
    ontologyConcept = v5->_ontologyConcept;
    v5->_ontologyConcept = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Value"];
    value = v5->_value;
    v5->_value = v11;

    v13 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ReferenceRanges"];
    referenceRanges = v5->_referenceRanges;
    v5->_referenceRanges = v14;
  }

  v16 = v5;
LABEL_6:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  codings = self->_codings;
  coderCopy = coder;
  [coderCopy encodeObject:codings forKey:@"Codings"];
  [coderCopy encodeObject:self->_ontologyConcept forKey:@"ontologyConcept"];
  [coderCopy encodeObject:self->_value forKey:@"Value"];
  [coderCopy encodeObject:self->_referenceRanges forKey:@"ReferenceRanges"];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_codings hash];
  v4 = [(HKConcept *)self->_ontologyConcept hash]^ v3;
  v5 = [(HKInspectableValue *)self->_value hash];
  return v4 ^ v5 ^ [(NSArray *)self->_referenceRanges hash];
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

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy isEqualToString:@"concept"])
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
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [pathCopy isEqualToString:@"concept"];
  if (v10)
  {
    v11 = HKIndexableObjectCheckCardinalityForIndexRestore([conceptsCopy count], self->_codings != 0, pathCopy, error);

    if (!v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_7;
    }

    pathCopy = [conceptsCopy firstObject];
    object = [pathCopy object];
    v13 = [object copy];
    ontologyConcept = self->_ontologyConcept;
    self->_ontologyConcept = v13;
  }

  else
  {
    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
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