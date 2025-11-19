@interface HKInspectableValueCollection
+ (BOOL)hasNoValue:(id)a3;
+ (id)_unitStringForValue:(id)a3;
+ (id)_unitStringForValueCollection:(id)a3;
+ (id)indexableKeyPathsWithPrefix:(id)a3;
+ (id)inspectableValueCollectionListWithValues:(id)a3;
+ (id)inspectableValueCollectionRangeWithMax:(id)a3;
+ (id)inspectableValueCollectionRangeWithMin:(id)a3;
+ (id)inspectableValueCollectionRangeWithMin:(id)a3 max:(id)a4;
+ (id)inspectableValueCollectionSingleWithValue:(id)a3;
+ (id)inspectableValueCollectionTaggedListWithValues:(id)a3 tags:(id)a4;
- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (HKInspectableValue)inspectableValue;
- (HKInspectableValue)max;
- (HKInspectableValue)min;
- (HKInspectableValueCollection)init;
- (HKInspectableValueCollection)initWithCoder:(id)a3;
- (NSArray)inspectableValues;
- (NSString)unitString;
- (id)_initWithCollectionType:(int64_t)a3 collection:(id)a4 tags:(id)a5;
- (id)codingsForKeyPath:(id)a3 error:(id *)a4;
- (id)valueInRangeWithReferenceRanges:(id)a3 includeUnitString:(BOOL)a4 allowsNullRange:(BOOL)a5;
- (id)valuesWithTag:(id)a3;
- (int64_t)referenceRangeStatusWithRanges:(id)a3;
- (unint64_t)hash;
- (void)_assertCollectionType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKInspectableValueCollection

+ (id)indexableKeyPathsWithPrefix:(id)a3
{
  v11[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"inspectableValue";
  v11[1] = @"min";
  v11[2] = @"max";
  v11[3] = @"inspectableValues";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v11 count:4];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 hk_foldRightFrom:v6 with:&__block_literal_global_111];

  v8 = [HKConceptIndexUtilities keyPaths:v7 prefix:v4];

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

+ (id)inspectableValueCollectionSingleWithValue:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [v5 _initWithCollectionType:0 collection:v6];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)inspectableValueCollectionRangeWithMin:(id)a3 max:(id)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v13[0] = v7;
  v13[1] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v10 = [v8 _initWithCollectionType:1 collection:v9];
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)inspectableValueCollectionRangeWithMin:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 alloc];
  v11[0] = v4;
  v6 = +[HKInspectableValue inspectableValueWithNull];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v8 = [v5 _initWithCollectionType:1 collection:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)inspectableValueCollectionRangeWithMax:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 alloc];
  v6 = +[HKInspectableValue inspectableValueWithNull];
  v11[0] = v6;
  v11[1] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];

  v8 = [v5 _initWithCollectionType:1 collection:v7];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)inspectableValueCollectionListWithValues:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithCollectionType:2 collection:v4];

  return v5;
}

+ (id)inspectableValueCollectionTaggedListWithValues:(id)a3 tags:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithCollectionType:3 collection:v7 tags:v6];

  return v8;
}

+ (BOOL)hasNoValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 collectionType])
    {
      v5 = 0;
    }

    else
    {
      v6 = [v4 inspectableValue];
      v5 = [v6 valueType] == 5;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)_initWithCollectionType:(int64_t)a3 collection:(id)a4 tags:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HKInspectableValueCollection;
  v11 = [(HKInspectableValueCollection *)&v14 init];
  p_isa = &v11->super.isa;
  if (v11)
  {
    v11->_collectionType = a3;
    objc_storeStrong(&v11->_collection, a4);
    objc_storeStrong(p_isa + 3, a5);
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

- (id)valueInRangeWithReferenceRanges:(id)a3 includeUnitString:(BOOL)a4 allowsNullRange:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  if ([(HKInspectableValueCollection *)self collectionType])
  {
    goto LABEL_2;
  }

  v14 = [(HKInspectableValueCollection *)self inspectableValue];
  v15 = [v14 valueType];

  v9 = 0;
  v10 = 0;
  if (v8 && v15)
  {
    if ([v8 count] != 1)
    {
LABEL_2:
      v9 = 0;
      v10 = 0;
      goto LABEL_3;
    }

    v16 = [v8 firstObject];
    v17 = [v16 valueRange];
    v18 = v17;
    if (v17 && [v17 collectionType] == 1)
    {
      v10 = [v18 min];
      if (v10)
      {
        v19 = [v18 min];
        v20 = [v19 valueType];

        if (v20)
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
        v22 = [v21 valueType];

        if (v22)
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
  if (v6)
  {
    v11 = [objc_opt_class() _unitStringForValueCollection:self];
    if (a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    if (a5)
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

- (int64_t)referenceRangeStatusWithRanges:(id)a3
{
  v3 = [(HKInspectableValueCollection *)self valueInRangeWithReferenceRanges:a3 includeUnitString:0];
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
      v6 = [(HKInspectableValueCollection *)self inspectableValue];
      v8 = [v6 unitString];
      goto LABEL_6;
    }
  }

  else
  {
    v4 = [(HKInspectableValueCollection *)self inspectableValues];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(HKInspectableValueCollection *)self inspectableValues];
      v7 = [v6 firstObject];
      v8 = [v7 unitString];

LABEL_6:
      goto LABEL_8;
    }
  }

  v8 = &stru_1F05FF230;
LABEL_8:

  return v8;
}

+ (id)_unitStringForValueCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 collectionType];
  if ((v4 - 2) >= 2)
  {
    if (!v4)
    {
      v11 = objc_opt_class();
      v8 = [v3 inspectableValue];
      v10 = [v11 _unitStringForValue:v8];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [v3 inspectableValues];
    v6 = [v5 count];

    if (v6)
    {
      v7 = objc_opt_class();
      v8 = [v3 inspectableValues];
      v9 = [v8 firstObject];
      v10 = [v7 _unitStringForValue:v9];

LABEL_6:
      goto LABEL_8;
    }
  }

  v10 = &stru_1F05FF230;
LABEL_8:

  return v10;
}

+ (id)_unitStringForValue:(id)a3
{
  v3 = a3;
  v4 = [v3 valueType];
  if (v4 == 8 || v4 == 6)
  {
    v6 = [v3 unitString];
  }

  else if (v4 == 1)
  {
    v7 = [v3 ratioValue];
    v8 = [v7 numerator];
    v9 = [v8 unitCoding];

    v10 = [v9 code];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v9 displayString];
    }

    v6 = v12;
  }

  else
  {
    v6 = &stru_1F05FF230;
  }

  if ([(__CFString *)v6 length])
  {
    v13 = +[HKUCUMUnitDisplayConverter sharedConverter];
    v14 = [v13 synonymForUCUMUnitString:v6];

    v6 = v14;
  }

  return v6;
}

- (id)valuesWithTag:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_elementTags count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_elementTags objectAtIndexedSubscript:v6];
      v8 = [v7 isEqual:v4];

      if (v8)
      {
        v9 = [(NSArray *)self->_collection objectAtIndexedSubscript:v6];
        [v5 addObject:v9];
      }

      ++v6;
    }

    while (v6 < [(NSArray *)self->_elementTags count]);
  }

  v10 = [v5 copy];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      collectionType = self->_collectionType;
      if (collectionType == [(HKInspectableValueCollection *)v5 collectionType])
      {
        collection = self->_collection;
        v8 = [(HKInspectableValueCollection *)v5 collection];
        v9 = [(NSArray *)collection isEqualToArray:v8];
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
  v3 = [(HKInspectableValueCollection *)self collectionType];
  v4 = [(HKInspectableValueCollection *)self collection];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (HKInspectableValueCollection)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"CollectionKey"];
    collection = v5->_collection;
    v5->_collection = v9;

    v5->_collectionType = [v4 decodeIntegerForKey:@"CollectionTypeKey"];
    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"ElementTagsKey"];
    elementTags = v5->_elementTags;
    v5->_elementTags = v14;

    [(HKInspectableValueCollection *)v5 _assertCollectionType];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  collection = self->_collection;
  v5 = a3;
  [v5 encodeObject:collection forKey:@"CollectionKey"];
  [v5 encodeInteger:self->_collectionType forKey:@"CollectionTypeKey"];
  [v5 encodeObject:self->_elementTags forKey:@"ElementTagsKey"];
}

- (id)codingsForKeyPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [HKConceptIndexKeyPath conceptIndexKeyPathWithFullKeyPath:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 head];
    v10 = [v9 isEqualToString:@"inspectableValue"];

    if (v10)
    {
      v11 = [(HKInspectableValueCollection *)self inspectableValue];
LABEL_10:
      v18 = v11;
      v19 = [v8 tail];
      v20 = [HKConceptIndexUtilities medicalCodingCollectionForIndexableObject:v18 keyPath:v19 error:a4];

      goto LABEL_13;
    }

    v12 = [v8 head];
    v13 = [v12 isEqualToString:@"min"];

    if (v13)
    {
      v11 = [(HKInspectableValueCollection *)self min];
      goto LABEL_10;
    }

    v14 = [v8 head];
    v15 = [v14 isEqualToString:@"max"];

    if (v15)
    {
      v11 = [(HKInspectableValueCollection *)self max];
      goto LABEL_10;
    }

    v16 = [v8 head];
    v17 = [v16 isEqualToString:@"inspectableValues"];

    if (v17)
    {
      v11 = [(HKInspectableValueCollection *)self inspectableValues];
      goto LABEL_10;
    }

    [HKConceptIndexUtilities assignError:a4 forInvalidKeyPath:v6 inClass:objc_opt_class()];
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (BOOL)applyConcepts:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [HKConceptIndexKeyPath conceptIndexKeyPathWithFullKeyPath:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = [v10 head];
  v13 = [v12 isEqualToString:@"inspectableValue"];

  if (!v13)
  {
    v15 = [v11 head];
    v16 = [v15 isEqualToString:@"min"];

    if (v16)
    {
      v14 = [(HKInspectableValueCollection *)self min];
      goto LABEL_10;
    }

    v17 = [v11 head];
    v18 = [v17 isEqualToString:@"max"];

    if (v18)
    {
      v14 = [(HKInspectableValueCollection *)self max];
      goto LABEL_10;
    }

    v19 = [v11 head];
    v20 = [v19 isEqualToString:@"inspectableValues"];

    if (v20)
    {
      v14 = [(HKInspectableValueCollection *)self inspectableValues];
      goto LABEL_10;
    }

    [HKConceptIndexUtilities assignError:a5 forInvalidKeyPath:v9 inClass:objc_opt_class()];
LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v14 = [(HKInspectableValueCollection *)self inspectableValue];
LABEL_10:
  v21 = v14;
  v22 = [v11 tail];
  v23 = [HKConceptIndexUtilities applyConcepts:v8 toIndexableObject:v21 keyPath:v22 error:a5];

LABEL_13:
  return v23;
}

@end