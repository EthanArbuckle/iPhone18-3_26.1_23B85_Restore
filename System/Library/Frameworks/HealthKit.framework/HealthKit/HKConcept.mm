@interface HKConcept
+ (HKConcept)conceptWithIdentifier:(id)identifier attributes:(id)attributes relationships:(id)relationships;
+ (id)fallbackLanguagesForLocale:(id)locale;
+ (id)preferredLanguages;
- (BOOL)chartsBloodPressure;
- (BOOL)hidesOutOfRangeFilter;
- (BOOL)isAdHoc;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExcludedFromSearch;
- (BOOL)isGeneric;
- (BOOL)isLowUtility;
- (BOOL)isNebulous;
- (HKConcept)groupByConcept;
- (HKConcept)init;
- (HKConcept)initWithCoder:(id)coder;
- (HKConcept)initWithIdentifier:(id)identifier attributes:(id)attributes relationships:(id)relationships version:(int64_t)version deleted:(BOOL)deleted options:(unint64_t)options;
- (HKMedicalCoding)LOINCCoding;
- (HKMedicalCoding)RxNormCoding;
- (HKMedicalCoding)coding;
- (NSSet)validInRegions;
- (NSString)adHocCode;
- (NSString)localizedPreferredName;
- (NSString)preferredName;
- (id)allConceptsOfRelationshipType:(int64_t)type;
- (id)attributesForType:(int64_t)type;
- (id)copyWithRelationships:(id)relationships;
- (id)description;
- (id)firstAttributeForType:(int64_t)type;
- (id)firstConceptOfRelationshipType:(int64_t)type;
- (id)stringsForAttributeType:(int64_t)type;
- (id)treeDescription;
- (unint64_t)hash;
- (void)_appendSortedAttributeTypeCountDescriptionToString:(id)string;
- (void)_appendTreeDescriptionToString:(id)string visitedStack:(id)stack;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAttributesWithType:(int64_t)type block:(id)block;
- (void)mutateBySettingRelationships:(id)relationships;
@end

@implementation HKConcept

+ (id)fallbackLanguagesForLocale:(id)locale
{
  countryCode = [locale countryCode];
  if ([countryCode isEqualToString:@"CA"])
  {
    v4 = &unk_1F06864C0;
  }

  else if ([countryCode isEqualToString:@"GB"])
  {
    v4 = &unk_1F06864D8;
  }

  else if ([countryCode isEqualToString:@"US"])
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
  hk_testableCurrentLocale = [MEMORY[0x1E695DF58] hk_testableCurrentLocale];
  hk_testablePreferredLanguages = [MEMORY[0x1E695DF58] hk_testablePreferredLanguages];
  v5 = [self fallbackLanguagesForLocale:hk_testableCurrentLocale];
  v6 = [hk_testablePreferredLanguages arrayByAddingObjectsFromArray:v5];

  return v6;
}

+ (HKConcept)conceptWithIdentifier:(id)identifier attributes:(id)attributes relationships:(id)relationships
{
  relationshipsCopy = relationships;
  attributesCopy = attributes;
  identifierCopy = identifier;
  v10 = [[HKConcept alloc] initWithIdentifier:identifierCopy attributes:attributesCopy relationships:relationshipsCopy version:0 deleted:0 options:0];

  return v10;
}

- (id)copyWithRelationships:(id)relationships
{
  relationshipsCopy = relationships;
  v5 = [[HKConcept alloc] initWithIdentifier:self->_identifier attributes:self->_attributes relationships:relationshipsCopy version:self->_version deleted:self->_deleted options:self->_options];

  return v5;
}

- (id)firstConceptOfRelationshipType:(int64_t)type
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
  v9[4] = type;
  v6 = [(NSArray *)relationships hk_firstObjectPassingTest:v9];
  destination = [v6 destination];

  return destination;
}

- (id)allConceptsOfRelationshipType:(int64_t)type
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
  v8[4] = type;
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

- (HKConcept)initWithIdentifier:(id)identifier attributes:(id)attributes relationships:(id)relationships version:(int64_t)version deleted:(BOOL)deleted options:(unint64_t)options
{
  identifierCopy = identifier;
  attributesCopy = attributes;
  relationshipsCopy = relationships;
  if (identifierCopy)
  {
    if (attributesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [HKConcept initWithIdentifier:attributes:relationships:version:deleted:options:];
    if (attributesCopy)
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
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [attributesCopy copy];
    attributes = v17->_attributes;
    v17->_attributes = v20;

    objc_storeStrong(&v17->_relationships, relationships);
    v17->_deleted = deleted;
    v22 = v17->_relationships != 0;
    v17->_version = version;
    v17->_options = v22 | options;
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
  identifier = [(HKConcept *)self identifier];
  v4 = [identifier hash];
  if ([(HKConceptIdentifier *)self->_identifier isInMemory])
  {
    adHocCode = [(HKConcept *)self adHocCode];
    v6 = [adHocCode hash];
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(HKConceptIdentifier *)self->_identifier isEqual:v5->_identifier])
      {
        if ([(HKConceptIdentifier *)self->_identifier isInMemory])
        {
          adHocCode = [(HKConcept *)self adHocCode];
          adHocCode2 = [(HKConcept *)v5 adHocCode];
          v8 = [adHocCode isEqual:adHocCode2];
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

- (void)mutateBySettingRelationships:(id)relationships
{
  self->_options |= 1uLL;
  v4 = [relationships copy];
  relationships = self->_relationships;
  self->_relationships = v4;

  MEMORY[0x1EEE66BB8]();
}

- (HKConcept)groupByConcept
{
  selfCopy = [(HKConcept *)self firstConceptOfRelationshipType:1013];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (NSSet)validInRegions
{
  v2 = [(HKConcept *)self firstAttributeForType:959];
  v3 = v2;
  v4 = MEMORY[0x1E695DFD8];
  if (v2)
  {
    stringValue = [v2 stringValue];
    v6 = [stringValue componentsSeparatedByString:{@", "}];
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
  stringValue = [v2 stringValue];

  return stringValue;
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
          stringValue = [v11 stringValue];

          if (stringValue)
          {
            if (_os_feature_enabled_impl())
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [%@]", stringValue, v8, v18];
            }

            else
            {
              v15 = stringValue;
            }

            v14 = v15;

            preferredName = v3;
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

  preferredName = [(HKConcept *)self preferredName];
  if (preferredName)
  {
    preferredName = preferredName;
  }

  v14 = preferredName;
LABEL_18:

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)firstAttributeForType:(int64_t)type
{
  attributes = self->_attributes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__HKConcept_firstAttributeForType___block_invoke;
  v6[3] = &__block_descriptor_40_e28_B16__0__HKConceptAttribute_8l;
  v6[4] = type;
  v4 = [(NSArray *)attributes hk_firstObjectPassingTest:v6];

  return v4;
}

- (id)attributesForType:(int64_t)type
{
  attributes = self->_attributes;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__HKConcept_attributesForType___block_invoke;
  v6[3] = &__block_descriptor_40_e28_B16__0__HKConceptAttribute_8l;
  v6[4] = type;
  v4 = [(NSArray *)attributes hk_filter:v6];

  return v4;
}

- (void)enumerateAttributesWithType:(int64_t)type block:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  attributes = [(HKConcept *)self attributes];
  v8 = [attributes countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(attributes);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 type] == type)
        {
          blockCopy[2](blockCopy, v12);
        }
      }

      v9 = [attributes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)stringsForAttributeType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__HKConcept_stringsForAttributeType___block_invoke;
  v9[3] = &unk_1E73798F8;
  v10 = v5;
  v6 = v5;
  [(HKConcept *)self enumerateAttributesWithType:type block:v9];
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isLowUtility
{
  v2 = [(HKConcept *)self firstAttributeForType:989];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isExcludedFromSearch
{
  v2 = [(HKConcept *)self firstAttributeForType:620];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)chartsBloodPressure
{
  v2 = [(HKConcept *)self firstAttributeForType:61813];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)hidesOutOfRangeFilter
{
  v2 = [(HKConcept *)self firstAttributeForType:61839];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)adHocCode
{
  v2 = [(HKConcept *)self firstAttributeForType:2];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (HKMedicalCoding)LOINCCoding
{
  v2 = [(HKConcept *)self firstAttributeForType:1009];
  v3 = v2;
  if (v2)
  {
    stringValue = [v2 stringValue];
    if (stringValue)
    {
      v5 = +[HKMedicalCodingSystem LOINCCodeSystem];
      v6 = [HKMedicalCoding medicalCodingWithSystem:v5 codingVersion:0 code:stringValue displayString:0];
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
    stringValue = [v2 stringValue];
    if (stringValue)
    {
      v5 = +[HKMedicalCodingSystem RxNormCodeSystem];
      v6 = [HKMedicalCoding medicalCodingWithSystem:v5 codingVersion:0 code:stringValue displayString:0];
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
    stringValue = [v3 stringValue];
  }

  else
  {
    v4 = +[HKMedicalCodingSystem appleOntologySystem];
    identifier = [(HKConcept *)self identifier];
    numberRepresentation = [identifier numberRepresentation];
    stringValue = [numberRepresentation stringValue];
  }

  v8 = [[HKMedicalCoding alloc] initWithCodingSystem:v4 codingVersion:0 code:stringValue displayString:0];

  return v8;
}

- (HKConcept)initWithCoder:(id)coder
{
  v20[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = coderCopy;
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
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v20[4] = objc_opt_class();
    v20[5] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:6];
    v10 = [v8 initWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Attributes"];
    attributes = v6->_attributes;
    v6->_attributes = v11;

    identifier = v6->_identifier;
    v6->_identifier = v7;
    v14 = v7;

    v15 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Relationships"];
    relationships = v6->_relationships;
    v6->_relationships = v15;

    v6->_version = [coderCopy decodeInt64ForKey:@"Version"];
    v6->_deleted = [coderCopy decodeBoolForKey:@"Deleted"];
    v6->_options = [coderCopy decodeIntegerForKey:@"Options"];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  attributes = self->_attributes;
  coderCopy = coder;
  [coderCopy encodeObject:attributes forKey:@"Attributes"];
  [coderCopy encodeObject:self->_identifier forKey:@"Identifier"];
  [coderCopy encodeObject:self->_relationships forKey:@"Relationships"];
  [coderCopy encodeInt64:self->_version forKey:@"Version"];
  [coderCopy encodeBool:self->_deleted forKey:@"Deleted"];
  [coderCopy encodeInteger:self->_options forKey:@"Options"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  rawIdentifier = [(HKConceptIdentifier *)self->_identifier rawIdentifier];
  preferredName = [(HKConcept *)self preferredName];
  v6 = [v3 stringWithFormat:@"HKConcept: Identifier: %lld, Preferred Name: %@", rawIdentifier, preferredName];

  return v6;
}

- (id)treeDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@, Tree:\n", self];
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  identifier = [(HKConcept *)self identifier];
  v6 = [v4 initWithObjects:{identifier, 0}];

  [(HKConcept *)self _appendTreeDescriptionToString:v3 visitedStack:v6];

  return v3;
}

- (void)_appendTreeDescriptionToString:(id)string visitedStack:(id)stack
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  stackCopy = stack;
  [stringCopy appendFormat:@"%012lld", -[HKConceptIdentifier rawIdentifier](self->_identifier, "rawIdentifier")];
  if ([(NSArray *)self->_attributes count])
  {
    [stringCopy appendFormat:@" ["];
    [(HKConcept *)self _appendSortedAttributeTypeCountDescriptionToString:stringCopy];
    [stringCopy appendFormat:@"]"];
  }

  [stringCopy appendFormat:@"\n"];
  v8 = [stackCopy count];
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
        [stringCopy appendString:v9];
        destination = [v14 destination];
        identifier = [destination identifier];
        v17 = [stackCopy containsObject:identifier];

        if (v17)
        {
          type = [v14 type];
          destination2 = [v14 destination];
          identifier2 = [destination2 identifier];
          [stringCopy appendFormat:@"%04lld -> %012lld [CYCLE DETECTED]\n", type, objc_msgSend(identifier2, "rawIdentifier")];
        }

        else
        {
          destination3 = [v14 destination];
          identifier3 = [destination3 identifier];
          [stackCopy addObject:identifier3];

          [stringCopy appendFormat:@"%04lld -> ", objc_msgSend(v14, "type")];
          destination4 = [v14 destination];
          [destination4 _appendTreeDescriptionToString:stringCopy visitedStack:stackCopy];

          [stackCopy removeLastObject];
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

- (void)_appendSortedAttributeTypeCountDescriptionToString:(id)string
{
  v24 = *MEMORY[0x1E69E9840];
  stringCopy = string;
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

  hk_sortedKeys = [v5 hk_sortedKeys];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__HKConcept__appendSortedAttributeTypeCountDescriptionToString___block_invoke;
  v17[3] = &unk_1E7379940;
  v18 = v5;
  v15 = v5;
  [stringCopy hk_appendComponentsJoinedByString:@" container:" componentGenerator:{hk_sortedKeys, v17}];

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