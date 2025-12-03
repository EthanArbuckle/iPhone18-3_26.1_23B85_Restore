@interface HKReferenceRange
+ (id)referenceRangeWithIdentifier:(id)identifier inspectableValueRange:(id)range;
+ (id)referenceRangeWithIdentifier:(id)identifier maxValue:(id)value;
+ (id)referenceRangeWithIdentifier:(id)identifier minValue:(id)value;
+ (id)referenceRangeWithIdentifier:(id)identifier minValue:(id)value maxValue:(id)maxValue;
- (BOOL)isEqual:(id)equal;
- (HKReferenceRange)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKReferenceRange

+ (id)referenceRangeWithIdentifier:(id)identifier minValue:(id)value maxValue:(id)maxValue
{
  identifierCopy = identifier;
  maxValueCopy = maxValue;
  valueCopy = value;
  v10 = objc_alloc_init(HKReferenceRange);
  referenceRangeIdentifier = v10->_referenceRangeIdentifier;
  v10->_referenceRangeIdentifier = identifierCopy;
  v12 = identifierCopy;

  v13 = [HKInspectableValue inspectableValueWithCodedQuantity:valueCopy];

  v14 = [HKInspectableValue inspectableValueWithCodedQuantity:maxValueCopy];

  v15 = [HKInspectableValueCollection inspectableValueCollectionRangeWithMin:v13 max:v14];
  valueRange = v10->_valueRange;
  v10->_valueRange = v15;

  return v10;
}

+ (id)referenceRangeWithIdentifier:(id)identifier minValue:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v7 = objc_alloc_init(HKReferenceRange);
  referenceRangeIdentifier = v7->_referenceRangeIdentifier;
  v7->_referenceRangeIdentifier = identifierCopy;
  v9 = identifierCopy;

  v10 = [HKInspectableValue inspectableValueWithCodedQuantity:valueCopy];

  v11 = [HKInspectableValueCollection inspectableValueCollectionRangeWithMin:v10];
  valueRange = v7->_valueRange;
  v7->_valueRange = v11;

  return v7;
}

+ (id)referenceRangeWithIdentifier:(id)identifier maxValue:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v7 = objc_alloc_init(HKReferenceRange);
  referenceRangeIdentifier = v7->_referenceRangeIdentifier;
  v7->_referenceRangeIdentifier = identifierCopy;
  v9 = identifierCopy;

  v10 = [HKInspectableValue inspectableValueWithCodedQuantity:valueCopy];

  v11 = [HKInspectableValueCollection inspectableValueCollectionRangeWithMax:v10];
  valueRange = v7->_valueRange;
  v7->_valueRange = v11;

  return v7;
}

+ (id)referenceRangeWithIdentifier:(id)identifier inspectableValueRange:(id)range
{
  identifierCopy = identifier;
  rangeCopy = range;
  v9 = objc_alloc_init(HKReferenceRange);
  if ([(HKInspectableValueCollection *)rangeCopy collectionType]!= 1)
  {
    [HKReferenceRange referenceRangeWithIdentifier:a2 inspectableValueRange:self];
  }

  referenceRangeIdentifier = v9->_referenceRangeIdentifier;
  v9->_referenceRangeIdentifier = identifierCopy;
  v11 = identifierCopy;

  valueRange = v9->_valueRange;
  v9->_valueRange = rangeCopy;

  return v9;
}

- (HKReferenceRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKReferenceRange;
  v5 = [(HKReferenceRange *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceRangeIdentifier"];
    referenceRangeIdentifier = v5->_referenceRangeIdentifier;
    v5->_referenceRangeIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueRange"];
    valueRange = v5->_valueRange;
    v5->_valueRange = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  referenceRangeIdentifier = [(HKReferenceRange *)self referenceRangeIdentifier];
  valueRange = [(HKReferenceRange *)self valueRange];
  v8 = [valueRange min];
  valueRange2 = [(HKReferenceRange *)self valueRange];
  v10 = [valueRange2 max];
  v11 = [v3 stringWithFormat:@"<%@:%p referenceRangeIdentifier = %@, minValue = %@, maxValue = %@>", v5, self, referenceRangeIdentifier, v8, v10, 0];

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
      referenceRangeIdentifier = [(HKReferenceRange *)v5 referenceRangeIdentifier];
      referenceRangeIdentifier2 = [(HKReferenceRange *)self referenceRangeIdentifier];
      v8 = referenceRangeIdentifier2;
      if (referenceRangeIdentifier == referenceRangeIdentifier2)
      {
      }

      else
      {
        referenceRangeIdentifier3 = [(HKReferenceRange *)self referenceRangeIdentifier];
        if (!referenceRangeIdentifier3)
        {
          goto LABEL_14;
        }

        v10 = referenceRangeIdentifier3;
        referenceRangeIdentifier4 = [(HKReferenceRange *)v5 referenceRangeIdentifier];
        referenceRangeIdentifier5 = [(HKReferenceRange *)self referenceRangeIdentifier];
        v13 = [referenceRangeIdentifier4 isEqual:referenceRangeIdentifier5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      referenceRangeIdentifier = [(HKReferenceRange *)v5 valueRange];
      valueRange = [(HKReferenceRange *)self valueRange];
      v8 = valueRange;
      if (referenceRangeIdentifier == valueRange)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      valueRange2 = [(HKReferenceRange *)self valueRange];
      if (valueRange2)
      {
        v17 = valueRange2;
        valueRange3 = [(HKReferenceRange *)v5 valueRange];
        valueRange4 = [(HKReferenceRange *)self valueRange];
        v20 = [valueRange3 isEqual:valueRange4];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = HKReferenceRange;
  v3 = [(HKReferenceRange *)&v9 hash];
  referenceRangeIdentifier = [(HKReferenceRange *)self referenceRangeIdentifier];
  v5 = [referenceRangeIdentifier hash];
  valueRange = [(HKReferenceRange *)self valueRange];
  v7 = v5 ^ [valueRange hash];

  return v7 ^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  referenceRangeIdentifier = self->_referenceRangeIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:referenceRangeIdentifier forKey:@"referenceRangeIdentifier"];
  [coderCopy encodeObject:self->_valueRange forKey:@"valueRange"];
}

+ (void)referenceRangeWithIdentifier:(uint64_t)a1 inspectableValueRange:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKReferenceRange.m" lineNumber:55 description:@"Only range collection should be used to create a reference range"];
}

@end