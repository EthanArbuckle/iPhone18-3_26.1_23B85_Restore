@interface CNUnifiedContacts
+ (BOOL)canUnifyLabel:(id)label withLabel:(id)withLabel forProperty:(id)property;
+ (BOOL)doesMultiValue:(id)value needLabeledValue:(id)labeledValue fromMultiValue:(id)multiValue forProperty:(id)property;
+ (BOOL)shouldIncludeLabeledValue:(id)value fromSource:(id)source inDestination:(id)destination forProperty:(id)property;
+ (BOOL)shouldLabeledValue:(id)value replaceInferiorValueInMultiValue:(id)multiValue forProperty:(id)property;
+ (id)_unifyContactsSortedByPreference:(void *)preference options:;
+ (id)findFirstIdentifier:(void *)identifier inMultiValue:;
+ (id)firstNonNilValueForProperty:(id)property inContacts:(id)contacts;
+ (id)identifierMapForUnifiedContact:(void *)contact backingContacts:;
+ (id)identifierMapForUnifiedMultiValue:(void *)value backingMultiValues:(void *)values forProperty:;
+ (id)imageValuePropertiesByKey;
+ (id)imageValuePropertyKeys;
+ (id)indexesOfLabeledValuesUnifiableWithLabelValuePair:(id)pair inMultiValue:(id)value forProperty:(id)property;
+ (id)indexesOfValuesInferiorTo:(id)to inMultiValue:(id)value forProperty:(id)property;
+ (id)makeNonNameSingleValuePropertiesByKey;
+ (id)nonNameSingleValuePropertiesByKey;
+ (id)sortedContacts:(id)contacts withPreferredContact:(id)contact;
+ (id)unifiedIdentifiersForLabeledValue:(id)value inUnifiedMap:(id)map forProperty:(id)property;
+ (id)unifiedIdentifiersForValue:(id)value inUnifiedMap:(id)map forProperty:(id)property;
+ (id)unifyAvailableKeysOfContacts:(id)contacts;
+ (id)unifyMultivalues:(void *)multivalues forProperty:;
+ (id)unifyMultivalues:(void *)multivalues forProperty:(void *)property options:;
+ (id)wallpaperValuePropertiesByKey;
+ (id)wallpaperValuePropertyKeys;
+ (uint64_t)countOfLabel:(void *)label value:(void *)value inMultiValue:(void *)multiValue forProperty:;
+ (uint64_t)indexOfPreferredContactForUnifying:(int)unifying includingMainStoreContacts:;
+ (uint64_t)indexOfUnifiedIdentifier:(void *)identifier onNonUnifiedMultiValue:(void *)value withIdentifierMap:;
+ (unint64_t)countOfLabelIncludingEquivalents:(id)equivalents value:(id)value inMultiValue:(id)multiValue forProperty:(id)property;
+ (unint64_t)countOfLabelsUnifiableWithLabel:(id)label valuesUnifiableWithValue:(id)value inMultiValue:(id)multiValue forProperty:(id)property;
+ (unint64_t)indexOfPreferredContactForImage:(id)image;
+ (unint64_t)indexOfPreferredContactForWallpaper:(id)wallpaper prefersSharedImage:(BOOL)image;
+ (unint64_t)indexOfValueMostInferiorTo:(id)to inMultiValue:(id)value forProperty:(id)property;
+ (void)addLinkedIdentifier:(void *)identifier toLabeledValue:;
+ (void)addLinkedLabeledValue:(id)value toLabeledValue:(id)labeledValue forProperty:(id)property;
+ (void)correlateIdentifiersOfUnifiedMap:(void *)map toIdentifiersOfMultiValueMap:(void *)valueMap intoMap:(void *)intoMap forProperty:;
+ (void)identifierMapForUnifiedMultiValue:(void *)value backingMultiValues:(void *)values intoMap:(void *)map forProperty:;
+ (void)replaceInferiorValueInMultiValue:(id)value withEntryAtIndex:(unint64_t)index fromMultiValue:(id)multiValue forProperty:(id)property;
+ (void)unifyImageOfContacts:(id)contacts intoContact:(id)contact availableKeyDescriptor:(id)descriptor;
+ (void)unifyMultiValue:(id)value intoMultiValue:(id)multiValue forProperty:(id)property;
+ (void)unifyMultiValuesOfContacts:(void *)contacts intoContact:(void *)contact availableKeyDescriptor:(void *)descriptor options:;
+ (void)unifyNamesOfContacts:(id)contacts withPreferredContact:(id)contact intoContact:(id)intoContact availableKeyDescriptor:(id)descriptor;
+ (void)unifyNonNameSingleValuesOfContacts:(id)contacts withPreferredContact:(id)contact intoContact:(id)intoContact availableKeyDescriptor:(id)descriptor;
+ (void)unifySingleValuesProperties:(id)properties ofContacts:(id)contacts intoContact:(id)contact availableKeyDescriptor:(id)descriptor;
+ (void)unifyWallpaperOfContacts:(id)contacts intoContact:(id)contact availableKeyDescriptor:(id)descriptor;
@end

@implementation CNUnifiedContacts

+ (id)nonNameSingleValuePropertiesByKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CNUnifiedContacts_nonNameSingleValuePropertiesByKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (nonNameSingleValuePropertiesByKey_cn_once_token_4 != -1)
  {
    dispatch_once(&nonNameSingleValuePropertiesByKey_cn_once_token_4, block);
  }

  v2 = nonNameSingleValuePropertiesByKey_cn_once_object_4;

  return v2;
}

void __54__CNUnifiedContacts_nonNameSingleValuePropertiesByKey__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) makeNonNameSingleValuePropertiesByKey];
  v1 = [v3 copy];
  v2 = nonNameSingleValuePropertiesByKey_cn_once_object_4;
  nonNameSingleValuePropertiesByKey_cn_once_object_4 = v1;
}

+ (id)makeNonNameSingleValuePropertiesByKey
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = +[CN writableSingleValueContactProperties];
  v3 = [v2 mutableCopy];
  v4 = +[CN namePrefixDescription];
  v19[0] = v4;
  v5 = +[CN givenNameDescription];
  v19[1] = v5;
  v6 = +[CN middleNameDescription];
  v19[2] = v6;
  v7 = +[CN familyNameDescription];
  v19[3] = v7;
  v8 = +[CN nameSuffixDescription];
  v19[4] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  [v3 removeObjectsInArray:v9];

  v10 = +[CN preferredForNameDescription];
  v18[0] = v10;
  v11 = +[CN preferredForImageDescription];
  v18[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v3 removeObjectsInArray:v12];

  imageValuePropertiesByKey = [self imageValuePropertiesByKey];
  allValues = [imageValuePropertiesByKey allValues];
  [v3 removeObjectsInArray:allValues];

  v15 = [v3 _cn_indexBy:&__block_literal_global_54];

  return v15;
}

void __46__CNUnifiedContacts_imageValuePropertiesByKey__block_invoke()
{
  v12[8] = *MEMORY[0x1E69E9840];
  v0 = +[CN imageDataDescription];
  v12[0] = v0;
  v1 = +[CN cropRectDescription];
  v12[1] = v1;
  v2 = +[CN thumbnailImageDataDescription];
  v12[2] = v2;
  v3 = +[CN preferredLikenessSourceDescription];
  v12[3] = v3;
  v4 = +[CN preferredApplePersonaIdentifierDescription];
  v12[4] = v4;
  v5 = +[CN isUsingSharedPhotoDescription];
  v12[5] = v5;
  v6 = +[CN fullscreenImageDataDescription];
  v12[6] = v6;
  v7 = +[CN syncImageDataDescription];
  v12[7] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];
  v9 = [v8 _cn_indexBy:&__block_literal_global_46];
  v10 = [v9 copy];
  v11 = imageValuePropertiesByKey_cn_once_object_0;
  imageValuePropertiesByKey_cn_once_object_0 = v10;
}

void __43__CNUnifiedContacts_imageValuePropertyKeys__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) imageValuePropertiesByKey];
  v1 = [v4 allKeys];
  v2 = [CNContactKeyVector keyVectorWithKeys:v1];
  v3 = imageValuePropertyKeys_cn_once_object_2;
  imageValuePropertyKeys_cn_once_object_2 = v2;
}

+ (id)imageValuePropertyKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CNUnifiedContacts_imageValuePropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (imageValuePropertyKeys_cn_once_token_2 != -1)
  {
    dispatch_once(&imageValuePropertyKeys_cn_once_token_2, block);
  }

  v2 = imageValuePropertyKeys_cn_once_object_2;

  return v2;
}

+ (id)imageValuePropertiesByKey
{
  if (imageValuePropertiesByKey_cn_once_token_0 != -1)
  {
    +[CNUnifiedContacts imageValuePropertiesByKey];
  }

  v3 = imageValuePropertiesByKey_cn_once_object_0;

  return v3;
}

+ (id)wallpaperValuePropertyKeys
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CNUnifiedContacts_wallpaperValuePropertyKeys__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (wallpaperValuePropertyKeys_cn_once_token_3 != -1)
  {
    dispatch_once(&wallpaperValuePropertyKeys_cn_once_token_3, block);
  }

  v2 = wallpaperValuePropertyKeys_cn_once_object_3;

  return v2;
}

void __47__CNUnifiedContacts_wallpaperValuePropertyKeys__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) wallpaperValuePropertiesByKey];
  v1 = [v4 allKeys];
  v2 = [CNContactKeyVector keyVectorWithKeys:v1];
  v3 = wallpaperValuePropertyKeys_cn_once_object_3;
  wallpaperValuePropertyKeys_cn_once_object_3 = v2;
}

+ (id)wallpaperValuePropertiesByKey
{
  if (wallpaperValuePropertiesByKey_cn_once_token_1 != -1)
  {
    +[CNUnifiedContacts wallpaperValuePropertiesByKey];
  }

  v3 = wallpaperValuePropertiesByKey_cn_once_object_1;

  return v3;
}

void __50__CNUnifiedContacts_wallpaperValuePropertiesByKey__block_invoke()
{
  v7[3] = *MEMORY[0x1E69E9840];
  v0 = +[CN wallpaperDescription];
  v1 = +[CN wallpaperMetadataDescription];
  v7[1] = v1;
  v2 = +[CN watchWallpaperImageDataDescription];
  v7[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v3 _cn_indexBy:&__block_literal_global_50];
  v5 = [v4 copy];
  v6 = wallpaperValuePropertiesByKey_cn_once_object_1;
  wallpaperValuePropertiesByKey_cn_once_object_1 = v5;
}

+ (uint64_t)indexOfPreferredContactForUnifying:(int)unifying includingMainStoreContacts:
{
  v4 = a2;
  objc_opt_self();
  if (!unifying || (v5 = [v4 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_43], v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [v4 _cn_indexOfFirstObjectPassingTest:&__block_literal_global_32];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6;
    }
  }

  return v5;
}

+ (id)_unifyContactsSortedByPreference:(void *)preference options:
{
  v4 = a2;
  preferenceCopy = preference;
  v6 = objc_opt_self();
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    firstObject = 0;
  }

  else
  {
    v8 = [v4 count];
    firstObject = [v4 firstObject];
    if (v8 != 1)
    {
      v9 = [v6 unifyAvailableKeysOfContacts:v4];
      if ([preferenceCopy shouldIncludeMainStoreContacts] && (objc_msgSend(firstObject, "linkIdentifier"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(firstObject, "identifier"), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = v10;
        v12 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v10 availableKeyDescriptor:v9];
        [v6 unifyNamesOfContacts:v4 withPreferredContact:firstObject intoContact:v12 availableKeyDescriptor:v9];
        [v6 unifyNonNameSingleValuesOfContacts:v4 withPreferredContact:firstObject intoContact:v12 availableKeyDescriptor:v9];
        [v6 unifyImageOfContacts:v4 intoContact:v12 availableKeyDescriptor:v9];
        [v6 unifyWallpaperOfContacts:v4 intoContact:v12 availableKeyDescriptor:v9];
        [(CNUnifiedContacts *)v6 unifyMultiValuesOfContacts:v4 intoContact:v12 availableKeyDescriptor:v9 options:preferenceCopy];
        [(CNMutableContact *)v12 setLinkedContacts:v4];
      }

      else
      {
        v12 = 0;
      }

      firstObject = v12;
    }
  }

  return firstObject;
}

+ (id)unifyMultivalues:(void *)multivalues forProperty:
{
  multivaluesCopy = multivalues;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = +[CNContactUnificationOptions sharedInstance];
  v8 = [(CNUnifiedContacts *)v6 unifyMultivalues:v5 forProperty:multivaluesCopy options:v7];

  return v8;
}

+ (id)unifyMultivalues:(void *)multivalues forProperty:(void *)property options:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a2;
  multivaluesCopy = multivalues;
  propertyCopy = property;
  v9 = objc_opt_self();
  v10 = [v6 _cn_filter:*MEMORY[0x1E6996538]];
  if ([v10 count])
  {
    if ([v10 count] == 1)
    {
      firstObject = [v10 firstObject];
LABEL_4:
      v12 = firstObject;
      goto LABEL_17;
    }

    labeledValueUnificationThreshold = [propertyCopy labeledValueUnificationThreshold];
    if (labeledValueUnificationThreshold != 0x7FFFFFFFFFFFFFFFLL)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__CNUnifiedContacts_unifyMultivalues_forProperty_options___block_invoke;
      aBlock[3] = &__block_descriptor_40_e17_B16__0__NSArray_8l;
      aBlock[4] = labeledValueUnificationThreshold;
      v14 = _Block_copy(aBlock);
      v15 = [v10 _cn_any:v14];

      if (v15)
      {
        firstObject = [v10 _cn_flatten];
        goto LABEL_4;
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v9 unifyMultiValue:*(*(&v23 + 1) + 8 * i) intoMultiValue:array forProperty:{multivaluesCopy, v23}];
        }

        v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v19);
    }

    v12 = [array copy];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

LABEL_17:

  return v12;
}

+ (id)identifierMapForUnifiedContact:(void *)contact backingContacts:
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  contactCopy = contact;
  v5 = objc_opt_self();
  multiDictionary = [MEMORY[0x1E6996780] multiDictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = +[CN writableMultiValueContactProperties];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v4 isKeyAvailable:v12];

        if (v13)
        {
          valueForKeyTransform = [v11 valueForKeyTransform];
          v15 = (valueForKeyTransform)[2](valueForKeyTransform, v4);

          valueForKeyTransform2 = [v11 valueForKeyTransform];
          v17 = [contactCopy _cn_map:valueForKeyTransform2];

          [(CNUnifiedContacts *)v5 identifierMapForUnifiedMultiValue:v15 backingMultiValues:v17 intoMap:multiDictionary forProperty:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  return multiDictionary;
}

+ (id)identifierMapForUnifiedMultiValue:(void *)value backingMultiValues:(void *)values forProperty:
{
  valuesCopy = values;
  valueCopy = value;
  v8 = a2;
  v9 = objc_opt_self();
  multiDictionary = [MEMORY[0x1E6996780] multiDictionary];
  [(CNUnifiedContacts *)v9 identifierMapForUnifiedMultiValue:v8 backingMultiValues:valueCopy intoMap:multiDictionary forProperty:valuesCopy];

  return multiDictionary;
}

+ (uint64_t)indexOfUnifiedIdentifier:(void *)identifier onNonUnifiedMultiValue:(void *)value withIdentifierMap:
{
  v6 = a2;
  identifierCopy = identifier;
  valueCopy = value;
  v9 = objc_opt_self();
  v10 = [valueCopy objectsForKey:v6];

  v11 = [(CNUnifiedContacts *)v9 findFirstIdentifier:v10 inMultiValue:identifierCopy];
  if (!v11)
  {
    v11 = v6;
  }

  v12 = [CNLabeledValue testMatchingIdentifier:v11];
  v13 = [identifierCopy indexOfObjectPassingTest:v12];

  return v13;
}

+ (void)addLinkedIdentifier:(void *)identifier toLabeledValue:
{
  v7 = a2;
  identifierCopy = identifier;
  objc_opt_self();
  if (v7)
  {
    linkedIdentifiers = [identifierCopy linkedIdentifiers];
    v6 = [linkedIdentifiers mutableCopy];

    if (!v6)
    {
      v6 = [MEMORY[0x1E695DFA8] set];
    }

    [v6 addObject:v7];
    [identifierCopy setLinkedIdentifiers:v6];
  }
}

+ (unint64_t)indexOfPreferredContactForWallpaper:(id)wallpaper prefersSharedImage:(BOOL)image
{
  imageCopy = image;
  wallpaperCopy = wallpaper;
  v6 = wallpaperCopy;
  if (!imageCopy || (v7 = [wallpaperCopy indexOfObjectPassingTest:&__block_literal_global_35_0], v7 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_37];
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

uint64_t __76__CNUnifiedContacts_indexOfPreferredContactForWallpaper_prefersSharedImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isKeyAvailable:@"isUsingSharedPhoto"])
  {
    v3 = [v2 isUsingSharedPhoto];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __76__CNUnifiedContacts_indexOfPreferredContactForWallpaper_prefersSharedImage___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isKeyAvailable:@"preferredForImage"])
  {
    v3 = [v2 isPreferredForImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (unint64_t)indexOfPreferredContactForImage:(id)image
{
  result = [image indexOfObjectPassingTest:&__block_literal_global_39_0];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

uint64_t __53__CNUnifiedContacts_indexOfPreferredContactForImage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isKeyAvailable:@"preferredForImage"])
  {
    v3 = [v2 isPreferredForImage];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)unifyMultiValuesOfContacts:(void *)contacts intoContact:(void *)contact availableKeyDescriptor:(void *)descriptor options:
{
  v49 = *MEMORY[0x1E69E9840];
  v35 = a2;
  contactsCopy = contacts;
  contactCopy = contact;
  descriptorCopy = descriptor;
  v30 = objc_opt_self();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = +[CN writableMultiValueContactProperties];
  v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    v12 = *MEMORY[0x1E6996588];
    v33 = *v44;
    v34 = contactCopy;
    do
    {
      v13 = 0;
      v36 = v10;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * v13);
        v15 = [v14 key];
        v16 = [contactCopy containsKey:v15];

        if (v16)
        {
          v38 = v13;
          v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v18 = v35;
          v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v40;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v40 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v39 + 1) + 8 * i);
                v24 = [v14 key];
                v25 = [v23 isKeyAvailable:v24];

                if (v25)
                {
                  v26 = [v14 CNValueForContact:v23];
                  v27 = (*(v12 + 16))(v12, v26);
                  [v17 addObject:v27];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v20);
          }

          if ([v17 count])
          {
            v28 = [(CNUnifiedContacts *)v30 unifyMultivalues:v17 forProperty:v14 options:descriptorCopy];
            v29 = [v14 key];
            [contactsCopy setValue:v28 forKey:v29];
          }

          v11 = v33;
          contactCopy = v34;
          v10 = v36;
          v13 = v38;
        }

        ++v13;
      }

      while (v13 != v10);
      v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }
}

+ (id)unifyAvailableKeysOfContacts:(id)contacts
{
  v21 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [contactsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_18;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v17;
  v8 = *MEMORY[0x1E695D930];
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(contactsCopy);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      storeIdentifier = [v10 storeIdentifier];

      if (!storeIdentifier)
      {
        keyVector = [v10 keyVector];
        if (keyVector)
        {
          if (v6)
          {
LABEL_9:
            if (([keyVector isEqual:v6] & 1) == 0)
            {
              [MEMORY[0x1E695DF30] raise:v8 format:@"Cannot unify contacts with different available keys."];
            }

            goto LABEL_13;
          }
        }

        else
        {
          keyVector = [MEMORY[0x1E695DFB0] null];
          if (v6)
          {
            goto LABEL_9;
          }
        }

        v6 = keyVector;
LABEL_13:

        continue;
      }
    }

    v5 = [contactsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v5);
LABEL_18:
  v13 = (*(*MEMORY[0x1E6996590] + 16))();

  if (v13)
  {
    v14 = [v13 keyVectorByAddingKey:@"linkIdentifier"];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (void)unifyNamesOfContacts:(id)contacts withPreferredContact:(id)contact intoContact:(id)intoContact availableKeyDescriptor:(id)descriptor
{
  contactCopy = contact;
  intoContactCopy = intoContact;
  if ([contactCopy isKeyAvailable:@"namePrefix"])
  {
    namePrefix = [contactCopy namePrefix];
    [intoContactCopy setNamePrefix:namePrefix];
  }

  if ([contactCopy isKeyAvailable:@"givenName"])
  {
    givenName = [contactCopy givenName];
    [intoContactCopy setGivenName:givenName];
  }

  if ([contactCopy isKeyAvailable:@"middleName"])
  {
    middleName = [contactCopy middleName];
    [intoContactCopy setMiddleName:middleName];
  }

  if ([contactCopy isKeyAvailable:@"familyName"])
  {
    familyName = [contactCopy familyName];
    [intoContactCopy setFamilyName:familyName];
  }

  if ([contactCopy isKeyAvailable:@"nameSuffix"])
  {
    nameSuffix = [contactCopy nameSuffix];
    [intoContactCopy setNameSuffix:nameSuffix];
  }
}

+ (void)unifyNonNameSingleValuesOfContacts:(id)contacts withPreferredContact:(id)contact intoContact:(id)intoContact availableKeyDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  intoContactCopy = intoContact;
  contactsCopy = contacts;
  nonNameSingleValuePropertiesByKey = [self nonNameSingleValuePropertiesByKey];
  [self unifySingleValuesProperties:nonNameSingleValuePropertiesByKey ofContacts:contactsCopy intoContact:intoContactCopy availableKeyDescriptor:descriptorCopy];
}

+ (id)sortedContacts:(id)contacts withPreferredContact:(id)contact
{
  contactCopy = contact;
  v6 = [contacts mutableCopy];
  [v6 removeObject:contactCopy];
  [v6 insertObject:contactCopy atIndex:0];

  v7 = [v6 copy];

  return v7;
}

+ (void)unifyWallpaperOfContacts:(id)contacts intoContact:(id)contact availableKeyDescriptor:(id)descriptor
{
  contactsCopy = contacts;
  contactCopy = contact;
  descriptorCopy = descriptor;
  if ([descriptorCopy containsKey:@"sharedPhotoDisplayPreference"])
  {
    wallpaperValuePropertyKeys = [self wallpaperValuePropertyKeys];
    v11 = [descriptorCopy intersectsKeyVector:wallpaperValuePropertyKeys];

    if (v11)
    {
      v12 = [contactsCopy objectAtIndexedSubscript:{objc_msgSend(self, "indexOfPreferredContactForWallpaper:prefersSharedImage:", contactsCopy, (objc_msgSend(contactCopy, "sharedPhotoDisplayPreference") & 0xFFFFFFFFFFFFFFFDLL) == 1)}];
      v13 = [self sortedContacts:contactsCopy withPreferredContact:v12];
      wallpaperValuePropertiesByKey = [self wallpaperValuePropertiesByKey];
      [self unifySingleValuesProperties:wallpaperValuePropertiesByKey ofContacts:v13 intoContact:contactCopy availableKeyDescriptor:descriptorCopy];
    }
  }
}

+ (void)unifyImageOfContacts:(id)contacts intoContact:(id)contact availableKeyDescriptor:(id)descriptor
{
  contactsCopy = contacts;
  contactCopy = contact;
  descriptorCopy = descriptor;
  imageValuePropertyKeys = [self imageValuePropertyKeys];
  v11 = [descriptorCopy intersectsKeyVector:imageValuePropertyKeys];

  if (v11)
  {
    v12 = [contactsCopy objectAtIndexedSubscript:{objc_msgSend(self, "indexOfPreferredContactForImage:", contactsCopy)}];
    v13 = [self sortedContacts:contactsCopy withPreferredContact:v12];
    imageValuePropertiesByKey = [self imageValuePropertiesByKey];
    [self unifySingleValuesProperties:imageValuePropertiesByKey ofContacts:v13 intoContact:contactCopy availableKeyDescriptor:descriptorCopy];
  }
}

+ (void)unifySingleValuesProperties:(id)properties ofContacts:(id)contacts intoContact:(id)contact availableKeyDescriptor:(id)descriptor
{
  propertiesCopy = properties;
  contactsCopy = contacts;
  contactCopy = contact;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __95__CNUnifiedContacts_unifySingleValuesProperties_ofContacts_intoContact_availableKeyDescriptor___block_invoke;
  v16[3] = &unk_1E7413400;
  v17 = propertiesCopy;
  v18 = contactsCopy;
  v19 = contactCopy;
  selfCopy = self;
  v13 = contactCopy;
  v14 = contactsCopy;
  v15 = propertiesCopy;
  [descriptor enumeratePropertiesUsingBlock:v16];
}

uint64_t __95__CNUnifiedContacts_unifySingleValuesProperties_ofContacts_intoContact_availableKeyDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 key];
  v11 = [v3 objectForKeyedSubscript:v4];

  v6 = v11;
  if (v11)
  {
    v7 = [*(a1 + 56) firstNonNilValueForProperty:v11 inContacts:*(a1 + 40)];
    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = [v11 key];
      [v8 setValue:v7 forKey:v9];
    }

    v6 = v11;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

+ (id)firstNonNilValueForProperty:(id)property inContacts:(id)contacts
{
  v22 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  contactsCopy = contacts;
  v7 = [contactsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(contactsCopy);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [propertyCopy key];
        v13 = [v11 isKeyAvailable:v12];

        if (v13)
        {
          v14 = [propertyCopy CNValueForContact:v11];
          if (v14)
          {
            v15 = v14;
            goto LABEL_12;
          }
        }
      }

      v8 = [contactsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (void)unifyMultiValue:(id)value intoMultiValue:(id)multiValue forProperty:(id)property
{
  valueCopy = value;
  multiValueCopy = multiValue;
  propertyCopy = property;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__CNUnifiedContacts_unifyMultiValue_intoMultiValue_forProperty___block_invoke;
  v14[3] = &unk_1E7413498;
  v15 = valueCopy;
  v16 = multiValueCopy;
  v17 = propertyCopy;
  selfCopy = self;
  v11 = propertyCopy;
  v12 = multiValueCopy;
  v13 = valueCopy;
  [v13 enumerateObjectsUsingBlock:v14];
}

void __64__CNUnifiedContacts_unifyMultiValue_intoMultiValue_forProperty___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 labelValuePair];
  if (![*(a1 + 56) shouldIncludeLabeledValue:v6 fromSource:*(a1 + 32) inDestination:*(a1 + 40) forProperty:*(a1 + 48)])
  {
    goto LABEL_6;
  }

  v7 = [*(a1 + 56) shouldLabeledValue:v6 replaceInferiorValueInMultiValue:*(a1 + 40) forProperty:*(a1 + 48)];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  if (!v7)
  {
    if ([v10 doesMultiValue:v8 needLabeledValue:v6 fromMultiValue:v9 forProperty:v11])
    {
      [*(a1 + 40) addObject:v5];
      goto LABEL_12;
    }

LABEL_6:
    v12 = *(a1 + 40);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__CNUnifiedContacts_unifyMultiValue_intoMultiValue_forProperty___block_invoke_2;
    v21[3] = &unk_1E7413448;
    v13 = v5;
    v22 = v13;
    v14 = [v12 indexOfObjectPassingTest:v21];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = *(a1 + 40);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __64__CNUnifiedContacts_unifyMultiValue_intoMultiValue_forProperty___block_invoke_3;
      v18[3] = &unk_1E7413470;
      v19 = v13;
      v20 = *(a1 + 48);
      v16 = [v15 indexOfObjectPassingTest:v18];

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = v14;
    }

    v17 = [*(a1 + 40) objectAtIndex:v16];
    [*(a1 + 56) addLinkedLabeledValue:v13 toLabeledValue:v17 forProperty:*(a1 + 48)];

LABEL_11:
    goto LABEL_12;
  }

  [v10 replaceInferiorValueInMultiValue:v8 withEntryAtIndex:a3 fromMultiValue:v9 forProperty:v11];
LABEL_12:
}

uint64_t __64__CNUnifiedContacts_unifyMultiValue_intoMultiValue_forProperty___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 labelValuePair];
  v4 = [*(a1 + 32) labelValuePair];
  v5 = canUnifyLabeledValuePairs(v3, v4, *(a1 + 40));

  return v5;
}

+ (BOOL)shouldIncludeLabeledValue:(id)value fromSource:(id)source inDestination:(id)destination forProperty:(id)property
{
  propertyCopy = property;
  destinationCopy = destination;
  sourceCopy = source;
  valueCopy = value;
  value = [valueCopy value];
  label = [valueCopy label];

  v16 = [(CNUnifiedContacts *)self countOfLabel:label value:value inMultiValue:sourceCopy forProperty:propertyCopy];
  v17 = [self countOfLabelIncludingEquivalents:label value:value inMultiValue:destinationCopy forProperty:propertyCopy];

  return v17 < v16;
}

+ (uint64_t)countOfLabel:(void *)label value:(void *)value inMultiValue:(void *)multiValue forProperty:
{
  v8 = a2;
  labelCopy = label;
  valueCopy = value;
  multiValueCopy = multiValue;
  objc_opt_self();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__CNUnifiedContacts_countOfLabel_value_inMultiValue_forProperty___block_invoke;
  v16[3] = &unk_1E7413510;
  v12 = v8;
  v17 = v12;
  v13 = labelCopy;
  v18 = v13;
  v19 = &v20;
  [valueCopy enumerateObjectsUsingBlock:v16];
  v14 = v21[3];

  _Block_object_dispose(&v20, 8);
  return v14;
}

+ (BOOL)doesMultiValue:(id)value needLabeledValue:(id)labeledValue fromMultiValue:(id)multiValue forProperty:(id)property
{
  propertyCopy = property;
  multiValueCopy = multiValue;
  labeledValueCopy = labeledValue;
  valueCopy = value;
  value = [labeledValueCopy value];
  label = [labeledValueCopy label];

  v16 = [self countOfLabelsUnifiableWithLabel:label valuesUnifiableWithValue:value inMultiValue:multiValueCopy forProperty:propertyCopy];
  v17 = [self countOfLabelsUnifiableWithLabel:label valuesUnifiableWithValue:value inMultiValue:valueCopy forProperty:propertyCopy];

  return v17 < v16;
}

+ (BOOL)shouldLabeledValue:(id)value replaceInferiorValueInMultiValue:(id)multiValue forProperty:(id)property
{
  v5 = [self indexesOfValuesInferiorTo:value inMultiValue:multiValue forProperty:property];
  v6 = [v5 count] != 0;

  return v6;
}

+ (void)addLinkedLabeledValue:(id)value toLabeledValue:(id)labeledValue forProperty:(id)property
{
  v24 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  labeledValueCopy = labeledValue;
  propertyCopy = property;
  if (valueCopy != labeledValueCopy)
  {
    linkedIdentifiers = [labeledValueCopy linkedIdentifiers];
    v11 = [linkedIdentifiers mutableCopy];

    if (!v11)
    {
      v11 = [MEMORY[0x1E695DFA8] set];
    }

    identifier = [valueCopy identifier];

    if (identifier)
    {
      identifier2 = [valueCopy identifier];
      [v11 addObject:identifier2];
    }

    else
    {
      identifier2 = os_log_create("com.apple.contacts", "91450879");
      if (os_log_type_enabled(identifier2, OS_LOG_TYPE_FAULT))
      {
        [CNUnifiedContacts addLinkedLabeledValue:valueCopy toLabeledValue:propertyCopy forProperty:identifier2];
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    linkedIdentifiers2 = [valueCopy linkedIdentifiers];
    v15 = [linkedIdentifiers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(linkedIdentifiers2);
          }

          [v11 addObject:*(*(&v19 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [linkedIdentifiers2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v16);
    }

    [valueCopy setLinkedIdentifiers:0];
    [labeledValueCopy setLinkedIdentifiers:v11];
  }
}

+ (id)indexesOfLabeledValuesUnifiableWithLabelValuePair:(id)pair inMultiValue:(id)value forProperty:(id)property
{
  pairCopy = pair;
  propertyCopy = property;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __96__CNUnifiedContacts_indexesOfLabeledValuesUnifiableWithLabelValuePair_inMultiValue_forProperty___block_invoke;
  v19 = &unk_1E7413378;
  v20 = pairCopy;
  v21 = propertyCopy;
  v9 = propertyCopy;
  v10 = pairCopy;
  valueCopy = value;
  v12 = [valueCopy _cn_filter:&v16];
  v13 = [MEMORY[0x1E695DFD8] setWithArray:{v12, v16, v17, v18, v19}];
  v14 = [valueCopy _cn_indicesForObjects:v13];

  return v14;
}

+ (id)indexesOfValuesInferiorTo:(id)to inMultiValue:(id)value forProperty:(id)property
{
  toCopy = to;
  valueCopy = value;
  propertyCopy = property;
  v11 = [self indexesOfLabeledValuesUnifiableWithLabelValuePair:toCopy inMultiValue:valueCopy forProperty:propertyCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__CNUnifiedContacts_indexesOfValuesInferiorTo_inMultiValue_forProperty___block_invoke;
  v17[3] = &unk_1E74134C0;
  v18 = valueCopy;
  v19 = propertyCopy;
  v20 = toCopy;
  v12 = toCopy;
  v13 = propertyCopy;
  v14 = valueCopy;
  v15 = [v11 indexesPassingTest:v17];

  return v15;
}

uint64_t __72__CNUnifiedContacts_indexesOfValuesInferiorTo_inMultiValue_forProperty___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndex:a2];
  v4 = [v3 value];

  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) value];
  v7 = [v5 isValue:v6 preferredToUnifiedValue:v4];

  return v7;
}

+ (unint64_t)indexOfValueMostInferiorTo:(id)to inMultiValue:(id)value forProperty:(id)property
{
  toCopy = to;
  valueCopy = value;
  propertyCopy = property;
  v11 = [self indexesOfValuesInferiorTo:toCopy inMultiValue:valueCopy forProperty:propertyCopy];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__CNUnifiedContacts_indexOfValueMostInferiorTo_inMultiValue_forProperty___block_invoke;
  v17[3] = &unk_1E74134E8;
  v21 = &v22;
  v12 = toCopy;
  v18 = v12;
  v13 = valueCopy;
  v19 = v13;
  v14 = propertyCopy;
  v20 = v14;
  [v11 enumerateIndexesUsingBlock:v17];
  v15 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v15;
}

void __73__CNUnifiedContacts_indexOfValueMostInferiorTo_inMultiValue_forProperty___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 56) + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 32) value];
  }

  else
  {
    v4 = [*(a1 + 40) objectAtIndex:?];
    v7 = [v4 value];
  }

  v5 = [*(a1 + 40) objectAtIndex:a2];
  v6 = [v5 value];

  if ([*(a1 + 48) isValue:v7 preferredToUnifiedValue:v6])
  {
    *(*(*(a1 + 56) + 8) + 24) = a2;
  }
}

+ (void)replaceInferiorValueInMultiValue:(id)value withEntryAtIndex:(unint64_t)index fromMultiValue:(id)multiValue forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v11 = [multiValue objectAtIndex:index];
  labelValuePair = [v11 labelValuePair];
  v13 = [self indexOfValueMostInferiorTo:labelValuePair inMultiValue:valueCopy forProperty:propertyCopy];

  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [valueCopy objectAtIndex:v13];
    [self addLinkedLabeledValue:v14 toLabeledValue:v11 forProperty:propertyCopy];

    [valueCopy replaceObjectAtIndex:v13 withObject:v11];
  }
}

+ (unint64_t)countOfLabelIncludingEquivalents:(id)equivalents value:(id)value inMultiValue:(id)multiValue forProperty:(id)property
{
  v26 = *MEMORY[0x1E69E9840];
  equivalentsCopy = equivalents;
  valueCopy = value;
  multiValueCopy = multiValue;
  propertyCopy = property;
  v14 = [(CNUnifiedContacts *)self countOfLabel:equivalentsCopy value:valueCopy inMultiValue:multiValueCopy forProperty:propertyCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = [propertyCopy unifiableLabelsForLabel:{equivalentsCopy, 0}];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v14 += [(CNUnifiedContacts *)self countOfLabel:valueCopy value:multiValueCopy inMultiValue:propertyCopy forProperty:?];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  return v14;
}

void __65__CNUnifiedContacts_countOfLabel_value_inMultiValue_forProperty___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = v9[1];
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(a1 + 32);
  if (v4 == v6 || ([v6 isEqualToString:&stru_1F094DAB0] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", &stru_1F094DAB0) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v4 isEqual:*(a1 + 32)];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [*(a1 + 40) isLikePhoneNumberForSamePerson:v5];
  }

  else
  {
    v8 = [MEMORY[0x1E69966F0] isObject:*(a1 + 40) equalToOther:v5];
  }

  if ((v7 & v8) == 1)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

+ (unint64_t)countOfLabelsUnifiableWithLabel:(id)label valuesUnifiableWithValue:(id)value inMultiValue:(id)multiValue forProperty:(id)property
{
  propertyCopy = property;
  multiValueCopy = multiValue;
  v12 = [CNLabelValuePair labeledValueWithLabel:label value:value];
  v13 = [self indexesOfLabeledValuesUnifiableWithLabelValuePair:v12 inMultiValue:multiValueCopy forProperty:propertyCopy];

  v14 = [v13 count];
  return v14;
}

+ (void)identifierMapForUnifiedMultiValue:(void *)value backingMultiValues:(void *)values intoMap:(void *)map forProperty:
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a2;
  valueCopy = value;
  valuesCopy = values;
  mapCopy = map;
  v12 = objc_opt_self();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__CNUnifiedContacts_identifierMapForUnifiedMultiValue_backingMultiValues_intoMap_forProperty___block_invoke;
  aBlock[3] = &unk_1E7413538;
  v13 = mapCopy;
  v27 = v13;
  v14 = _Block_copy(aBlock);
  v21 = v8;
  v15 = v14[2](v14, v8);
  v16 = [valueCopy _cn_map:v14];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(CNUnifiedContacts *)v12 correlateIdentifiersOfUnifiedMap:v15 toIdentifiersOfMultiValueMap:*(*(&v22 + 1) + 8 * v20++) intoMap:valuesCopy forProperty:v13];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v18);
  }
}

+ (void)correlateIdentifiersOfUnifiedMap:(void *)map toIdentifiersOfMultiValueMap:(void *)valueMap intoMap:(void *)intoMap forProperty:
{
  v8 = a2;
  valueMapCopy = valueMap;
  intoMapCopy = intoMap;
  mapCopy = map;
  v12 = objc_opt_self();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __103__CNUnifiedContacts_correlateIdentifiersOfUnifiedMap_toIdentifiersOfMultiValueMap_intoMap_forProperty___block_invoke;
  v16[3] = &unk_1E7413560;
  v17 = v8;
  v18 = intoMapCopy;
  v19 = valueMapCopy;
  v20 = v12;
  v13 = valueMapCopy;
  v14 = intoMapCopy;
  v15 = v8;
  [mapCopy eachObject:v16];
}

void __103__CNUnifiedContacts_correlateIdentifiersOfUnifiedMap_toIdentifiersOfMultiValueMap_intoMap_forProperty___block_invoke(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v9 = a3;
  v7 = [*(a1 + 56) unifiedIdentifiersForLabeledValue:a2 inUnifiedMap:*(a1 + 32) forProperty:*(a1 + 40)];
  if ([v7 count] > a4)
  {
    v8 = [v7 objectAtIndex:a4];
    [*(a1 + 48) addObject:v9 forKey:v8];
  }
}

+ (id)unifiedIdentifiersForLabeledValue:(id)value inUnifiedMap:(id)map forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  mapCopy = map;
  label = [valueCopy label];
  v12 = [label isEqual:&stru_1F094DAB0];

  if (v12)
  {
    value = [valueCopy value];
    _cn_flatten = [self unifiedIdentifiersForValue:value inUnifiedMap:mapCopy forProperty:propertyCopy];
  }

  else
  {
    allKeys = [mapCopy allKeys];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __80__CNUnifiedContacts_unifiedIdentifiersForLabeledValue_inUnifiedMap_forProperty___block_invoke;
    v22 = &unk_1E7413378;
    v23 = valueCopy;
    v24 = propertyCopy;
    v16 = [allKeys _cn_filter:&v19];

    v17 = [mapCopy objectsForKeys:{v16, v19, v20, v21, v22}];

    _cn_flatten = [v17 _cn_flatten];
  }

  return _cn_flatten;
}

+ (BOOL)canUnifyLabel:(id)label withLabel:(id)withLabel forProperty:(id)property
{
  labelCopy = label;
  withLabelCopy = withLabel;
  propertyCopy = property;
  if ([MEMORY[0x1E69966F0] isObject:labelCopy equalToOther:withLabelCopy])
  {
LABEL_2:
    v10 = 1;
    goto LABEL_3;
  }

  v10 = 0;
  if (labelCopy && withLabelCopy)
  {
    if (([labelCopy isEqualToString:&stru_1F094DAB0] & 1) == 0 && (objc_msgSend(withLabelCopy, "isEqualToString:", &stru_1F094DAB0) & 1) == 0)
    {
      v12 = [propertyCopy unifiableLabelsForLabel:labelCopy];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__CNUnifiedContacts_canUnifyLabel_withLabel_forProperty___block_invoke;
      v13[3] = &unk_1E7412440;
      v14 = withLabelCopy;
      v10 = [v12 _cn_any:v13];

      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return v10;
}

+ (id)unifiedIdentifiersForValue:(id)value inUnifiedMap:(id)map forProperty:(id)property
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  mapCopy = map;
  propertyCopy = property;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = mapCopy;
  allKeys = [mapCopy allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        value = [v16 value];
        v18 = [propertyCopy canUnifyValue:value withValue:valueCopy];

        if (v18)
        {
          v19 = [v10 objectsForKey:v16];
          [array addObjectsFromArray:v19];
        }
      }

      v13 = [allKeys countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return array;
}

+ (id)findFirstIdentifier:(void *)identifier inMultiValue:
{
  identifierCopy = identifier;
  v5 = a2;
  objc_opt_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CNUnifiedContacts_findFirstIdentifier_inMultiValue___block_invoke;
  v9[3] = &unk_1E7412440;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [v5 _cn_firstObjectPassingTest:v9];

  return v7;
}

BOOL __54__CNUnifiedContacts_findFirstIdentifier_inMultiValue___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [CNLabeledValue testMatchingIdentifier:a2];
  v4 = [v2 indexOfObjectPassingTest:v3];

  return v4 != 0x7FFFFFFFFFFFFFFFLL;
}

+ (void)addLinkedLabeledValue:(uint64_t)a1 toLabeledValue:(uint64_t)a2 forProperty:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1954A0000, log, OS_LOG_TYPE_FAULT, "Unexpected nil for CNLabeledValue.identifier when unifying contacts, %@, %@", &v3, 0x16u);
}

@end