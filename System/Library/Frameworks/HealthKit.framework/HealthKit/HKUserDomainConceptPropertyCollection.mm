@interface HKUserDomainConceptPropertyCollection
+ (id)propertyCollectionByMergingCollection:(id)collection otherCollection:(id)otherCollection options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (HKUserDomainConceptPropertyCollection)init;
- (HKUserDomainConceptPropertyCollection)initWithCoder:(id)coder;
- (HKUserDomainConceptPropertyCollection)initWithProperties:(id)properties;
- (id)_basicPropertiesIncludeDeleted:(BOOL)deleted;
- (id)_propertiesByType;
- (id)_propertiesWithType:(int64_t)type includeDeleted:(BOOL)deleted;
- (id)collectionByAddingProperties:(id)properties;
- (id)description;
- (id)firstBasicPropertyWithType:(int64_t)type;
- (id)firstPropertyWithType:(int64_t)type;
- (id)propertyCollectionByMerging:(id)merging options:(unint64_t)options;
- (unint64_t)hash;
@end

@implementation HKUserDomainConceptPropertyCollection

- (HKUserDomainConceptPropertyCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptPropertyCollection)initWithProperties:(id)properties
{
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
    [(HKUserDomainConceptPropertyCollection *)a2 initWithProperties:?];
  }

  v10.receiver = self;
  v10.super_class = HKUserDomainConceptPropertyCollection;
  v6 = [(HKUserDomainConceptPropertyCollection *)&v10 init];
  if (v6)
  {
    v7 = [propertiesCopy copy];
    properties = v6->_properties;
    v6->_properties = v7;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSArray *)self->_properties count];
  v6 = [(NSArray *)self->_properties count];
  v7 = @"properties";
  if (v6 == 1)
  {
    v7 = @"property";
  }

  return [v3 stringWithFormat:@"<%@:%p with %ld %@: %@>", v4, self, v5, v7, self->_properties];
}

- (unint64_t)hash
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_properties];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSArray *)self->_properties isEqualToArray:v5->_properties])
      {
        v6 = 1;
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:self->_properties];
        v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5->_properties];
        v6 = [v7 isEqual:v8];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (HKUserDomainConceptPropertyCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKUserDomainConceptPropertyCollection;
  v5 = [(HKUserDomainConceptPropertyCollection *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"properties"];
    properties = v5->_properties;
    v5->_properties = v7;
  }

  return v5;
}

- (id)collectionByAddingProperties:(id)properties
{
  v3 = [(NSArray *)self->_properties arrayByAddingObjectsFromArray:properties];
  v4 = [[HKUserDomainConceptPropertyCollection alloc] initWithProperties:v3];

  return v4;
}

- (id)firstPropertyWithType:(int64_t)type
{
  if (HKIsDeprecatedPropertyType(type))
  {
    [(HKUserDomainConceptPropertyCollection *)a2 firstPropertyWithType:?];
  }

  properties = self->_properties;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__HKUserDomainConceptPropertyCollection_firstPropertyWithType___block_invoke;
  v9[3] = &__block_descriptor_40_e37_B16__0__HKUserDomainConceptProperty_8l;
  v9[4] = type;
  v7 = [(NSArray *)properties hk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __63__HKUserDomainConceptPropertyCollection_firstPropertyWithType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = [v3 isDeleted] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_propertiesWithType:(int64_t)type includeDeleted:(BOOL)deleted
{
  if (HKIsDeprecatedPropertyType(type))
  {
    [HKUserDomainConceptPropertyCollection _propertiesWithType:a2 includeDeleted:self];
  }

  properties = self->_properties;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__HKUserDomainConceptPropertyCollection__propertiesWithType_includeDeleted___block_invoke;
  v11[3] = &__block_descriptor_41_e37_B16__0__HKUserDomainConceptProperty_8l;
  v11[4] = type;
  deletedCopy = deleted;
  v9 = [(NSArray *)properties hk_filter:v11];

  return v9;
}

uint64_t __76__HKUserDomainConceptPropertyCollection__propertiesWithType_includeDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    if (*(a1 + 40))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isDeleted] ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)propertyCollectionByMergingCollection:(id)collection otherCollection:(id)otherCollection options:(unint64_t)options
{
  collectionCopy = collection;
  otherCollectionCopy = otherCollection;
  v9 = otherCollectionCopy;
  if (otherCollectionCopy)
  {
    if (collectionCopy)
    {
      v10 = [collectionCopy propertyCollectionByMerging:otherCollectionCopy options:options];
    }

    else
    {
      v10 = otherCollectionCopy;
    }
  }

  else
  {
    v10 = collectionCopy;
  }

  v11 = v10;

  return v11;
}

- (id)propertyCollectionByMerging:(id)merging options:(unint64_t)options
{
  v47 = *MEMORY[0x1E69E9840];
  mergingCopy = merging;
  if (![mergingCopy count])
  {
    selfCopy3 = self;
    goto LABEL_26;
  }

  _propertiesByType = [(HKUserDomainConceptPropertyCollection *)self _propertiesByType];
  _propertiesByType2 = [mergingCopy _propertiesByType];
  v36 = _propertiesByType;
  v35 = [_propertiesByType mutableCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = _propertiesByType2;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    selfCopy2 = self;
    v33 = mergingCopy;
    v34 = 0;
    v12 = *v42;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        firstObject = [v15 firstObject];
        v17 = objc_opt_class();

        v18 = [v36 objectForKeyedSubscript:v14];
        v19 = v18;
        v20 = MEMORY[0x1E695E0F0];
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        v22 = [v17 mergeListsOfPropertiesWithType:objc_msgSend(v14 intoListOfProperties:"integerValue") fromListOfProperties:v21 options:{v15, options}];

        if (v22 != v21)
        {
          [v35 setObject:v22 forKeyedSubscript:v14];
          v34 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v11);

    self = selfCopy2;
    mergingCopy = v33;
    if (v34)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      allValues = [v35 allValues];
      v25 = [allValues countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v38;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(allValues);
            }

            [v23 addObjectsFromArray:*(*(&v37 + 1) + 8 * j)];
          }

          v26 = [allValues countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v26);
      }

      selfCopy3 = [[HKUserDomainConceptPropertyCollection alloc] initWithProperties:v23];
      goto LABEL_25;
    }
  }

  else
  {
  }

  selfCopy3 = self;
LABEL_25:

LABEL_26:
  v30 = *MEMORY[0x1E69E9840];

  return selfCopy3;
}

- (id)_propertiesByType
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_properties;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type", v15)}];
        v11 = [v3 objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v3 setObject:v11 forKeyedSubscript:v10];
        }

        [v11 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_basicPropertiesIncludeDeleted:(BOOL)deleted
{
  properties = [(HKUserDomainConceptPropertyCollection *)self properties];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __106__HKUserDomainConceptPropertyCollection_HKUserDomainConceptBasicProperty___basicPropertiesIncludeDeleted___block_invoke;
  v7[3] = &__block_descriptor_33_e37_B16__0__HKUserDomainConceptProperty_8l;
  deletedCopy = deleted;
  v5 = [properties hk_filter:v7];

  return v5;
}

uint64_t __106__HKUserDomainConceptPropertyCollection_HKUserDomainConceptBasicProperty___basicPropertiesIncludeDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (*(a1 + 32))
    {
      v4 = 1;
    }

    else
    {
      v4 = [v3 isDeleted] ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)firstBasicPropertyWithType:(int64_t)type
{
  if (HKIsBasicUserDomainConceptPropertyType(type))
  {
    v5 = [(HKUserDomainConceptPropertyCollection *)self firstPropertyWithType:type];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithProperties:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserDomainConceptPropertyCollection.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"properties != nil"}];
}

- (void)firstPropertyWithType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserDomainConceptPropertyCollection.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"HKIsDeprecatedPropertyType(type) == NO"}];
}

- (void)_propertiesWithType:(uint64_t)a1 includeDeleted:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserDomainConceptPropertyCollection.m" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"HKIsDeprecatedPropertyType(type) == NO"}];
}

@end