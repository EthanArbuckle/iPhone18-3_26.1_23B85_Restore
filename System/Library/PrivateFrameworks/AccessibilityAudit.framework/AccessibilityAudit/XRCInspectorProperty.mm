@interface XRCInspectorProperty
+ (void)_continueFetchingProperties:(id)properties fetchedProperties:(id)fetchedProperties fetchedValues:(id)values completionBlock:(id)block;
+ (void)fetchValuesForProperties:(id)properties completionBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)showElementClassName;
- (BOOL)showIgnoredElements;
- (NSString)title;
- (XRCInspectorPropertyDelegate)delegate;
- (id)_OSXConstantsToSelectorsDict;
- (id)_OSXSelectorForAction:(id)action;
- (id)_OSXSelectorForAttribute:(id)attribute;
- (id)_spacedStringFromCamelCase:(id)case;
- (id)description;
- (void)fetchValueWithCompletionBlock:(id)block;
- (void)focusOnElement:(id)element;
- (void)performAction;
- (void)previewElement:(id)element;
- (void)setNewValue:(id)value;
@end

@implementation XRCInspectorProperty

+ (void)_continueFetchingProperties:(id)properties fetchedProperties:(id)fetchedProperties fetchedValues:(id)values completionBlock:(id)block
{
  propertiesCopy = properties;
  fetchedPropertiesCopy = fetchedProperties;
  valuesCopy = values;
  blockCopy = block;
  if (fetchedPropertiesCopy)
  {
    if (valuesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    fetchedPropertiesCopy = objc_opt_new();
    if (valuesCopy)
    {
      goto LABEL_3;
    }
  }

  valuesCopy = objc_opt_new();
LABEL_3:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__XRCInspectorProperty__continueFetchingProperties_fetchedProperties_fetchedValues_completionBlock___block_invoke;
  v20[3] = &unk_278BE2EB8;
  v14 = fetchedPropertiesCopy;
  v21 = v14;
  v15 = valuesCopy;
  v22 = v15;
  selfCopy = self;
  v16 = propertiesCopy;
  v23 = v16;
  v17 = blockCopy;
  v24 = v17;
  v18 = MEMORY[0x23EEEA2E0](v20);
  firstObject = [v16 firstObject];
  if (firstObject)
  {
    [v16 removeObject:firstObject];
    [firstObject fetchValueWithCompletionBlock:v18];
  }

  else
  {
    (*(v17 + 2))(v17, v14, v15);
  }
}

uint64_t __100__XRCInspectorProperty__continueFetchingProperties_fetchedProperties_fetchedValues_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = a3;
    [v5 addObject:a2];
    [*(a1 + 40) addObject:v6];
  }

  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);

  return [v7 _continueFetchingProperties:v11 fetchedProperties:v9 fetchedValues:v10 completionBlock:v8];
}

+ (void)fetchValuesForProperties:(id)properties completionBlock:(id)block
{
  blockCopy = block;
  v7 = [properties mutableCopy];
  [self _continueFetchingProperties:v7 fetchedProperties:0 fetchedValues:0 completionBlock:blockCopy];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = XRCInspectorProperty;
  v3 = [(XRCInspectorProperty *)&v8 description];
  elementAttribute = [(XRCInspectorProperty *)self elementAttribute];
  title = [(XRCInspectorProperty *)self title];
  v6 = [v3 stringByAppendingFormat:@"Attribute:%@ Title:%@", elementAttribute, title];

  return v6;
}

- (id)_spacedStringFromCamelCase:(id)case
{
  v33 = *MEMORY[0x277D85DE8];
  caseCopy = case;
  v4 = [caseCopy length];
  v5 = objc_opt_new();
  v6 = v5;
  if (v4 >= 1)
  {
    v27 = v5;
    v7 = 0;
    v8 = 1;
    v9 = -1;
    do
    {
      v10 = [caseCopy characterAtIndex:v7];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v10];
      uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      v13 = [v11 rangeOfCharacterFromSet:uppercaseLetterCharacterSet];

      v14 = (v13 == 0x7FFFFFFFFFFFFFFFLL) | v8;
      if (v13 != 0x7FFFFFFFFFFFFFFFLL && (v8 & 1) != 0)
      {
        if (v9 != -1)
        {
          v15 = [caseCopy substringWithRange:{v9, v7 - v9}];
          [v27 addObject:v15];
        }

        v14 = 0;
        v9 = v7;
      }

      ++v7;
      v8 = v14;
    }

    while (v4 != v7);
    v6 = v27;
    if (v9 != -1)
    {
      v16 = [caseCopy substringWithRange:{v9, objc_msgSend(caseCopy, "length") - v9}];
      [v27 addObject:v16];
    }
  }

  v17 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        if ([v17 length])
        {
          [v17 appendString:@" "];
          lowercaseString = [v23 lowercaseString];
          [v17 appendString:lowercaseString];
        }

        else
        {
          [v17 appendString:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_OSXConstantsToSelectorsDict
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"OSX-ConstantsToSelectors" ofType:@"plist"];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];

  return v4;
}

- (id)_OSXSelectorForAction:(id)action
{
  actionCopy = action;
  _OSXConstantsToSelectorsDict = [(XRCInspectorProperty *)self _OSXConstantsToSelectorsDict];
  v6 = [_OSXConstantsToSelectorsDict objectForKey:@"actions"];
  v7 = [v6 objectForKey:actionCopy];

  v8 = [v7 objectForKey:@"cocoa_protocol_selector"];

  return v8;
}

- (id)_OSXSelectorForAttribute:(id)attribute
{
  attributeCopy = attribute;
  _OSXConstantsToSelectorsDict = [(XRCInspectorProperty *)self _OSXConstantsToSelectorsDict];
  v6 = [_OSXConstantsToSelectorsDict objectForKey:@"attributes"];
  v7 = [v6 objectForKey:attributeCopy];

  v8 = [v7 objectForKey:@"cocoa_protocol_selector"];

  return v8;
}

- (NSString)title
{
  elementAttribute = [(XRCInspectorProperty *)self elementAttribute];
  humanReadableName = [elementAttribute humanReadableName];

  return humanReadableName;
}

- (void)fetchValueWithCompletionBlock:(id)block
{
  blockCopy = block;
  delegate = [(XRCInspectorProperty *)self delegate];
  [delegate fetchValueForProperty:self completionBlock:blockCopy];
}

- (void)setNewValue:(id)value
{
  valueCopy = value;
  delegate = [(XRCInspectorProperty *)self delegate];
  [delegate updateProperty:self withNewValue:valueCopy];

  [(XRCInspectorProperty *)self setValue:valueCopy];
}

- (void)performAction
{
  delegate = [(XRCInspectorProperty *)self delegate];
  [delegate performAction:self];
}

- (void)previewElement:(id)element
{
  elementCopy = element;
  delegate = [(XRCInspectorProperty *)self delegate];
  [delegate previewOnElement:elementCopy];
}

- (void)focusOnElement:(id)element
{
  elementCopy = element;
  delegate = [(XRCInspectorProperty *)self delegate];
  [delegate focusOnElement:elementCopy];
}

- (BOOL)showElementClassName
{
  delegate = [(XRCInspectorProperty *)self delegate];
  showElementClassName = [delegate showElementClassName];

  return showElementClassName;
}

- (BOOL)showIgnoredElements
{
  delegate = [(XRCInspectorProperty *)self delegate];
  showIgnoredElements = [delegate showIgnoredElements];

  return showIgnoredElements;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      elementAttribute = [(XRCInspectorProperty *)v5 elementAttribute];
      elementAttribute2 = [(XRCInspectorProperty *)self elementAttribute];
      if ([elementAttribute isEqual:elementAttribute2])
      {
        element = [(XRCInspectorProperty *)v5 element];
        element2 = [(XRCInspectorProperty *)self element];
        v10 = [element isEqual:element2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (XRCInspectorPropertyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end