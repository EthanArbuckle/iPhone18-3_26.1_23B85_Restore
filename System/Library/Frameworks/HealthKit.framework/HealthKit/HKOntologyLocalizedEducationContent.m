@interface HKOntologyLocalizedEducationContent
+ (id)_mergeDataFromSectionsInto:(id)a3 fromContent:(id)a4 options:(unint64_t)a5;
+ (id)mergeListsOfPropertiesWithType:(int64_t)a3 intoListOfProperties:(id)a4 fromListOfProperties:(id)a5 options:(unint64_t)a6;
+ (id)nullPropertyWithVersion:(int64_t)a3;
+ (id)nullPropertyWithVersion:(int64_t)a3 timestamp:(double)a4;
- (BOOL)isEqual:(id)a3;
- (HKOntologyLocalizedEducationContent)init;
- (HKOntologyLocalizedEducationContent)initWithCoder:(id)a3;
- (HKOntologyLocalizedEducationContent)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6;
- (id)_sectionsUniquedByLocaleSectionTypePairing;
- (id)allSectionsWithType:(int64_t)a3;
- (id)firstSectionWithType:(int64_t)a3;
- (id)valueDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKOntologyLocalizedEducationContent

- (HKOntologyLocalizedEducationContent)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKOntologyLocalizedEducationContent)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

+ (id)nullPropertyWithVersion:(int64_t)a3
{
  Current = CFAbsoluteTimeGetCurrent();

  return [a1 nullPropertyWithVersion:a3 timestamp:Current];
}

+ (id)nullPropertyWithVersion:(int64_t)a3 timestamp:(double)a4
{
  v6 = [a1 alloc];
  v7 = [v6 initWithSections:MEMORY[0x1E695E0F0] version:a3 timestamp:1 deleted:a4];

  return v7;
}

- (id)valueDescription
{
  v3 = [(NSArray *)self->_sections hk_map:&__block_literal_global_54];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [(NSArray *)self->_sections count];
  if ([(NSArray *)self->_sections count]== 1)
  {
    v7 = "";
  }

  else
  {
    v7 = "s";
  }

  v8 = [v3 componentsJoinedByString:{@", "}];
  v9 = [v4 stringWithFormat:@"<%@:%p with %ld section%s (%@)>", v5, self, v6, v7, v8];

  return v9;
}

__CFString *__55__HKOntologyLocalizedEducationContent_valueDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sectionType];

  return HKStringFromOntologyLocalizedEducationContentSectionType(v2);
}

+ (id)mergeListsOfPropertiesWithType:(int64_t)a3 intoListOfProperties:(id)a4 fromListOfProperties:(id)a5 options:(unint64_t)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v11 || ![v11 count])
  {
    v18 = v10;
LABEL_14:
    v19 = v18;
    goto LABEL_15;
  }

  if (!v10 || ![v10 count])
  {
    v18 = v12;
    goto LABEL_14;
  }

  if ([v10 count] != 1)
  {
    [HKOntologyLocalizedEducationContent mergeListsOfPropertiesWithType:a2 intoListOfProperties:a1 fromListOfProperties:? options:?];
  }

  if ([v12 count] != 1)
  {
    [HKOntologyLocalizedEducationContent mergeListsOfPropertiesWithType:a2 intoListOfProperties:a1 fromListOfProperties:? options:?];
  }

  v13 = [v10 firstObject];
  v14 = [v12 firstObject];
  v15 = [a1 _mergeDataFromSectionsInto:v13 fromContent:v14 options:a6];
  v16 = v15;
  if (v15 == v13)
  {
    v17 = v10;
  }

  else if (v15 == v14)
  {
    v17 = v12;
  }

  else
  {
    v22[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  }

  v19 = v17;

LABEL_15:
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_mergeDataFromSectionsInto:(id)a3 fromContent:(id)a4 options:(unint64_t)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v7 version];
  if (v9 > [v8 version])
  {
    goto LABEL_2;
  }

  v12 = [v7 version];
  v13 = [v8 version];
  v11 = 0;
  if ((a5 & 1) == 0)
  {
    v10 = v8;
    if (v12 != v13)
    {
      goto LABEL_8;
    }

    [v7 timestamp];
    v15 = v14;
    [v8 timestamp];
    if (v15 > v16)
    {
LABEL_2:
      v10 = v7;

      v11 = 1;
      goto LABEL_8;
    }

    v11 = 0;
  }

  v10 = v8;
LABEL_8:
  if ([v10 isDeleted])
  {
    v17 = v10;
  }

  else
  {
    v37 = v11;
    v35 = v10;
    v18 = [v8 _sectionsUniquedByLocaleSectionTypePairing];
    v36 = v7;
    v19 = [v7 _sectionsUniquedByLocaleSectionTypePairing];
    v38 = [v18 mutableCopy];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          v26 = [v20 objectForKeyedSubscript:v25];
          v27 = [v18 objectForKeyedSubscript:v25];
          v28 = [HKOntologyLocalizedEducationContentSection sectionByMerging:v27 sectionToMergeFrom:v26 options:a5];
          if (v28 != v27)
          {
            [v38 setObject:v28 forKeyedSubscript:v25];
            v37 = 1;
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v22);
    }

    if (v37)
    {
      v29 = [HKOntologyLocalizedEducationContent alloc];
      v30 = v38;
      v31 = [v38 allValues];
      v10 = v35;
      v32 = [v35 version];
      [v35 timestamp];
      v17 = [(HKOntologyLocalizedEducationContent *)v29 initWithSections:v31 version:v32 timestamp:0 deleted:?];

      v7 = v36;
    }

    else
    {
      v17 = v8;
      v7 = v36;
      v10 = v35;
      v30 = v38;
    }
  }

  v33 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_sectionsUniquedByLocaleSectionTypePairing
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        [v3 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8.receiver = self;
      v8.super_class = HKOntologyLocalizedEducationContent;
      if ([(HKUserDomainConceptProperty *)&v8 isEqual:v5])
      {
        v6 = [(NSArray *)self->_sections isEqual:v5->_sections];
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
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKOntologyLocalizedEducationContent;
  v4 = a3;
  [(HKUserDomainConceptProperty *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sections forKey:{@"sections", v5.receiver, v5.super_class}];
}

- (HKOntologyLocalizedEducationContent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [v4 hk_typesForArrayOf:objc_opt_class()];
  v7 = [v5 decodeObjectOfClasses:v6 forKey:@"sections"];

  v10.receiver = self;
  v10.super_class = HKOntologyLocalizedEducationContent;
  v8 = [(HKUserDomainConceptProperty *)&v10 initWithCoder:v5];

  if (v8)
  {
    objc_storeStrong(&v8->_sections, v7);
  }

  return v8;
}

- (id)firstSectionWithType:(int64_t)a3
{
  sections = self->_sections;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__HKOntologyLocalizedEducationContent_firstSectionWithType___block_invoke;
  v6[3] = &__block_descriptor_40_e52_B16__0__HKOntologyLocalizedEducationContentSection_8l;
  v6[4] = a3;
  v4 = [(NSArray *)sections hk_firstObjectPassingTest:v6];

  return v4;
}

- (id)allSectionsWithType:(int64_t)a3
{
  sections = self->_sections;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__HKOntologyLocalizedEducationContent_allSectionsWithType___block_invoke;
  v6[3] = &__block_descriptor_40_e52_B16__0__HKOntologyLocalizedEducationContentSection_8l;
  v6[4] = a3;
  v4 = [(NSArray *)sections hk_filter:v6];

  return v4;
}

- (void)initWithSections:(uint64_t)a1 version:(uint64_t)a2 timestamp:deleted:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOntologyLocalizedEducationContent.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"sections != nil"}];
}

+ (void)mergeListsOfPropertiesWithType:(uint64_t)a1 intoListOfProperties:(uint64_t)a2 fromListOfProperties:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOntologyLocalizedEducationContent.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"intoListOfProperties.count == 1"}];
}

+ (void)mergeListsOfPropertiesWithType:(uint64_t)a1 intoListOfProperties:(uint64_t)a2 fromListOfProperties:options:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOntologyLocalizedEducationContent.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"fromListOfProperties.count == 1"}];
}

@end