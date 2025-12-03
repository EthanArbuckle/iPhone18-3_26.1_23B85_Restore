@interface PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility
+ (Class)_axGenericViewModelClass;
+ (Class)_axImageViewModelClass;
+ (Class)_axTextViewModelClass;
+ (id)_axKeysInOrder;
- (BOOL)_axContainedInCatchUpToLiveViewController;
- (id)_axButtonViewModel:(id)model;
- (id)_axCurrentMetadata;
- (id)_axLabelForGenericViewModel:(id)model;
- (id)_axLabelForImageViewModel:(id)model;
- (id)_axLabelForTextViewModel:(id)model;
- (id)_axMediaTagsLabel;
- (id)_axNSStringKeyedDictionary:(id)dictionary;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility

+ (id)_axKeysInOrder
{
  if (_axKeysInOrder_onceToken__keysInOrder != -1)
  {
    +[PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility _axKeysInOrder];
  }

  v3 = _axKeysInOrder__keysInOrder;

  return v3;
}

+ (Class)_axTextViewModelClass
{
  if (_axTextViewModelClass_onceToken__textViewModelClass != -1)
  {
    +[PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility _axTextViewModelClass];
  }

  v3 = _axTextViewModelClass__textViewModelClass;

  return v3;
}

+ (Class)_axImageViewModelClass
{
  if (_axImageViewModelClass_onceToken__imageViewModelClass != -1)
  {
    +[PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility _axImageViewModelClass];
  }

  v3 = _axImageViewModelClass__imageViewModelClass;

  return v3;
}

+ (Class)_axGenericViewModelClass
{
  if (_axGenericViewModelClass_onceToken__viewModelClass != -1)
  {
    +[PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility _axGenericViewModelClass];
  }

  v3 = _axGenericViewModelClass__viewModelClass;

  return v3;
}

- (id)_axCurrentMetadata
{
  v2 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self safeSwiftValueForKey:@"presenter"];
  v3 = [v2 safeSwiftIntForKey:@"metadataIndex"];
  v4 = [v2 safeSwiftValueForKey:@"interactor"];
  v5 = [v4 safeSwiftArrayForKey:@"viewModels"];
  v6 = [v5 objectAtIndex:v3];

  return v6;
}

- (id)_axMediaTagsLabel
{
  v3 = MEMORY[0x29ED3FF70](@"VUIMediaTagsView", a2);
  v9 = 0;
  objc_opt_class();
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __97__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axMediaTagsLabel__block_invoke;
  v8[3] = &__block_descriptor_40_e16_B16__0__UIView_8lu32l8;
  v8[4] = v3;
  v4 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _accessibilityFindSubviewDescendant:v8];
  v5 = __UIAccessibilityCastAsClass();

  if (v9 == 1)
  {
    abort();
  }

  accessibilityLabel = [v5 accessibilityLabel];

  return accessibilityLabel;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility;
  [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v3 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self safeSwiftValueForKey:@"hostingView"];
  [v3 setIsAccessibilityElement:1];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x29EDCA5F8];
  v6 = 3221225472;
  v7 = __122__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8 = &unk_29F31C208;
  objc_copyWeak(&v9, &location);
  [v3 setAccessibilityLabelBlock:&v5];
  v4 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_357, v5, v6, v7, v8];
  [v4 setAccessibilityHeaderElementsBlock:&__block_literal_global_363];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_axContainedInCatchUpToLiveViewController
{
  v3 = MEMORY[0x29ED3FF70](@"VideosUI.CatchUpToLiveViewController", a2);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __121__PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility__axContainedInCatchUpToLiveViewController__block_invoke;
  v6[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v6[4] = v3;
  v4 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _accessibilityFindAncestor:v6 startWithSelf:0];
  LOBYTE(self) = v4 != 0;

  return self;
}

- (id)_axNSStringKeyedDictionary:(id)dictionary
{
  v20 = *MEMORY[0x29EDCA608];
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v15}];
        v12 = [v10 description];
        [dictionary setObject:v11 forKeyedSubscript:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x29EDCA608];

  return dictionary;
}

- (id)_axButtonViewModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v5 = [modelCopy safeSwiftValueForKey:@"childrenDictionary"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axNSStringKeyedDictionary:v6];

  v8 = [v7 objectForKey:@"buttons"];

  return v8;
}

- (id)_axLabelForGenericViewModel:(id)model
{
  v45 = *MEMORY[0x29EDCA608];
  modelCopy = model;
  v4 = [modelCopy safeSwiftValueForKey:@"protectedMembers"];
  v42 = 0;
  objc_opt_class();
  v31 = v4;
  v5 = [v4 safeSwiftValueForKey:@"childrenDictionary"];
  v6 = __UIAccessibilityCastAsClass();

  v32 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axNSStringKeyedDictionary:v6];

  orderedSet = [MEMORY[0x29EDB8E10] orderedSet];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  _axKeysInOrder = [objc_opt_class() _axKeysInOrder];
  v9 = [_axKeysInOrder countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(_axKeysInOrder);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        if ([v13 isEqualToString:@"mediaTags"])
        {
          _axCurrentMetadata = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axCurrentMetadata];

          if (_axCurrentMetadata != modelCopy)
          {
            continue;
          }

          _axMediaTagsLabel = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axMediaTagsLabel];
          v16 = _axMediaTagsLabel;
          if (_axMediaTagsLabel && [_axMediaTagsLabel length])
          {
            [orderedSet addObject:v16];
          }

          goto LABEL_22;
        }

        if ([v13 isEqualToString:@"buttons"])
        {
          continue;
        }

        v16 = [v32 objectForKeyedSubscript:v13];
        [objc_opt_class() _axTextViewModelClass];
        if (objc_opt_isKindOfClass())
        {
          v17 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axLabelForTextViewModel:v16];
          goto LABEL_18;
        }

        [objc_opt_class() _axImageViewModelClass];
        if (objc_opt_isKindOfClass())
        {
          v17 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axLabelForImageViewModel:v16];
          goto LABEL_18;
        }

        [objc_opt_class() _axGenericViewModelClass];
        if (objc_opt_isKindOfClass())
        {
          v17 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axLabelForGenericViewModel:v16];
LABEL_18:
          v18 = v17;
          if (v17 && [v17 length])
          {
            [orderedSet addObject:v18];
          }
        }

LABEL_22:
      }

      v10 = [_axKeysInOrder countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v10);
  }

  v19 = [v31 safeSwiftArrayForKey:@"children"];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (!v20)
  {
    goto LABEL_40;
  }

  v21 = v20;
  v22 = *v35;
  do
  {
    for (j = 0; j != v21; ++j)
    {
      if (*v35 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v34 + 1) + 8 * j);
      [objc_opt_class() _axTextViewModelClass];
      if (objc_opt_isKindOfClass())
      {
        v25 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axLabelForTextViewModel:v24];
      }

      else
      {
        [objc_opt_class() _axGenericViewModelClass];
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v25 = [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _axLabelForGenericViewModel:v24];
      }

      v26 = v25;
      if (v25 && [v25 length])
      {
        [orderedSet addObject:v26];
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v34 objects:v43 count:16];
  }

  while (v21);
LABEL_40:
  array = [orderedSet array];
  v28 = [array componentsJoinedByString:{@", "}];

  v29 = *MEMORY[0x29EDCA608];

  return v28;
}

- (id)_axLabelForTextViewModel:(id)model
{
  v33 = *MEMORY[0x29EDCA608];
  modelCopy = model;
  v22 = [modelCopy safeSwiftValueForKey:@"viewLayout"];
  [v22 safeSwiftDictionaryForKey:@"propertyStore"];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v4 = v29 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *v29;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v29 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v28 + 1) + 8 * i);
      LOBYTE(v24) = 0;
      objc_opt_class();
      v9 = [v8 description];
      v10 = __UIAccessibilityCastAsClass();

      if (v10 && [v10 isEqualToString:@"VideosUI.ViewLayoutKeys.hidden"])
      {
        v11 = [v4 objectForKeyedSubscript:v8];
        if (objc_opt_respondsToSelector())
        {
          v24 = 0;
          v25 = &v24;
          v26 = 0x2020000000;
          v27 = 0;
          v23 = v11;
          AXPerformSafeBlock();
          v12 = *(v25 + 24);

          _Block_object_dispose(&v24, 8);
          if ((v12 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v14 = [v11 description];
          if ([v14 isEqualToString:@"true"])
          {

            string = 0;
            safeSwiftEnumAssociatedObject = v4;
            goto LABEL_24;
          }

          v16 = [v14 isEqualToString:@"1"];

          if ((v16 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        string = 0;
        goto LABEL_25;
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_18:
  v17 = [modelCopy safeSwiftValueForKey:@"textValue"];
  safeSwiftEnumAssociatedObject = [v17 safeSwiftEnumAssociatedObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    safeSwiftEnumAssociatedObject = safeSwiftEnumAssociatedObject;
    string = safeSwiftEnumAssociatedObject;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v24) = 0;
      objc_opt_class();
      v18 = __UIAccessibilityCastAsClass();
      if (v24 == 1)
      {
        abort();
      }

      v19 = v18;
      string = [v18 string];
    }

    else
    {
      string = 0;
    }
  }

LABEL_24:

LABEL_25:
  v20 = *MEMORY[0x29EDCA608];

  return string;
}

- (id)_axLabelForImageViewModel:(id)model
{
  modelCopy = model;
  objc_opt_class();
  v4 = [modelCopy safeSwiftValueForKey:@"accessibilityText"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility;
  [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)&v4 layoutSubviews];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accessibilityLoadAccessibilityInformation name:*MEMORY[0x29EDC7EB8] object:0];

  [(PaginatedMediaMetadataContainerView_MediaShowcasingMetadataViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end