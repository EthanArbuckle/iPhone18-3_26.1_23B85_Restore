@interface CNContactRelationsDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (CNContactRelationsDescription)initWithLocalizationProvider:(Class)provider;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length;
- (id)_builtInExtendedLabels;
- (id)_builtInStandardLabels;
- (id)cachedLabelsForPreferredLanguages:(id)languages;
- (id)labelsForPreferredLanguages:(id)languages;
- (id)localizedStringForLabel:(id)label;
- (id)standardLabels;
- (id)standardLabelsWithOptions:(unint64_t)options;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value;
- (void)_addLocalizedLabels:(id)labels fromLanguagePlist:(id)plist languageIdentifier:(id)identifier toDictionary:(id)dictionary conflictInfo:(id)info;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNContactRelationsDescription

- (id)_builtInExtendedLabels
{
  if (_builtInExtendedLabels_cn_once_token_8 != -1)
  {
    [CNContactRelationsDescription _builtInExtendedLabels];
  }

  v3 = _builtInExtendedLabels_cn_once_object_8;

  return v3;
}

uint64_t __55__CNContactRelationsDescription__builtInExtendedLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Assistant>!$_", @"_$!<Manager>!$_", @"_$!<Colleague>!$_", @"_$!<Teacher>!$_", @"_$!<Sibling>!$_", @"_$!<YoungerSibling>!$_", @"_$!<ElderSibling>!$_", @"_$!<Sister>!$_", @"_$!<YoungerSister>!$_", @"_$!<YoungestSister>!$_", @"_$!<ElderSister>!$_", @"_$!<EldestSister>!$_", @"_$!<Brother>!$_", @"_$!<YoungerBrother>!$_", @"_$!<YoungestBrother>!$_", @"_$!<ElderBrother>!$_", @"_$!<EldestBrother>!$_", @"_$!<Friend>!$_", @"_$!<MaleFriend>!$_", @"_$!<FemaleFriend>!$_", @"_$!<Spouse>!$_", @"_$!<Wife>!$_", @"_$!<Husband>!$_", @"_$!<Partner>!$_", @"_$!<MalePartner>!$_", @"_$!<FemalePartner>!$_", @"_$!<GirlfriendOrBoyfriend>!$_", @"_$!<Girlfriend>!$_", @"_$!<Boyfriend>!$_", @"_$!<Parent>!$_", @"_$!<Mother>!$_", @"_$!<Father>!$_", @"_$!<Child>!$_", @"_$!<Daughter>!$_", @"_$!<Son>!$_", @"_$!<Grandparent>!$_", @"_$!<Grandmother>!$_", @"_$!<GrandmotherMothersMother>!$_", @"_$!<GrandmotherFathersMother>!$_", @"_$!<Grandfather>!$_", @"_$!<GrandfatherMothersFather>!$_", @"_$!<GrandfatherFathersFather>!$_", @"_$!<GreatGrandparent>!$_", @"_$!<GreatGrandfather>!$_", @"_$!<GreatGrandmother>!$_", @"_$!<Grandchild>!$_", @"_$!<Granddaughter>!$_", @"_$!<GranddaughterDaughtersDaughter>!$_", @"_$!<GranddaughterSonsDaughter>!$_", @"_$!<Grandson>!$_", @"_$!<GrandsonDaughtersSon>!$_", @"_$!<GrandsonSonsSon>!$_", @"_$!<GreatGrandchild>!$_", @"_$!<GreatGrandson>!$_", @"_$!<GreatGranddaughter>!$_", @"_$!<ParentInLaw>!$_", @"_$!<MotherInLaw>!$_", @"_$!<MotherInLawWifesMother>!$_", @"_$!<MotherInLawHusbandsMother>!$_", @"_$!<FatherInLaw>!$_", @"_$!<FatherInLawWifesFather>!$_"}];
  v1 = _builtInExtendedLabels_cn_once_object_8;
  _builtInExtendedLabels_cn_once_object_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactRelationsDescription)initWithLocalizationProvider:(Class)provider
{
  v4 = [(CNPropertyDescription *)self initWithKey:@"contactRelations" readSelector:sel_contactRelations writeSelector:sel_setContactRelations_];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.contacts.CNContactRelationsDescription", 0);
    generationQueue = v4->_generationQueue;
    v4->_generationQueue = v5;

    if (provider)
    {
      providerCopy = provider;
    }

    else
    {
      providerCopy = objc_opt_class();
    }

    provider = v4->_provider;
    v4->_provider = providerCopy;

    v9 = v4;
  }

  return v4;
}

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  contactRelations = [contactCopy contactRelations];
  if (!contactRelations)
  {
    contactRelations2 = [otherCopy contactRelations];
    if (!contactRelations2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  contactRelations3 = [contactCopy contactRelations];
  contactRelations4 = [otherCopy contactRelations];
  v11 = [contactRelations3 isEqual:contactRelations4];

  if (!contactRelations)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  contactCopy = contact;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_contactRelations", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[53];
  contactCopy[53] = v10;
}

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  withValueCopy = withValue;
  name = [value name];
  name2 = [withValueCopy name];

  if (name)
  {
    v8 = name;
  }

  else
  {
    v8 = &stru_1F094DAB0;
  }

  if (name2)
  {
    v9 = name2;
  }

  else
  {
    v9 = &stru_1F094DAB0;
  }

  v10 = [(__CFString *)v8 localizedCaseInsensitiveCompare:v9]== 0;

  return v10;
}

- (id)_builtInStandardLabels
{
  if (_builtInStandardLabels_cn_once_token_7 != -1)
  {
    [CNContactRelationsDescription _builtInStandardLabels];
  }

  v3 = _builtInStandardLabels_cn_once_object_7;

  return v3;
}

uint64_t __55__CNContactRelationsDescription__builtInStandardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Mother>!$_", @"_$!<Father>!$_", @"_$!<Parent>!$_", @"_$!<Brother>!$_", @"_$!<Sister>!$_", @"_$!<Son>!$_", @"_$!<Daughter>!$_", @"_$!<Child>!$_", @"_$!<Friend>!$_", @"_$!<Spouse>!$_", @"_$!<Partner>!$_", @"_$!<Assistant>!$_", @"_$!<Manager>!$_", 0}];
  v1 = _builtInStandardLabels_cn_once_object_7;
  _builtInStandardLabels_cn_once_object_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_addLocalizedLabels:(id)labels fromLanguagePlist:(id)plist languageIdentifier:(id)identifier toDictionary:(id)dictionary conflictInfo:(id)info
{
  plistCopy = plist;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  infoCopy = info;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __116__CNContactRelationsDescription__addLocalizedLabels_fromLanguagePlist_languageIdentifier_toDictionary_conflictInfo___block_invoke;
  v19[3] = &unk_1E74130E0;
  v20 = dictionaryCopy;
  v21 = identifierCopy;
  v22 = plistCopy;
  v23 = infoCopy;
  v15 = infoCopy;
  v16 = plistCopy;
  v17 = identifierCopy;
  v18 = dictionaryCopy;
  [labels _cn_each:v19];
}

void __116__CNContactRelationsDescription__addLocalizedLabels_fromLanguagePlist_languageIdentifier_toDictionary_conflictInfo___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];

  if (!v4)
  {
    v5 = MEMORY[0x1E69967A8];
    v6 = [MEMORY[0x1E695DF58] currentLocale];
    v7 = [v6 localizedStringForLanguageCode:*(a1 + 40)];
    v8 = [v5 pairWithFirst:v7 second:v3];

    v9 = [*(a1 + 48) objectForKey:v3];
    if ((*(*MEMORY[0x1E6996570] + 16))())
    {
      v10 = [*(a1 + 56) objectForKey:v9];
      if ([v10 count])
      {
        if ([v10 count] == 1)
        {
          v11 = [v10 firstObject];
          v12 = MEMORY[0x1E696AEC0];
          v13 = [v11 first];
          v14 = [v12 stringWithFormat:@"%@ (%@)", v9, v13];

          v15 = *(a1 + 32);
          v16 = [v11 second];
          [v15 setObject:v14 forKey:v16];
        }

        v17 = *(a1 + 56);
        v18 = [v10 arrayByAddingObject:v8];
        [v17 setObject:v18 forKey:v9];

        v19 = MEMORY[0x1E696AEC0];
        v20 = [MEMORY[0x1E695DF58] currentLocale];
        v21 = [v20 localizedStringForLanguageCode:*(a1 + 40)];
        v22 = [v19 stringWithFormat:@"%@ (%@)", v9, v21];

        v9 = v22;
      }

      else
      {
        v23 = *(a1 + 56);
        v25[0] = v8;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [v23 setObject:v24 forKey:v9];
      }

      [*(a1 + 32) setObject:v9 forKey:v3];
    }
  }
}

- (id)labelsForPreferredLanguages:(id)languages
{
  v62 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  v5 = MEMORY[0x1E695DFA0];
  _builtInStandardLabels = [(CNContactRelationsDescription *)self _builtInStandardLabels];
  v40 = [v5 orderedSetWithArray:_builtInStandardLabels];

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  selfCopy = self;
  v39 = languagesCopy;
  [(objc_class *)[(CNContactRelationsDescription *)self provider] supplementalLabelDictionaryPairsForLanguages:languagesCopy bundlePath:0];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v7 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v47 = 0;
    v48 = 0;
    v9 = 0;
    v10 = *v58;
    v41 = *MEMORY[0x1E6996570];
    v42 = *v58;
    do
    {
      v11 = 0;
      v45 = v8;
      do
      {
        if (*v58 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v57 + 1) + 8 * v11);
        first = [v12 first];
        v14 = first;
        if (!v9)
        {
          v9 = first;
          second = [v12 second];

          _builtInStandardLabels2 = [(CNContactRelationsDescription *)selfCopy _builtInStandardLabels];
          second2 = [v12 second];
          [(CNContactRelationsDescription *)selfCopy _addLocalizedLabels:_builtInStandardLabels2 fromLanguagePlist:v9 languageIdentifier:second2 toDictionary:dictionary conflictInfo:dictionary2];

          v48 = second;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v9;
          v54 = [v14 objectForKey:@"SupplementalRelationships"];
          v18 = [v54 componentsSeparatedByString:@" "];
          v19 = [v18 _cn_filter:v41];

          v53 = [v14 objectForKey:@"ExtendedRelevantRelationships"];
          v20 = [v53 componentsSeparatedByString:@" "];
          v21 = [v20 _cn_filter:v41];

          v52 = [v14 objectForKey:@"ExemptedStandardRelationships"];
          v22 = [v52 componentsSeparatedByString:@" "];
          v23 = [v22 _cn_filter:v41];

          [orderedSet addObjectsFromArray:v19];
          [orderedSet2 addObjectsFromArray:v21];
          second3 = [v12 second];
          [(CNContactRelationsDescription *)selfCopy _addLocalizedLabels:v19 fromLanguagePlist:v14 languageIdentifier:second3 toDictionary:dictionary conflictInfo:dictionary2];

          second4 = [v12 second];
          [(CNContactRelationsDescription *)selfCopy _addLocalizedLabels:v21 fromLanguagePlist:v14 languageIdentifier:second4 toDictionary:dictionary conflictInfo:dictionary2];

          v26 = [v23 count];
          if (v47)
          {
            if (v26)
            {
              v27 = [MEMORY[0x1E695DFD8] setWithArray:v23];
              [v47 intersectSet:v27];
            }

            else
            {
              [v47 removeAllObjects];
            }
          }

          else
          {
            if (v26)
            {
              [MEMORY[0x1E695DFA8] setWithArray:v23];
            }

            else
            {
              [MEMORY[0x1E695DFA8] set];
            }
            v47 = ;
          }

          v9 = v56;

          v10 = v42;
          v8 = v45;
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v8);
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v9 = 0;
  }

  _builtInExtendedLabels = [(CNContactRelationsDescription *)selfCopy _builtInExtendedLabels];
  [(CNContactRelationsDescription *)selfCopy _addLocalizedLabels:_builtInExtendedLabels fromLanguagePlist:v9 languageIdentifier:v48 toDictionary:dictionary conflictInfo:dictionary2];

  if (v47)
  {
    [v40 minusSet:v47];
  }

  [v40 minusOrderedSet:orderedSet];
  [v40 unionOrderedSet:orderedSet];
  v29 = [orderedSet2 mutableCopy];
  _builtInExtendedLabels2 = [(CNContactRelationsDescription *)selfCopy _builtInExtendedLabels];
  [v29 addObjectsFromArray:_builtInExtendedLabels2];

  if (([v47 containsObject:@"_$!<Other>!$_"] & 1) == 0)
  {
    [v40 addObject:@"_$!<Other>!$_"];
  }

  [v29 addObject:@"_$!<Other>!$_"];
  _builtInStandardLabels3 = [(CNContactRelationsDescription *)selfCopy _builtInStandardLabels];
  [orderedSet removeObjectsInArray:_builtInStandardLabels3];

  [orderedSet removeObject:@"_$!<Other>!$_"];
  v32 = [CNContactRelationsDescriptionLabels alloc];
  v33 = [v39 copy];
  array = [v40 array];
  array2 = [orderedSet array];
  array3 = [v29 array];
  array4 = [orderedSet2 array];
  v55 = [(CNContactRelationsDescriptionLabels *)v32 initWithPreferredLanguages:v33 standardLabels:array standardLocaleSpecificLabels:array2 extendedLabels:array3 extendedLocaleSpecificLabels:array4 localizedStringsByLabelKey:dictionary];

  return v55;
}

- (id)cachedLabelsForPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  preferredLanguages = [(objc_class *)[(CNContactRelationsDescription *)self provider] preferredLanguages];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  generationQueue = [(CNContactRelationsDescription *)self generationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__CNContactRelationsDescription_cachedLabelsForPreferredLanguages___block_invoke;
  block[3] = &unk_1E7413108;
  v11 = preferredLanguages;
  selfCopy = self;
  v13 = &v14;
  v7 = preferredLanguages;
  dispatch_sync(generationQueue, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __67__CNContactRelationsDescription_cachedLabelsForPreferredLanguages___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    v1 = [*(a1 + 40) cachedLabels];
    v6 = [v1 preferredLanguages];
    if (!v6)
    {

      goto LABEL_12;
    }

    v2 = v6;
    v5 = *(a1 + 32);
  }

  v7 = [*(a1 + 40) cachedLabels];
  v8 = [v7 preferredLanguages];
  v9 = [v5 isEqual:v8];

  if (!v4)
  {

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v16 = [*(a1 + 40) cachedLabels];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    return MEMORY[0x1EEE66BB8](v16, v18);
  }

  if (v9)
  {
    goto LABEL_12;
  }

LABEL_8:
  v10 = [*(a1 + 40) labelsForPreferredLanguages:*(a1 + 32)];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 40);
  v14 = *(*(*(a1 + 48) + 8) + 40);

  return [v13 setCachedLabels:v14];
}

- (id)localizedStringForLabel:(id)label
{
  labelCopy = label;
  preferredLanguages = [(objc_class *)[(CNContactRelationsDescription *)self provider] preferredLanguages];
  v6 = [(CNContactRelationsDescription *)self cachedLabelsForPreferredLanguages:preferredLanguages];

  localizedStringsByLabelKey = [v6 localizedStringsByLabelKey];
  v8 = [localizedStringsByLabelKey objectForKey:labelCopy];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {

    v8 = 0;
  }

  return v8;
}

- (id)standardLabels
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v4 = [(CNContactRelationsDescription *)self cachedLabelsForPreferredLanguages:preferredLanguages];
  standardLabels = [v4 standardLabels];

  return standardLabels;
}

- (id)standardLabelsWithOptions:(unint64_t)options
{
  switch(options)
  {
    case 2uLL:
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v6 = [(CNContactRelationsDescription *)self cachedLabelsForPreferredLanguages:preferredLanguages];
      standardLocaleSpecificLabels = [v6 standardLocaleSpecificLabels];
      goto LABEL_9;
    case 1uLL:
      preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
      v6 = [(CNContactRelationsDescription *)self cachedLabelsForPreferredLanguages:preferredLanguages];
      standardLocaleSpecificLabels = [v6 extendedLabels];
LABEL_9:
      standardLabels = standardLocaleSpecificLabels;

      goto LABEL_10;
    case 0uLL:
      standardLabels = [(CNContactRelationsDescription *)self standardLabels];
      goto LABEL_10;
  }

  if (options <= 3)
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v6 = [(CNContactRelationsDescription *)self cachedLabelsForPreferredLanguages:preferredLanguages];
    standardLocaleSpecificLabels = [v6 extendedLocaleSpecificLabels];
    goto LABEL_9;
  }

  standardLabels = MEMORY[0x1E695E0F0];
LABEL_10:

  return standardLabels;
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length
{
  v4 = [CNiOSABConversions stringFromABBytes:bytes length:length];
  if (v4)
  {
    v5 = [CNContactRelation contactRelationWithName:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A590];
  }

  return d != 0;
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value
{
  if (value)
  {
    v5 = CFGetTypeID(value);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [CNContactRelation contactRelationWithName:value];
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

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [valueCopy name];
  }

  else
  {
    name = 0;
  }

  return name;
}

@end