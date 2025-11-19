@interface HKConcept
+ (HKConcept)conceptWithIdentifier:(id)a3 attributes:(id)a4 relationships:(id)a5;
+ (id)fallbackLanguagesForLocale:(id)a3;
+ (id)preferredLanguages;
- (BOOL)chartsBloodPressure;
- (BOOL)hidesOutOfRangeFilter;
- (BOOL)isAdHoc;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExcludedFromSearch;
- (BOOL)isGeneric;
- (BOOL)isLowUtility;
- (BOOL)isNebulous;
- (HKConcept)groupByConcept;
- (HKConcept)init;
- (HKConcept)initWithCoder:(id)a3;
- (HKConcept)initWithIdentifier:(id)a3 attributes:(id)a4 relationships:(id)a5 version:(int64_t)a6 deleted:(BOOL)a7 options:(unint64_t)a8;
- (HKMedicalCoding)LOINCCoding;
- (HKMedicalCoding)RxNormCoding;
- (HKMedicalCoding)coding;
- (NSSet)validInRegions;
- (NSString)adHocCode;
- (NSString)localizedPreferredName;
- (NSString)preferredName;
- (id)allConceptsOfRelationshipType:(int64_t)a3;
- (id)attributesForType:(int64_t)a3;
- (id)copyWithRelationships:(id)a3;
- (id)description;
- (id)firstAttributeForType:(int64_t)a3;
- (id)firstConceptOfRelationshipType:(int64_t)a3;
- (id)stringsForAttributeType:(int64_t)a3;
- (id)treeDescription;
- (unint64_t)hash;
- (void)_appendSortedAttributeTypeCountDescriptionToString:(id)a3;
- (void)_appendTreeDescriptionToString:(id)a3 visitedStack:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAttributesWithType:(int64_t)a3 block:(id)a4;
- (void)mutateBySettingRelationships:(id)a3;
@end

@implementation HKConcept

+ (id)fallbackLanguagesForLocale:(id)a3
{
  v3 = [a3 countryCode];
  if ([v3 isEqualToString:@"CA"])
  {
    v4 = &unk_1F06864C0;
  }

  else if ([v3 isEqualToString:@"GB"])
  {
    v4 = &unk_1F06864D8;
  }

  else if ([v3 isEqualToString:@"US"])
  {
    v4 = &unk_1F06864F0;
  }

  else
  {
    v4 = &unk_1F0686508;
  }

  return v4;
}

+ (id)preferredLanguages
{
  v3 = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
  v4 = [MEMORY[0x1E695DF58] hk_testablePreferredLanguages];
  v5 = [a1 fallbackLanguagesForLocale:v3];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

+ (HKConcept)conceptWithIdentifier:(id)a3 attributes:(id)a4 relationships:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HKConcept alloc] initWithIdentifier:v9 attributes:v8 relationships:v7 version:0 deleted:0 options:0];

  return v10;
}

- (id)copyWithRelationships:(id)a3
{
  v4 = a3;
  v5 = [[HKConcept alloc] initWithIdentifier:self->_identifier attributes:self->_attributes relationships:v4 version:self->_version deleted:self->_deleted options:self->_options];

  return v5;
}

- (id)firstConceptOfRelationshipType:(int64_t)a3
{
  if (![(HKConcept *)self relationshipsAreLoaded])
  {
    [HKConcept firstConceptOfRelationshipType:];
  }

  relationships = self->_relationships;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__HKConcept_firstConceptOfRelationshipType___block_invoke;
  v9[3] = &__block_descriptor_40_e31_B16__0__HKConceptRelationship_8l;
  v9[4] = a3;
  v6 = [(NSArray *)relationships hk_firstObjectPassingTest:v9];
  v7 = [v6 destination];

  return v7;
}

- (id)allConceptsOfRelationshipType:(int64_t)a3
{
  if (![(HKConcept *)self relationshipsAreLoaded])
  {
    [HKConcept allConceptsOfRelationshipType:];
  }

  relationships = self->_relationships;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__HKConcept_allConceptsOfRelationshipType___block_invoke;
  v8[3] = &__block_descriptor_40_e42___HKConcept_16__0__HKConceptRelationship_8l;
  v8[4] = a3;
  v6 = [(NSArray *)relationships hk_map:v8];

  return v6;
}

id __43__HKConcept_allConceptsOfRelationshipType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 32))
  {
    v4 = [v3 destination];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (HKConcept)initWithIdentifier:(id)a3 attributes:(id)a4 relationships:(id)a5 version:(int64_t)a6 deleted:(BOOL)a7 options:(unint64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKConcept initWithIdentifier:attributes:relationships:version:deleted:options:];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  [HKConcept initWithIdentifier:attributes:relationships:version:deleted:options:];
LABEL_3:
  v24.receiver = self;
  v24.super_class = HKConcept;
  v17 = [(HKConcept *)&v24 init];
  if (v17)
  {
    v18 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v15 copy];
    attributes = v17->_attributes;
    v17->_attributes = v20;

    objc_storeStrong(&v17->_relationships, a5);
    v17->_deleted = a7;
    v22 = v17->_relationships != 0;
    v17->_version = a6;
    v17->_options = v22 | a8;
  }

  return v17;
}

- (HKConcept)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(HKConcept *)self identifier];
  v4 = [v3 hash];
  if ([(HKConceptIdentifier *)self->_identifier isInMemory])
  {
    v5 = [(HKConcept *)self adHocCode];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(HKConceptIdentifier *)self->_identifier isEqual:v5->_identifier])
      {
        if ([(HKConceptIdentifier *)self->_identifier isInMemory])
        {
          v6 = [(HKConcept *)self adHocCode];
          v7 = [(HKConcept *)v5 adHocCode];
          v8 = [v6 isEqual:v7];
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)mutateBySettingRelationships:(id)a3
{
  self->_options |= 1uLL;
  v4 = [a3 copy];
  relationships = self->_relationships;
  self->_relationships = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)groupByConcept
{
  v3 = [(HKConcept *)self firstConceptOfRelationshipType:1013];
  if (!v3)
  {
    v3 = self;
  }

  return v3;
}

- (NSSet)validInRegions
{
  v2 = [(HKConcept *)self firstAttributeForType:959];
  v3 = v2;
  v4 = MEMORY[0x1E695DFD8];
  if (v2)
  {
    v5 = [v2 stringValue];
    v6 = [v5 componentsSeparatedByString:{@", "}];
    v7 = [v4 setWithArray:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:@"US"];
  }

  return v7;
}

- (NSString)preferredName
{
  v2 = [(HKConcept *)self firstAttributeForType:1012];
  v3 = [v2 stringValue];

  return v3;
}

- (NSString)localizedPreferredName
{
  v23 = *MEMORY[0x1E69E9840];
  [objc_opt_class() preferredLanguages];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [&unk_1F0685F20 objectForKeyedSubscript:v8];
        if (v9)
        {
          v10 = v9;
          v11 = -[HKConcept firstAttributeForType:](self, "firstAttributeForType:", [v9 integerValue]);
          v12 = [v11 stringValue];

          if (v12)
          {
            if (_os_feature_enabled_impl())
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [%@]", v12, v8, v18];
            }

            else
            {
              v15 = v12;
            }

            v14 = v15;

            v13 = v3;
            goto LABEL_18;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(HKConcept *)self preferredName];
  if (v13)
  {
    v13 = v13;
  }

  v14 = v13;
LABEL_18:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)firstAttributeForType:(int64_t)a3
{
  attributes = self->_attributes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__HKConcept_firstAttributeForType___block_invoke;
  v6[3] = &__block_descriptor_40_e28_B16__0__HKConceptAttribute_8l;
  v6[4] = a3;
  v4 = [(NSArray *)attributes hk_firstObjectPassingTest:v6];

  return v4;
}

- (id)attributesForType:(int64_t)a3
{
  attributes = self->_attributes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__HKConcept_attributesForType___block_invoke;
  v6[3] = &__block_descriptor_40_e28_B16__0__HKConceptAttribute_8l;
  v6[4] = a3;
  v4 = [(NSArray *)attributes hk_filter:v6];

  return v4;
}

- (void)enumerateAttributesWithType:(int64_t)a3 block:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(HKConcept *)self attributes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 type] == a3)
        {
          v6[2](v6, v12);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)stringsForAttributeType:(int64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__HKConcept_stringsForAttributeType___block_invoke;
  v9[3] = &unk_1E73798F8;
  v10 = v5;
  v6 = v5;
  [(HKConcept *)self enumerateAttributesWithType:a3 block:v9];
  v7 = [v6 copy];

  return v7;
}

void __37__HKConcept_stringsForAttributeType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  [v2 addObject:v3];
}

- (BOOL)isAdHoc
{
  v2 = [(HKConcept *)self firstAttributeForType:2];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isNebulous
{
  v2 = [(HKConcept *)self firstAttributeForType:1011];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isGeneric
{
  v2 = [(HKConcept *)self firstAttributeForType:846];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isLowUtility
{
  v2 = [(HKConcept *)self firstAttributeForType:989];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isExcludedFromSearch
{
  v2 = [(HKConcept *)self firstAttributeForType:620];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)chartsBloodPressure
{
  v2 = [(HKConcept *)self firstAttributeForType:61813];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hidesOutOfRangeFilter
{
  v2 = [(HKConcept *)self firstAttributeForType:61839];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)adHocCode
{
  v2 = [(HKConcept *)self firstAttributeForType:2];
  v3 = [v2 stringValue];

  return v3;
}

- (HKMedicalCoding)LOINCCoding
{
  v2 = [(HKConcept *)self firstAttributeForType:1009];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringValue];
    if (v4)
    {
      v5 = +[HKMedicalCodingSystem LOINCCodeSystem];
      v6 = [HKMedicalCoding medicalCodingWithSystem:v5 codingVersion:0 code:v4 displayString:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HKMedicalCoding)RxNormCoding
{
  v2 = [(HKConcept *)self firstAttributeForType:1008];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stringValue];
    if (v4)
    {
      v5 = +[HKMedicalCodingSystem RxNormCodeSystem];
      v6 = [HKMedicalCoding medicalCodingWithSystem:v5 codingVersion:0 code:v4 displayString:0];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (HKMedicalCoding)coding
{
  v3 = [(HKConcept *)self firstAttributeForType:2];
  if (v3)
  {
    v4 = +[HKMedicalCodingSystem adHocConceptSystem];
    v5 = [v3 stringValue];
  }

  else
  {
    v4 = +[HKMedicalCodingSystem appleOntologySystem];
    v6 = [(HKConcept *)self identifier];
    v7 = [v6 numberRepresentation];
    v5 = [v7 stringValue];
  }

  v8 = [[HKMedicalCoding alloc] initWithCodingSystem:v4 codingVersion:0 code:v5 displayString:0];

  return v8;
}

- (HKConcept)initWithCoder:(id)a3
{
  v20[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (([v5 _decodingCyclesIsAllowed] & 1) == 0)
    {
      [v5 _allowDecodingCyclesInSecureMode];
    }
  }

  v19.receiver = self;
  v19.super_class = HKConcept;
  v6 = [(HKConcept *)&v19 init];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:6];
    v10 = [v8 initWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Attributes"];
    attributes = v6->_attributes;
    v6->_attributes = v11;

    identifier = v6->_identifier;
    v6->_identifier = v7;
    v14 = v7;

    v15 = [v4 decodeObjectOfClasses:v10 forKey:@"Relationships"];
    relationships = v6->_relationships;
    v6->_relationships = v15;

    v6->_version = [v4 decodeInt64ForKey:@"Version"];
    v6->_deleted = [v4 decodeBoolForKey:@"Deleted"];
    v6->_options = [v4 decodeIntegerForKey:@"Options"];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  attributes = self->_attributes;
  v5 = a3;
  [v5 encodeObject:attributes forKey:@"Attributes"];
  [v5 encodeObject:self->_identifier forKey:@"Identifier"];
  [v5 encodeObject:self->_relationships forKey:@"Relationships"];
  [v5 encodeInt64:self->_version forKey:@"Version"];
  [v5 encodeBool:self->_deleted forKey:@"Deleted"];
  [v5 encodeInteger:self->_options forKey:@"Options"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HKConceptIdentifier *)self->_identifier rawIdentifier];
  v5 = [(HKConcept *)self preferredName];
  v6 = [v3 stringWithFormat:@"HKConcept: Identifier: %lld, Preferred Name: %@", v4, v5];

  return v6;
}

- (id)treeDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@, Tree:\n", self];
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [(HKConcept *)self identifier];
  v6 = [v4 initWithObjects:{v5, 0}];

  [(HKConcept *)self _appendTreeDescriptionToString:v3 visitedStack:v6];

  return v3;
}

- (void)_appendTreeDescriptionToString:(id)a3 visitedStack:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 appendFormat:@"%012lld", -[HKConceptIdentifier rawIdentifier](self->_identifier, "rawIdentifier")];
  if ([(NSArray *)self->_attributes count])
  {
    [v6 appendFormat:@" ["];
    [(HKConcept *)self _appendSortedAttributeTypeCountDescriptionToString:v6];
    [v6 appendFormat:@"]"];
  }

  [v6 appendFormat:@"\n"];
  v8 = [v7 count];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%*s", (10 * v8 - 8), ""];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(HKConcept *)self _sortedRelationships];
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        [v6 appendString:v9];
        v15 = [v14 destination];
        v16 = [v15 identifier];
        v17 = [v7 containsObject:v16];

        if (v17)
        {
          v18 = [v14 type];
          v19 = [v14 destination];
          v20 = [v19 identifier];
          [v6 appendFormat:@"%04lld -> %012lld [CYCLE DETECTED]\n", v18, objc_msgSend(v20, "rawIdentifier")];
        }

        else
        {
          v21 = [v14 destination];
          v22 = [v21 identifier];
          [v7 addObject:v22];

          [v6 appendFormat:@"%04lld -> ", objc_msgSend(v14, "type")];
          v23 = [v14 destination];
          [v23 _appendTreeDescriptionToString:v6 visitedStack:v7];

          [v7 removeLastObject];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t __33__HKConcept__sortedRelationships__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = HKCompareIntegers([v4 type], objc_msgSend(v5, "type"));
  if (!v6)
  {
    v7 = [v4 destination];
    v8 = [v7 identifier];
    v9 = [v8 rawIdentifier];
    v10 = [v5 destination];
    v11 = [v10 identifier];
    v6 = HKCompareIntegers(v9, [v11 rawIdentifier]);
  }

  return v6;
}

- (void)_appendSortedAttributeTypeCountDescriptionToString:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_attributes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(*(&v19 + 1) + 8 * v10), "type")}];
        v12 = [v5 objectForKeyedSubscript:v11];
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "integerValue") + 1}];
        [v5 setObject:v13 forKeyedSubscript:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v5 hk_sortedKeys];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__HKConcept__appendSortedAttributeTypeCountDescriptionToString___block_invoke;
  v17[3] = &unk_1E7379940;
  v18 = v5;
  v15 = v5;
  [v4 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v14, v17}];

  v16 = *MEMORY[0x1E69E9840];
}

id __64__HKConcept__appendSortedAttributeTypeCountDescriptionToString___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 longLongValue];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v4];

  v8 = [v5 initWithFormat:@"%04lld: %04lld", v6, objc_msgSend(v7, "longLongValue")];

  return v8;
}

- (void)firstConceptOfRelationshipType:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"self.relationshipsAreLoaded" object:? file:? lineNumber:? description:?];
}

- (void)allConceptsOfRelationshipType:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"self.relationshipsAreLoaded" object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentifier:attributes:relationships:version:deleted:options:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithIdentifier:attributes:relationships:version:deleted:options:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"attributes" object:? file:? lineNumber:? description:?];
}

@end