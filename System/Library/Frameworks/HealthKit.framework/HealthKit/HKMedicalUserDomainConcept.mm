@interface HKMedicalUserDomainConcept
- (BOOL)chartsBloodPressure;
- (BOOL)hidesOutOfRangeFilter;
- (BOOL)isLowUtility;
- (BOOL)unitTesting_isIdentical:(id)identical;
- (HKMedicalUserDomainConcept)initWithCategoryTypes:(id)types countryCode:(id)code codingCollection:(id)collection propertyCollection:(id)propertyCollection;
- (HKMedicalUserDomainConcept)initWithCoder:(id)coder;
- (HKOntologyLocalizedEducationContent)educationContent;
- (id)_dataDescriptionAllowedForPublic:(BOOL)public;
- (id)_generateSemanticIdentifier;
- (id)medicalConceptByAddingCategoryType:(int64_t)type;
@end

@implementation HKMedicalUserDomainConcept

- (HKMedicalUserDomainConcept)initWithCategoryTypes:(id)types countryCode:(id)code codingCollection:(id)collection propertyCollection:(id)propertyCollection
{
  v7.receiver = self;
  v7.super_class = HKMedicalUserDomainConcept;
  return [(HKMedicalBaseUserDomainConcept *)&v7 initWithCategoryTypes:types countryCode:code codingCollection:collection propertyCollection:propertyCollection];
}

- (id)medicalConceptByAddingCategoryType:(int64_t)type
{
  modificationCopy = [(HKUserDomainConcept *)self modificationCopy];
  categoryTypes = [(HKMedicalBaseUserDomainConcept *)self categoryTypes];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [categoryTypes arrayByAddingObject:v7];
  [modificationCopy _setCategoryTypes:v8];

  return modificationCopy;
}

- (id)_dataDescriptionAllowedForPublic:(BOOL)public
{
  if (public)
  {
    v3 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = HKMedicalUserDomainConcept;
    v5 = [(HKMedicalBaseUserDomainConcept *)&v9 _dataDescriptionAllowedForPublic:0];
    v3 = [v5 mutableCopy];

    educationContent = [(HKMedicalUserDomainConcept *)self educationContent];
    if (educationContent)
    {
      objc_msgSend(v3, "appendString:", @", education (");
      sections = [educationContent sections];
      [v3 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{sections, &__block_literal_global_47}];

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

- (HKMedicalUserDomainConcept)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HKMedicalUserDomainConcept;
  return [(HKMedicalBaseUserDomainConcept *)&v4 initWithCoder:coder];
}

- (BOOL)chartsBloodPressure
{
  propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:150004];
  numberValue = [v3 numberValue];
  bOOLValue = [numberValue BOOLValue];

  return bOOLValue;
}

- (BOOL)hidesOutOfRangeFilter
{
  propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:150005];
  numberValue = [v3 numberValue];
  bOOLValue = [numberValue BOOLValue];

  return bOOLValue;
}

- (BOOL)isLowUtility
{
  propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstBasicPropertyWithType:150009];
  numberValue = [v3 numberValue];
  bOOLValue = [numberValue BOOLValue];

  return bOOLValue;
}

- (HKOntologyLocalizedEducationContent)educationContent
{
  propertyCollection = [(HKUserDomainConcept *)self propertyCollection];
  v3 = [propertyCollection firstPropertyWithType:160019];

  return v3;
}

- (id)_generateSemanticIdentifier
{
  firstOntologyCoding = [(HKUserDomainConcept *)self firstOntologyCoding];
  v4 = firstOntologyCoding;
  if (firstOntologyCoding)
  {
    firstAdhocCoding = firstOntologyCoding;
LABEL_4:
    v6 = [HKMedicalUserDomainConceptSemanticIdentifier alloc];
    countryCode = [(HKMedicalBaseUserDomainConcept *)self countryCode];
    uppercaseString = [countryCode uppercaseString];
    v9 = [(HKMedicalUserDomainConceptSemanticIdentifier *)v6 initWithUUID:0 countryCode:uppercaseString medicalCoding:firstAdhocCoding];
    goto LABEL_5;
  }

  firstAdhocCoding = [(HKUserDomainConcept *)self firstAdhocCoding];
  if (firstAdhocCoding)
  {
    goto LABEL_4;
  }

  v11 = [HKMedicalUserDomainConceptSemanticIdentifier alloc];
  countryCode = [(HKUserDomainConcept *)self UUID];
  uppercaseString = [(HKMedicalBaseUserDomainConcept *)self countryCode];
  v8UppercaseString = [uppercaseString uppercaseString];
  v9 = [(HKMedicalUserDomainConceptSemanticIdentifier *)v11 initWithUUID:countryCode countryCode:v8UppercaseString medicalCoding:0];

  firstAdhocCoding = 0;
LABEL_5:

  return v9;
}

- (BOOL)unitTesting_isIdentical:(id)identical
{
  identicalCopy = identical;
  if ([(HKUserDomainConcept *)self isEqual:identicalCopy]&& (v12.receiver = self, v12.super_class = HKMedicalUserDomainConcept, [(HKMedicalBaseUserDomainConcept *)&v12 unitTesting_isIdentical:identicalCopy]))
  {
    educationContent = [(HKMedicalUserDomainConcept *)self educationContent];
    educationContent2 = [identicalCopy educationContent];
    if (educationContent == educationContent2)
    {
      v10 = 1;
    }

    else
    {
      educationContent3 = [identicalCopy educationContent];
      if (educationContent3)
      {
        educationContent4 = [(HKMedicalUserDomainConcept *)self educationContent];
        educationContent5 = [identicalCopy educationContent];
        v10 = [educationContent4 isEqual:educationContent5];
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