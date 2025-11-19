@interface HKReferenceRange
+ (id)referenceRangeWithIdentifier:(id)a3 inspectableValueRange:(id)a4;
+ (id)referenceRangeWithIdentifier:(id)a3 maxValue:(id)a4;
+ (id)referenceRangeWithIdentifier:(id)a3 minValue:(id)a4;
+ (id)referenceRangeWithIdentifier:(id)a3 minValue:(id)a4 maxValue:(id)a5;
- (BOOL)isEqual:(id)a3;
- (HKReferenceRange)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKReferenceRange

+ (id)referenceRangeWithIdentifier:(id)a3 minValue:(id)a4 maxValue:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = objc_alloc_init(HKReferenceRange);
  referenceRangeIdentifier = v10->_referenceRangeIdentifier;
  v10->_referenceRangeIdentifier = v7;
  v12 = v7;

  v13 = [HKInspectableValue inspectableValueWithCodedQuantity:v9];

  v14 = [HKInspectableValue inspectableValueWithCodedQuantity:v8];

  v15 = [HKInspectableValueCollection inspectableValueCollectionRangeWithMin:v13 max:v14];
  valueRange = v10->_valueRange;
  v10->_valueRange = v15;

  return v10;
}

+ (id)referenceRangeWithIdentifier:(id)a3 minValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(HKReferenceRange);
  referenceRangeIdentifier = v7->_referenceRangeIdentifier;
  v7->_referenceRangeIdentifier = v5;
  v9 = v5;

  v10 = [HKInspectableValue inspectableValueWithCodedQuantity:v6];

  v11 = [HKInspectableValueCollection inspectableValueCollectionRangeWithMin:v10];
  valueRange = v7->_valueRange;
  v7->_valueRange = v11;

  return v7;
}

+ (id)referenceRangeWithIdentifier:(id)a3 maxValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(HKReferenceRange);
  referenceRangeIdentifier = v7->_referenceRangeIdentifier;
  v7->_referenceRangeIdentifier = v5;
  v9 = v5;

  v10 = [HKInspectableValue inspectableValueWithCodedQuantity:v6];

  v11 = [HKInspectableValueCollection inspectableValueCollectionRangeWithMax:v10];
  valueRange = v7->_valueRange;
  v7->_valueRange = v11;

  return v7;
}

+ (id)referenceRangeWithIdentifier:(id)a3 inspectableValueRange:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(HKReferenceRange);
  if ([(HKInspectableValueCollection *)v8 collectionType]!= 1)
  {
    [HKReferenceRange referenceRangeWithIdentifier:a2 inspectableValueRange:a1];
  }

  referenceRangeIdentifier = v9->_referenceRangeIdentifier;
  v9->_referenceRangeIdentifier = v7;
  v11 = v7;

  valueRange = v9->_valueRange;
  v9->_valueRange = v8;

  return v9;
}

- (HKReferenceRange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKReferenceRange;
  v5 = [(HKReferenceRange *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceRangeIdentifier"];
    referenceRangeIdentifier = v5->_referenceRangeIdentifier;
    v5->_referenceRangeIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueRange"];
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
  v6 = [(HKReferenceRange *)self referenceRangeIdentifier];
  v7 = [(HKReferenceRange *)self valueRange];
  v8 = [v7 min];
  v9 = [(HKReferenceRange *)self valueRange];
  v10 = [v9 max];
  v11 = [v3 stringWithFormat:@"<%@:%p referenceRangeIdentifier = %@, minValue = %@, maxValue = %@>", v5, self, v6, v8, v10, 0];

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
      v6 = [(HKReferenceRange *)v5 referenceRangeIdentifier];
      v7 = [(HKReferenceRange *)self referenceRangeIdentifier];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKReferenceRange *)self referenceRangeIdentifier];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [(HKReferenceRange *)v5 referenceRangeIdentifier];
        v12 = [(HKReferenceRange *)self referenceRangeIdentifier];
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v6 = [(HKReferenceRange *)v5 valueRange];
      v15 = [(HKReferenceRange *)self valueRange];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v16 = [(HKReferenceRange *)self valueRange];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKReferenceRange *)v5 valueRange];
        v19 = [(HKReferenceRange *)self valueRange];
        v20 = [v18 isEqual:v19];

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
  v4 = [(HKReferenceRange *)self referenceRangeIdentifier];
  v5 = [v4 hash];
  v6 = [(HKReferenceRange *)self valueRange];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

- (void)encodeWithCoder:(id)a3
{
  referenceRangeIdentifier = self->_referenceRangeIdentifier;
  v5 = a3;
  [v5 encodeObject:referenceRangeIdentifier forKey:@"referenceRangeIdentifier"];
  [v5 encodeObject:self->_valueRange forKey:@"valueRange"];
}

+ (void)referenceRangeWithIdentifier:(uint64_t)a1 inspectableValueRange:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKReferenceRange.m" lineNumber:55 description:@"Only range collection should be used to create a reference range"];
}

@end