@interface XRCInspectorProperty
+ (void)_continueFetchingProperties:(id)a3 fetchedProperties:(id)a4 fetchedValues:(id)a5 completionBlock:(id)a6;
+ (void)fetchValuesForProperties:(id)a3 completionBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)showElementClassName;
- (BOOL)showIgnoredElements;
- (NSString)title;
- (XRCInspectorPropertyDelegate)delegate;
- (id)_OSXConstantsToSelectorsDict;
- (id)_OSXSelectorForAction:(id)a3;
- (id)_OSXSelectorForAttribute:(id)a3;
- (id)_spacedStringFromCamelCase:(id)a3;
- (id)description;
- (void)fetchValueWithCompletionBlock:(id)a3;
- (void)focusOnElement:(id)a3;
- (void)performAction;
- (void)previewElement:(id)a3;
- (void)setNewValue:(id)a3;
@end

@implementation XRCInspectorProperty

+ (void)_continueFetchingProperties:(id)a3 fetchedProperties:(id)a4 fetchedValues:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = objc_opt_new();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v12 = objc_opt_new();
LABEL_3:
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__XRCInspectorProperty__continueFetchingProperties_fetchedProperties_fetchedValues_completionBlock___block_invoke;
  v20[3] = &unk_278BE2EB8;
  v14 = v11;
  v21 = v14;
  v15 = v12;
  v22 = v15;
  v25 = a1;
  v16 = v10;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v18 = MEMORY[0x23EEEA2E0](v20);
  v19 = [v16 firstObject];
  if (v19)
  {
    [v16 removeObject:v19];
    [v19 fetchValueWithCompletionBlock:v18];
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

+ (void)fetchValuesForProperties:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  [a1 _continueFetchingProperties:v7 fetchedProperties:0 fetchedValues:0 completionBlock:v6];
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = XRCInspectorProperty;
  v3 = [(XRCInspectorProperty *)&v8 description];
  v4 = [(XRCInspectorProperty *)self elementAttribute];
  v5 = [(XRCInspectorProperty *)self title];
  v6 = [v3 stringByAppendingFormat:@"Attribute:%@ Title:%@", v4, v5];

  return v6;
}

- (id)_spacedStringFromCamelCase:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 length];
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
      v10 = [v3 characterAtIndex:v7];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", v10];
      v12 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
      v13 = [v11 rangeOfCharacterFromSet:v12];

      v14 = (v13 == 0x7FFFFFFFFFFFFFFFLL) | v8;
      if (v13 != 0x7FFFFFFFFFFFFFFFLL && (v8 & 1) != 0)
      {
        if (v9 != -1)
        {
          v15 = [v3 substringWithRange:{v9, v7 - v9}];
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
      v16 = [v3 substringWithRange:{v9, objc_msgSend(v3, "length") - v9}];
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
          v24 = [v23 lowercaseString];
          [v17 appendString:v24];
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

- (id)_OSXSelectorForAction:(id)a3
{
  v4 = a3;
  v5 = [(XRCInspectorProperty *)self _OSXConstantsToSelectorsDict];
  v6 = [v5 objectForKey:@"actions"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"cocoa_protocol_selector"];

  return v8;
}

- (id)_OSXSelectorForAttribute:(id)a3
{
  v4 = a3;
  v5 = [(XRCInspectorProperty *)self _OSXConstantsToSelectorsDict];
  v6 = [v5 objectForKey:@"attributes"];
  v7 = [v6 objectForKey:v4];

  v8 = [v7 objectForKey:@"cocoa_protocol_selector"];

  return v8;
}

- (NSString)title
{
  v2 = [(XRCInspectorProperty *)self elementAttribute];
  v3 = [v2 humanReadableName];

  return v3;
}

- (void)fetchValueWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(XRCInspectorProperty *)self delegate];
  [v5 fetchValueForProperty:self completionBlock:v4];
}

- (void)setNewValue:(id)a3
{
  v5 = a3;
  v4 = [(XRCInspectorProperty *)self delegate];
  [v4 updateProperty:self withNewValue:v5];

  [(XRCInspectorProperty *)self setValue:v5];
}

- (void)performAction
{
  v3 = [(XRCInspectorProperty *)self delegate];
  [v3 performAction:self];
}

- (void)previewElement:(id)a3
{
  v4 = a3;
  v5 = [(XRCInspectorProperty *)self delegate];
  [v5 previewOnElement:v4];
}

- (void)focusOnElement:(id)a3
{
  v4 = a3;
  v5 = [(XRCInspectorProperty *)self delegate];
  [v5 focusOnElement:v4];
}

- (BOOL)showElementClassName
{
  v2 = [(XRCInspectorProperty *)self delegate];
  v3 = [v2 showElementClassName];

  return v3;
}

- (BOOL)showIgnoredElements
{
  v2 = [(XRCInspectorProperty *)self delegate];
  v3 = [v2 showIgnoredElements];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(XRCInspectorProperty *)v5 elementAttribute];
      v7 = [(XRCInspectorProperty *)self elementAttribute];
      if ([v6 isEqual:v7])
      {
        v8 = [(XRCInspectorProperty *)v5 element];
        v9 = [(XRCInspectorProperty *)self element];
        v10 = [v8 isEqual:v9];
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