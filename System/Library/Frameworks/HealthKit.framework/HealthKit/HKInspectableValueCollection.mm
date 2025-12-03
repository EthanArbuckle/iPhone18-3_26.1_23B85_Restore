@interface HKInspectableValueCollection
+ (BOOL)hasNoValue:(id)value;
+ (id)_unitStringForValue:(id)value;
+ (id)_unitStringForValueCollection:(id)collection;
+ (id)indexableKeyPathsWithPrefix:(id)prefix;
+ (id)inspectableValueCollectionListWithValues:(id)values;
+ (id)inspectableValueCollectionRangeWithMax:(id)max;
+ (id)inspectableValueCollectionRangeWithMin:(id)min;
+ (id)inspectableValueCollectionRangeWithMin:(id)min max:(id)max;
+ (id)inspectableValueCollectionSingleWithValue:(id)value;
+ (id)inspectableValueCollectionTaggedListWithValues:(id)values tags:(id)tags;
- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (HKInspectableValue)inspectableValue;
- (HKInspectableValue)max;
- (HKInspectableValue)min;
- (HKInspectableValueCollection)init;
- (HKInspectableValueCollection)initWithCoder:(id)coder;
- (NSArray)inspectableValues;
- (NSString)unitString;
- (id)_initWithCollectionType:(int64_t)type collection:(id)collection tags:(id)tags;
- (id)codingsForKeyPath:(id)path error:(id *)error;
- (id)valueInRangeWithReferenceRanges:(id)ranges includeUnitString:(BOOL)string allowsNullRange:(BOOL)range;
- (id)valuesWithTag:(id)tag;
- (int64_t)referenceRangeStatusWithRanges:(id)ranges;
- (unint64_t)hash;
- (void)_assertCollectionType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKInspectableValueCollection

+ (id)indexableKeyPathsWithPrefix:(id)prefix
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"inspectableValue";
  v11[1] = @"min";
  v11[2] = @"max";
  v11[3] = @"inspectableValues";
  v3 = MEMORY[0x1E695DEC8];
  prefixCopy = prefix;
  v5 = [v3 arrayWithObjects:v11 count:4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 hk_foldRightFrom:v6 with:&__block_literal_global_111];

  v8 = [HKConceptIndexUtilities keyPaths:v7 prefix:prefixCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __60__HKInspectableValueCollection_indexableKeyPathsWithPrefix___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HKInspectableValue indexableKeyPathsWithPrefix:a3];
  if (v5)
  {
    v6 = [v4 arrayByAddingObjectsFromArray:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (HKInspectableValueCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)inspectableValueCollectionSingleWithValue:(id)value
{
  v10[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  v5 = [self alloc];
  v10[0] = valueCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [v5 _initWithCollectionType:0 collection:v6];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)inspectableValueCollectionRangeWithMin:(id)min max:(id)max
{
  v13[2] = *MEMORY[0x1E69E9840];
  maxCopy = max;
  minCopy = min;
  v8 = [self alloc];
  v13[0] = minCopy;
  v13[1] = maxCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v10 = [v8 _initWithCollectionType:1 collection:v9];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)inspectableValueCollectionRangeWithMin:(id)min
{
  v11[2] = *MEMORY[0x1E69E9840];
  minCopy = min;
  v5 = [self alloc];
  v11[0] = minCopy;
  v6 = +[HKInspectableValue inspectableValueWithNull];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v8 = [v5 _initWithCollectionType:1 collection:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)inspectableValueCollectionRangeWithMax:(id)max
{
  v11[2] = *MEMORY[0x1E69E9840];
  maxCopy = max;
  v5 = [self alloc];
  v6 = +[HKInspectableValue inspectableValueWithNull];
  v11[0] = v6;
  v11[1] = maxCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v8 = [v5 _initWithCollectionType:1 collection:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)inspectableValueCollectionListWithValues:(id)values
{
  valuesCopy = values;
  v5 = [[self alloc] _initWithCollectionType:2 collection:valuesCopy];

  return v5;
}

+ (id)inspectableValueCollectionTaggedListWithValues:(id)values tags:(id)tags
{
  tagsCopy = tags;
  valuesCopy = values;
  v8 = [[self alloc] _initWithCollectionType:3 collection:valuesCopy tags:tagsCopy];

  return v8;
}

+ (BOOL)hasNoValue:(id)value
{
  valueCopy = value;
  v4 = valueCopy;
  if (valueCopy)
  {
    if ([valueCopy collectionType])
    {
      v5 = 0;
    }

    else
    {
      inspectableValue = [v4 inspectableValue];
      v5 = [inspectableValue valueType] == 5;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_initWithCollectionType:(int64_t)type collection:(id)collection tags:(id)tags
{
  collectionCopy = collection;
  tagsCopy = tags;
  v14.receiver = self;
  v14.super_class = HKInspectableValueCollection;
  v11 = [(HKInspectableValueCollection *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_collectionType = type;
    objc_storeStrong(&v11->_collection, collection);
    objc_storeStrong(p_isa + 3, tags);
    [p_isa _assertCollectionType];
  }

  return p_isa;
}

- (HKInspectableValue)inspectableValue
{
  if (self->_collectionType)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_collection objectAtIndexedSubscript:0, v2];
  }

  return v4;
}

- (HKInspectableValue)min
{
  if (self->_collectionType == 1)
  {
    v4 = [(NSArray *)self->_collection objectAtIndexedSubscript:0, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HKInspectableValue)max
{
  if (self->_collectionType == 1)
  {
    v4 = [(NSArray *)self->_collection objectAtIndexedSubscript:1, v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)inspectableValues
{
  if (self->_collectionType == 2)
  {
    v3 = self->_collection;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)valueInRangeWithReferenceRanges:(id)ranges includeUnitString:(BOOL)string allowsNullRange:(BOOL)range
{
  stringCopy = string;
  rangesCopy = ranges;
  if ([(HKInspectableValueCollection *)self collectionType])
  {
    goto LABEL_2;
  }

  inspectableValue = [(HKInspectableValueCollection *)self inspectableValue];
  valueType = [inspectableValue valueType];

  v9 = 0;
  v10 = 0;
  if (rangesCopy && valueType)
  {
    if ([rangesCopy count] != 1)
    {
LABEL_2:
      v9 = 0;
      v10 = 0;
      goto LABEL_3;
    }

    firstObject = [rangesCopy firstObject];
    valueRange = [firstObject valueRange];
    v18 = valueRange;
    if (valueRange && [valueRange collectionType] == 1)
    {
      v10 = [v18 min];
      if (v10)
      {
        v19 = [v18 min];
        valueType2 = [v19 valueType];

        if (valueType2)
        {
          v10 = [v18 min];
        }

        else
        {
          v10 = 0;
        }
      }

      v9 = [v18 max];
      if (v9)
      {
        v21 = [v18 max];
        valueType3 = [v21 valueType];

        if (valueType3)
        {
          v9 = [v18 max];
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

LABEL_3:
  if (stringCopy)
  {
    v11 = [objc_opt_class() _unitStringForValueCollection:self];
    if (range)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    if (range)
    {
      goto LABEL_10;
    }
  }

  if (!v10 && !v9)
  {
    v12 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v12 = [HKInspectableValueInRange valueInRangeWithLow:v10 high:v9 currentValue:self unit:v11];
LABEL_11:

  return v12;
}

- (int64_t)referenceRangeStatusWithRanges:(id)ranges
{
  v3 = [(HKInspectableValueCollection *)self valueInRangeWithReferenceRanges:ranges includeUnitString:0];
  v4 = v3;
  if (v3 && (v5 = [v3 currentValueRelation], v5 <= 2))
  {
    v6 = qword_191DCDF68[v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)unitString
{
  collectionType = self->_collectionType;
  if ((collectionType - 2) >= 2)
  {
    if (!collectionType)
    {
      inspectableValue = [(HKInspectableValueCollection *)self inspectableValue];
      unitString = [inspectableValue unitString];
      goto LABEL_6;
    }
  }

  else
  {
    inspectableValues = [(HKInspectableValueCollection *)self inspectableValues];
    v5 = [inspectableValues count];

    if (v5)
    {
      inspectableValue = [(HKInspectableValueCollection *)self inspectableValues];
      firstObject = [inspectableValue firstObject];
      unitString = [firstObject unitString];

LABEL_6:
      goto LABEL_8;
    }
  }

  unitString = &stru_1F05FF230;
LABEL_8:

  return unitString;
}

+ (id)_unitStringForValueCollection:(id)collection
{
  collectionCopy = collection;
  collectionType = [collectionCopy collectionType];
  if ((collectionType - 2) >= 2)
  {
    if (!collectionType)
    {
      v11 = objc_opt_class();
      inspectableValue = [collectionCopy inspectableValue];
      v10 = [v11 _unitStringForValue:inspectableValue];
      goto LABEL_6;
    }
  }

  else
  {
    inspectableValues = [collectionCopy inspectableValues];
    v6 = [inspectableValues count];

    if (v6)
    {
      v7 = objc_opt_class();
      inspectableValue = [collectionCopy inspectableValues];
      firstObject = [inspectableValue firstObject];
      v10 = [v7 _unitStringForValue:firstObject];

LABEL_6:
      goto LABEL_8;
    }
  }

  v10 = &stru_1F05FF230;
LABEL_8:

  return v10;
}

+ (id)_unitStringForValue:(id)value
{
  valueCopy = value;
  valueType = [valueCopy valueType];
  if (valueType == 8 || valueType == 6)
  {
    unitString = [valueCopy unitString];
  }

  else if (valueType == 1)
  {
    ratioValue = [valueCopy ratioValue];
    numerator = [ratioValue numerator];
    unitCoding = [numerator unitCoding];

    code = [unitCoding code];
    v11 = code;
    if (code)
    {
      displayString = code;
    }

    else
    {
      displayString = [unitCoding displayString];
    }

    unitString = displayString;
  }

  else
  {
    unitString = &stru_1F05FF230;
  }

  if ([(__CFString *)unitString length])
  {
    v13 = +[HKUCUMUnitDisplayConverter sharedConverter];
    v14 = [v13 synonymForUCUMUnitString:unitString];

    unitString = v14;
  }

  return unitString;
}

- (id)valuesWithTag:(id)tag
{
  tagCopy = tag;
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_elementTags count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_elementTags objectAtIndexedSubscript:v6];
      v8 = [v7 isEqual:tagCopy];

      if (v8)
      {
        v9 = [(NSArray *)self->_collection objectAtIndexedSubscript:v6];
        [array addObject:v9];
      }

      ++v6;
    }

    while (v6 < [(NSArray *)self->_elementTags count]);
  }

  v10 = [array copy];

  return v10;
}

- (void)_assertCollectionType
{
  collectionType = self->_collectionType;
  if (collectionType == 3)
  {
    v4 = [(NSArray *)self->_collection count];
    if (v4 != [(NSArray *)self->_elementTags count])
    {
      [MEMORY[0x1E695DF30] raise:@"HKInconsistentInspectableCollectionTypeException" format:{@"Tagged collection requires the same number of element and tags, number of tags:%lu, number of elements: %lu", -[NSArray count](self->_elementTags, "count"), -[NSArray count](self->_collection, "count")}];
    }
  }

  else if (collectionType == 1)
  {
    if ([(NSArray *)self->_collection count]!= 2)
    {
      [MEMORY[0x1E695DF30] raise:@"HKInconsistentInspectableCollectionTypeException" format:{@"Inconsistent number of values found in collection, expect two values, have %lu values", -[NSArray count](self->_collection, "count"), v5}];
    }
  }

  else if (!collectionType && [(NSArray *)self->_collection count]!= 1)
  {
    [MEMORY[0x1E695DF30] raise:@"HKInconsistentInspectableCollectionTypeException" format:{@"Inconsistent number of values found in collection, expect single value, have %lu values", -[NSArray count](self->_collection, "count"), v5}];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      collectionType = self->_collectionType;
      if (collectionType == [(HKInspectableValueCollection *)v5 collectionType])
      {
        collection = self->_collection;
        collection = [(HKInspectableValueCollection *)v5 collection];
        v9 = [(NSArray *)collection isEqualToArray:collection];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  collectionType = [(HKInspectableValueCollection *)self collectionType];
  collection = [(HKInspectableValueCollection *)self collection];
  v5 = [collection hash];

  return v5 ^ collectionType;
}

- (HKInspectableValueCollection)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = HKInspectableValueCollection;
  v5 = [(HKInspectableValueCollection *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"CollectionKey"];
    collection = v5->_collection;
    v5->_collection = v9;

    v5->_collectionType = [coderCopy decodeIntegerForKey:@"CollectionTypeKey"];
    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ElementTagsKey"];
    elementTags = v5->_elementTags;
    v5->_elementTags = v14;

    [(HKInspectableValueCollection *)v5 _assertCollectionType];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  collection = self->_collection;
  coderCopy = coder;
  [coderCopy encodeObject:collection forKey:@"CollectionKey"];
  [coderCopy encodeInteger:self->_collectionType forKey:@"CollectionTypeKey"];
  [coderCopy encodeObject:self->_elementTags forKey:@"ElementTagsKey"];
}

- (id)codingsForKeyPath:(id)path error:(id *)error
{
  pathCopy = path;
  v7 = [HKConceptIndexKeyPath conceptIndexKeyPathWithFullKeyPath:pathCopy error:error];
  v8 = v7;
  if (v7)
  {
    head = [v7 head];
    v10 = [head isEqualToString:@"inspectableValue"];

    if (v10)
    {
      inspectableValue = [(HKInspectableValueCollection *)self inspectableValue];
LABEL_10:
      v18 = inspectableValue;
      tail = [v8 tail];
      v20 = [HKConceptIndexUtilities medicalCodingCollectionForIndexableObject:v18 keyPath:tail error:error];

      goto LABEL_13;
    }

    head2 = [v8 head];
    v13 = [head2 isEqualToString:@"min"];

    if (v13)
    {
      inspectableValue = [(HKInspectableValueCollection *)self min];
      goto LABEL_10;
    }

    head3 = [v8 head];
    v15 = [head3 isEqualToString:@"max"];

    if (v15)
    {
      inspectableValue = [(HKInspectableValueCollection *)self max];
      goto LABEL_10;
    }

    head4 = [v8 head];
    v17 = [head4 isEqualToString:@"inspectableValues"];

    if (v17)
    {
      inspectableValue = [(HKInspectableValueCollection *)self inspectableValues];
      goto LABEL_10;
    }

    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (BOOL)applyConcepts:(id)concepts forKeyPath:(id)path error:(id *)error
{
  conceptsCopy = concepts;
  pathCopy = path;
  v10 = [HKConceptIndexKeyPath conceptIndexKeyPathWithFullKeyPath:pathCopy error:error];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  head = [v10 head];
  v13 = [head isEqualToString:@"inspectableValue"];

  if (!v13)
  {
    head2 = [v11 head];
    v16 = [head2 isEqualToString:@"min"];

    if (v16)
    {
      inspectableValues = [(HKInspectableValueCollection *)self min];
      goto LABEL_10;
    }

    head3 = [v11 head];
    v18 = [head3 isEqualToString:@"max"];

    if (v18)
    {
      inspectableValues = [(HKInspectableValueCollection *)self max];
      goto LABEL_10;
    }

    head4 = [v11 head];
    v20 = [head4 isEqualToString:@"inspectableValues"];

    if (v20)
    {
      inspectableValues = [(HKInspectableValueCollection *)self inspectableValues];
      goto LABEL_10;
    }

    [HKConceptIndexUtilities assignError:error forInvalidKeyPath:pathCopy inClass:objc_opt_class()];
LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  inspectableValues = [(HKInspectableValueCollection *)self inspectableValue];
LABEL_10:
  v21 = inspectableValues;
  tail = [v11 tail];
  v23 = [HKConceptIndexUtilities applyConcepts:conceptsCopy toIndexableObject:v21 keyPath:tail error:error];

LABEL_13:
  return v23;
}

@end