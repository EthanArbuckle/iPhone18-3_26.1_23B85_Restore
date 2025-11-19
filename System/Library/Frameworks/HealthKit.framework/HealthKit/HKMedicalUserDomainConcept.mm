@interface HKMedicalUserDomainConcept
- (BOOL)chartsBloodPressure;
- (BOOL)hidesOutOfRangeFilter;
- (BOOL)isLowUtility;
- (BOOL)unitTesting_isIdentical:(id)a3;
- (HKMedicalUserDomainConcept)initWithCategoryTypes:(id)a3 countryCode:(id)a4 codingCollection:(id)a5 propertyCollection:(id)a6;
- (HKMedicalUserDomainConcept)initWithCoder:(id)a3;
- (HKOntologyLocalizedEducationContent)educationContent;
- (id)_dataDescriptionAllowedForPublic:(BOOL)a3;
- (id)_generateSemanticIdentifier;
- (id)medicalConceptByAddingCategoryType:(int64_t)a3;
@end

@implementation HKMedicalUserDomainConcept

- (HKMedicalUserDomainConcept)initWithCategoryTypes:(id)a3 countryCode:(id)a4 codingCollection:(id)a5 propertyCollection:(id)a6
{
  v7.receiver = self;
  v7.super_class = HKMedicalUserDomainConcept;
  return [(HKMedicalBaseUserDomainConcept *)&v7 initWithCategoryTypes:a3 countryCode:a4 codingCollection:a5 propertyCollection:a6];
}

- (id)medicalConceptByAddingCategoryType:(int64_t)a3
{
  v5 = [(HKUserDomainConcept *)self modificationCopy];
  v6 = [(HKMedicalBaseUserDomainConcept *)self categoryTypes];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [v6 arrayByAddingObject:v7];
  [v5 _setCategoryTypes:v8];

  return v5;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKMedicalUserDomainConcept;
    v5 = [(HKMedicalBaseUserDomainConcept *)&v9 _dataDescriptionAllowedForPublic:0];
    v3 = [v5 mutableCopy];

    v6 = [(HKMedicalUserDomainConcept *)self educationContent];
    if (v6)
    {
      objc_msgSend(v3, "appendString:", @", education (");
      v7 = [v6 sections];
      [v3 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v7, &__block_literal_global_47}];

      [v3 appendString:@""]);
    }
  }

  return v3;
}

__CFString *__63__HKMedicalUserDomainConcept__dataDescriptionAllowedForPublic___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sectionType];

  return HKStringFromOntologyLocalizedEducationContentSectionType(v2);
}

- (HKMedicalUserDomainConcept)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKMedicalUserDomainConcept;
  return [(HKMedicalBaseUserDomainConcept *)&v4 initWithCoder:a3];
}

- (BOOL)chartsBloodPressure
{
  v2 = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:150004];
  v4 = [v3 numberValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)hidesOutOfRangeFilter
{
  v2 = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:150005];
  v4 = [v3 numberValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)isLowUtility
{
  v2 = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstBasicPropertyWithType:150009];
  v4 = [v3 numberValue];
  v5 = [v4 BOOLValue];

  return v5;
}

- (HKOntologyLocalizedEducationContent)educationContent
{
  v2 = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [v2 firstPropertyWithType:160019];

  return v3;
}

- (id)_generateSemanticIdentifier
{
  v3 = [(HKUserDomainConcept *)self firstOntologyCoding];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_4:
    v6 = [HKMedicalUserDomainConceptSemanticIdentifier alloc];
    v7 = [(HKMedicalBaseUserDomainConcept *)self countryCode];
    v8 = [v7 uppercaseString];
    v9 = [(HKMedicalUserDomainConceptSemanticIdentifier *)v6 initWithUUID:0 countryCode:v8 medicalCoding:v5];
    goto LABEL_5;
  }

  v5 = [(HKUserDomainConcept *)self firstAdhocCoding];
  if (v5)
  {
    goto LABEL_4;
  }

  v11 = [HKMedicalUserDomainConceptSemanticIdentifier alloc];
  v7 = [(HKUserDomainConcept *)self UUID];
  v8 = [(HKMedicalBaseUserDomainConcept *)self countryCode];
  v12 = [v8 uppercaseString];
  v9 = [(HKMedicalUserDomainConceptSemanticIdentifier *)v11 initWithUUID:v7 countryCode:v12 medicalCoding:0];

  v5 = 0;
LABEL_5:

  return v9;
}

- (BOOL)unitTesting_isIdentical:(id)a3
{
  v4 = a3;
  if ([(HKUserDomainConcept *)self isEqual:v4]&& (v12.receiver = self, v12.super_class = HKMedicalUserDomainConcept, [(HKMedicalBaseUserDomainConcept *)&v12 unitTesting_isIdentical:v4]))
  {
    v5 = [(HKMedicalUserDomainConcept *)self educationContent];
    v6 = [v4 educationContent];
    if (v5 == v6)
    {
      v10 = 1;
    }

    else
    {
      v7 = [v4 educationContent];
      if (v7)
      {
        v8 = [(HKMedicalUserDomainConcept *)self educationContent];
        v9 = [v4 educationContent];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end