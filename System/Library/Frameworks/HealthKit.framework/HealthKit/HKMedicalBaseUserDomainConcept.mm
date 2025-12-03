@interface HKMedicalBaseUserDomainConcept
- (BOOL)unitTesting_isIdentical:(id)identical;
- (HKMedicalBaseUserDomainConcept)init;
- (HKMedicalBaseUserDomainConcept)initWithCategoryTypes:(id)types countryCode:(id)code codingCollection:(id)collection propertyCollection:(id)propertyCollection;
- (HKMedicalBaseUserDomainConcept)initWithCoder:(id)coder;
- (HKMedicalBaseUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection;
- (NSDictionary)preferredNameByLocaleIdentifier;
- (NSString)ontologyPreferredName;
- (id)_dataDescriptionAllowedForPublic:(BOOL)public;
- (id)_deepCopy;
- (id)_generateSemanticIdentifier;
- (id)medicalConceptByAddingCategoryType:(int64_t)type;
- (id)medicalConceptByReplacingCategoryTypes:(id)types;
- (id)medicalConceptByReplacingCategoryTypes:(id)types codingCollection:(id)collection linkCollection:(id)linkCollection;
- (id)semanticIdentifier;
- (void)_setCategoryTypes:(id)types;
- (void)_setCountryCode:(id)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicalBaseUserDomainConcept

- (HKMedicalBaseUserDomainConcept)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicalBaseUserDomainConcept)initWithCodingCollection:(id)collection linkCollection:(id)linkCollection propertyCollection:(id)propertyCollection
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The -%@ method is not available on %@", v8, objc_opt_class()}];

  return 0;
}

- (HKMedicalBaseUserDomainConcept)initWithCategoryTypes:(id)types countryCode:(id)code codingCollection:(id)collection propertyCollection:(id)propertyCollection
{
  typesCopy = types;
  codeCopy = code;
  v18.receiver = self;
  v18.super_class = HKMedicalBaseUserDomainConcept;
  v12 = [(HKUserDomainConcept *)&v18 initWithCodingCollection:collection linkCollection:0 propertyCollection:propertyCollection];
  if (v12)
  {
    v13 = [typesCopy copy];
    categoryTypes = v12->_categoryTypes;
    v12->_categoryTypes = v13;

    v15 = [codeCopy copy];
    countryCode = v12->_countryCode;
    v12->_countryCode = v15;

    v12->_computedPropertyLock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

- (id)medicalConceptByReplacingCategoryTypes:(id)types codingCollection:(id)collection linkCollection:(id)linkCollection
{
  linkCollectionCopy = linkCollection;
  collectionCopy = collection;
  typesCopy = types;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  [modificationCopy _setCategoryTypes:typesCopy];

  [modificationCopy _setCodingCollection:collectionCopy];
  [modificationCopy _setLinkCollection:linkCollectionCopy];

  return modificationCopy;
}

- (id)medicalConceptByReplacingCategoryTypes:(id)types
{
  typesCopy = types;
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  [modificationCopy _setCategoryTypes:typesCopy];

  return modificationCopy;
}

- (id)medicalConceptByAddingCategoryType:(int64_t)type
{
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  categoryTypes = self->_categoryTypes;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [(NSArray *)categoryTypes arrayByAddingObject:v7];
  [modificationCopy _setCategoryTypes:v8];

  return modificationCopy;
}

- (id)_deepCopy
{
  v5.receiver = self;
  v5.super_class = HKMedicalBaseUserDomainConcept;
  _deepCopy = [(HKUserDomainConcept *)&v5 _deepCopy];
  [_deepCopy _setCategoryTypes:self->_categoryTypes];
  [_deepCopy _setCountryCode:self->_countryCode];

  return _deepCopy;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)public
{
  if (public)
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AD60]);
    ontologyPreferredName = [(HKMedicalBaseUserDomainConcept *)self ontologyPreferredName];
    v3 = [v5 initWithFormat:@"%@", ontologyPreferredName];

    countryCode = [(HKMedicalBaseUserDomainConcept *)self countryCode];

    if (countryCode)
    {
      countryCode2 = [(HKMedicalBaseUserDomainConcept *)self countryCode];
      [v3 appendFormat:@" %@", countryCode2];
    }

    categoryTypes = [(HKMedicalBaseUserDomainConcept *)self categoryTypes];
    v10 = [categoryTypes count];

    if (v10)
    {
      objc_msgSend(v3, "appendString:", @" (");
      categoryTypes2 = [(HKMedicalBaseUserDomainConcept *)self categoryTypes];
      [v3 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{categoryTypes2, &__block_literal_global_125}];

      [v3 appendString:@""]);
    }
  }

  return v3;
}

__CFString *__67__HKMedicalBaseUserDomainConcept__dataDescriptionAllowedForPublic___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return HKStringFromMedicalRecordCategoryType(v2);
}

- (id)semanticIdentifier
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_semanticIdentifier)
  {
    _generateSemanticIdentifier = [(HKMedicalBaseUserDomainConcept *)self _generateSemanticIdentifier];
    semanticIdentifier = self->_semanticIdentifier;
    self->_semanticIdentifier = _generateSemanticIdentifier;
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  v5 = self->_semanticIdentifier;

  return v5;
}

- (id)_generateSemanticIdentifier
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKMedicalBaseUserDomainConcept;
  coderCopy = coder;
  [(HKUserDomainConcept *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_categoryTypes forKey:{@"categoryTypes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
}

- (HKMedicalBaseUserDomainConcept)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"categoryTypes"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v9.receiver = self;
  v9.super_class = HKMedicalBaseUserDomainConcept;
  v7 = [(HKUserDomainConcept *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
    objc_storeStrong(&v7->_categoryTypes, v5);
    objc_storeStrong(&v7->_countryCode, v6);
    v7->_computedPropertyLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (NSString)ontologyPreferredName
{
  preferredNameByLocaleIdentifier = [(HKMedicalBaseUserDomainConcept *)self preferredNameByLocaleIdentifier];
  v3 = [preferredNameByLocaleIdentifier objectForKeyedSubscript:@"(null)"];

  return v3;
}

- (NSDictionary)preferredNameByLocaleIdentifier
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_preferredNameByLocaleIdentifier)
  {
    propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
    v4 = [propertyCollection allPropertiesWithType:160012];

    if (!v4 || ![v4 count])
    {
      preferredNameByLocaleIdentifier = self->_preferredNameByLocaleIdentifier;
      self->_preferredNameByLocaleIdentifier = MEMORY[0x1E695E0F8];
    }

    v6 = [v4 hk_mapToDictionary:&__block_literal_global_40];
    v7 = self->_preferredNameByLocaleIdentifier;
    self->_preferredNameByLocaleIdentifier = v6;
  }

  os_unfair_lock_unlock(&self->_computedPropertyLock);
  v8 = self->_preferredNameByLocaleIdentifier;

  return v8;
}

void __65__HKMedicalBaseUserDomainConcept_preferredNameByLocaleIdentifier__block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 locale];
  v7 = [v6 stringValue];

  (a3)[2](v5, v8, v7);
}

- (void)_setCategoryTypes:(id)types
{
  v4 = [types copy];
  categoryTypes = self->_categoryTypes;
  self->_categoryTypes = v4;

  MEMORY[0x1EEE66BB8](v4, categoryTypes);
}

- (void)_setCountryCode:(id)code
{
  v4 = [code copy];
  countryCode = self->_countryCode;
  self->_countryCode = v4;

  MEMORY[0x1EEE66BB8](v4, countryCode);
}

- (BOOL)unitTesting_isIdentical:(id)identical
{
  identicalCopy = identical;
  if (![(HKUserDomainConcept *)self isEqual:identicalCopy])
  {
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = HKMedicalBaseUserDomainConcept;
  if (![(HKUserDomainConcept *)&v11 unitTesting_isIdentical:identicalCopy])
  {
    goto LABEL_9;
  }

  categoryTypes = self->_categoryTypes;
  v6 = identicalCopy[17];
  if (categoryTypes != v6 && (!v6 || ![(NSArray *)categoryTypes isEqual:?]))
  {
    goto LABEL_9;
  }

  countryCode = self->_countryCode;
  v8 = identicalCopy[18];
  if (countryCode == v8)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = [(NSString *)countryCode isEqual:?];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

@end