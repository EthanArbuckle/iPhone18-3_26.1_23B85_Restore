@interface HKMedicalBaseUserDomainConcept
- (BOOL)unitTesting_isIdentical:(id)a3;
- (HKMedicalBaseUserDomainConcept)init;
- (HKMedicalBaseUserDomainConcept)initWithCategoryTypes:(id)a3 countryCode:(id)a4 codingCollection:(id)a5 propertyCollection:(id)a6;
- (HKMedicalBaseUserDomainConcept)initWithCoder:(id)a3;
- (HKMedicalBaseUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5;
- (NSDictionary)preferredNameByLocaleIdentifier;
- (NSString)ontologyPreferredName;
- (id)_dataDescriptionAllowedForPublic:(BOOL)a3;
- (id)_deepCopy;
- (id)_generateSemanticIdentifier;
- (id)medicalConceptByAddingCategoryType:(int64_t)a3;
- (id)medicalConceptByReplacingCategoryTypes:(id)a3;
- (id)medicalConceptByReplacingCategoryTypes:(id)a3 codingCollection:(id)a4 linkCollection:(id)a5;
- (id)semanticIdentifier;
- (void)_setCategoryTypes:(id)a3;
- (void)_setCountryCode:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (HKMedicalBaseUserDomainConcept)initWithCodingCollection:(id)a3 linkCollection:(id)a4 propertyCollection:(id)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The -%@ method is not available on %@", v8, objc_opt_class()}];

  return 0;
}

- (HKMedicalBaseUserDomainConcept)initWithCategoryTypes:(id)a3 countryCode:(id)a4 codingCollection:(id)a5 propertyCollection:(id)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = HKMedicalBaseUserDomainConcept;
  v12 = [(HKUserDomainConcept *)&v18 initWithCodingCollection:a5 linkCollection:0 propertyCollection:a6];
  if (v12)
  {
    v13 = [v10 copy];
    categoryTypes = v12->_categoryTypes;
    v12->_categoryTypes = v13;

    v15 = [v11 copy];
    countryCode = v12->_countryCode;
    v12->_countryCode = v15;

    v12->_computedPropertyLock._os_unfair_lock_opaque = 0;
  }

  return v12;
}

- (id)medicalConceptByReplacingCategoryTypes:(id)a3 codingCollection:(id)a4 linkCollection:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(HKUserDomainConcept *)self modificationCopy];
  [v11 _setCategoryTypes:v10];

  [v11 _setCodingCollection:v9];
  [v11 _setLinkCollection:v8];

  return v11;
}

- (id)medicalConceptByReplacingCategoryTypes:(id)a3
{
  v4 = a3;
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  [v5 _setCategoryTypes:v4];

  return v5;
}

- (id)medicalConceptByAddingCategoryType:(int64_t)a3
{
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  categoryTypes = self->_categoryTypes;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [(NSArray *)categoryTypes arrayByAddingObject:v7];
  [v5 _setCategoryTypes:v8];

  return v5;
}

- (id)_deepCopy
{
  v5.receiver = self;
  v5.super_class = HKMedicalBaseUserDomainConcept;
  v3 = [(HKUserDomainConcept *)&v5 _deepCopy];
  [v3 _setCategoryTypes:self->_categoryTypes];
  [v3 _setCountryCode:self->_countryCode];

  return v3;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E696AD60]);
    v6 = [(HKMedicalBaseUserDomainConcept *)self ontologyPreferredName];
    v3 = [v5 initWithFormat:@"%@", v6];

    v7 = [(HKMedicalBaseUserDomainConcept *)self countryCode];

    if (v7)
    {
      v8 = [(HKMedicalBaseUserDomainConcept *)self countryCode];
      [v3 appendFormat:@" %@", v8];
    }

    v9 = [(HKMedicalBaseUserDomainConcept *)self categoryTypes];
    v10 = [v9 count];

    if (v10)
    {
      objc_msgSend(v3, "appendString:", @" (");
      v11 = [(HKMedicalBaseUserDomainConcept *)self categoryTypes];
      [v3 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v11, &__block_literal_global_125}];

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
    v3 = [(HKMedicalBaseUserDomainConcept *)self _generateSemanticIdentifier];
    semanticIdentifier = self->_semanticIdentifier;
    self->_semanticIdentifier = v3;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKMedicalBaseUserDomainConcept;
  v4 = a3;
  [(HKUserDomainConcept *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_categoryTypes forKey:{@"categoryTypes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_countryCode forKey:@"countryCode"];
}

- (HKMedicalBaseUserDomainConcept)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"categoryTypes"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
  v9.receiver = self;
  v9.super_class = HKMedicalBaseUserDomainConcept;
  v7 = [(HKUserDomainConcept *)&v9 initWithCoder:v4];

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
  v2 = [(HKMedicalBaseUserDomainConcept *)self preferredNameByLocaleIdentifier];
  v3 = [v2 objectForKeyedSubscript:@"(null)"];

  return v3;
}

- (NSDictionary)preferredNameByLocaleIdentifier
{
  os_unfair_lock_lock(&self->_computedPropertyLock);
  if (!self->_preferredNameByLocaleIdentifier)
  {
    v3 = [(HKUserDomainConcept *)self propertyCollection];
    v4 = [v3 allPropertiesWithType:160012];

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

- (void)_setCategoryTypes:(id)a3
{
  v4 = [a3 copy];
  categoryTypes = self->_categoryTypes;
  self->_categoryTypes = v4;

  MEMORY[0x1EEE66BB8](v4, categoryTypes);
}

- (void)_setCountryCode:(id)a3
{
  v4 = [a3 copy];
  countryCode = self->_countryCode;
  self->_countryCode = v4;

  MEMORY[0x1EEE66BB8](v4, countryCode);
}

- (BOOL)unitTesting_isIdentical:(id)a3
{
  v4 = a3;
  if (![(HKUserDomainConcept *)self isEqual:v4])
  {
    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = HKMedicalBaseUserDomainConcept;
  if (![(HKUserDomainConcept *)&v11 unitTesting_isIdentical:v4])
  {
    goto LABEL_9;
  }

  categoryTypes = self->_categoryTypes;
  v6 = v4[17];
  if (categoryTypes != v6 && (!v6 || ![(NSArray *)categoryTypes isEqual:?]))
  {
    goto LABEL_9;
  }

  countryCode = self->_countryCode;
  v8 = v4[18];
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