@interface MKPlaceCardActionItem
+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)type;
+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)type actionDataProvider:(id)provider enabled:(BOOL)enabled;
+ (id)actionTypesToMenuElements:(id)elements menuElementCreationBlock:(id)block;
+ (id)buildActionMenuForItems:(id)items buildingOptions:(id)options menuElementCreationBlock:(id)block;
- (MKPlaceCardActionItem)initWithType:(unint64_t)type appearanceProvider:(id)provider enabled:(BOOL)enabled;
- (MKPlaceCardActionItem)initWithType:(unint64_t)type displayString:(id)string glyph:(id)glyph enabled:(BOOL)enabled;
- (NSString)glyph;
- (id)description;
- (id)menuElementWithActionHandler:(id)handler;
- (id)resolvedActionItem;
@end

@implementation MKPlaceCardActionItem

- (id)menuElementWithActionHandler:(id)handler
{
  handlerCopy = handler;
  resolvedActionItem = [(MKPlaceCardActionItem *)self resolvedActionItem];
  v6 = MEMORY[0x1E69DCAB8];
  glyph = [resolvedActionItem glyph];
  v8 = [v6 _mapkit_systemImageNamed:glyph];

  v9 = MEMORY[0x1E69DC628];
  resolvedActionItem2 = [(MKPlaceCardActionItem *)self resolvedActionItem];
  displayString = [resolvedActionItem2 displayString];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MKPlaceCardActionItem_menuElementWithActionHandler___block_invoke;
  v15[3] = &unk_1E76C9F08;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [v9 actionWithTitle:displayString image:v8 identifier:0 handler:v15];

  return v13;
}

- (id)resolvedActionItem
{
  if ([(MKPlaceCardActionItem *)self selected]&& ([(MKPlaceCardActionItem *)self selectedItem], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    selfCopy = [(MKPlaceCardActionItem *)self selectedItem];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MKPlaceCardActionItem type](self, "type")}];
  displayString = [(MKPlaceCardActionItem *)self displayString];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MKPlaceCardActionItem enabled](self, "enabled")}];
  v7 = [v3 stringWithFormat:@"type: %@, displayString: %@, enabled: %@", v4, displayString, v6];

  return v7;
}

- (NSString)glyph
{
  v2 = [(MKPlaceCardActionItem *)self symbolForDisplayStyle:MapKitIdiomIsMacCatalyst()];

  return v2;
}

- (MKPlaceCardActionItem)initWithType:(unint64_t)type displayString:(id)string glyph:(id)glyph enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  glyphCopy = glyph;
  stringCopy = string;
  v12 = [[MKPlaceActionItemCustomAppearanceProvider alloc] initWithActionType:type overrideTitle:stringCopy symbolName:glyphCopy];

  v13 = [[MKPlaceCardActionItem alloc] initWithType:type appearanceProvider:v12 enabled:enabledCopy];
  return v13;
}

- (MKPlaceCardActionItem)initWithType:(unint64_t)type appearanceProvider:(id)provider enabled:(BOOL)enabled
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = MKPlaceCardActionItem;
  v10 = [(MKPlaceCardActionItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_storeStrong(&v10->_appearanceProvider, provider);
    v11->_enabled = enabled;
  }

  return v11;
}

+ (id)actionTypesToMenuElements:(id)elements menuElementCreationBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  blockCopy = block;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(elementsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = elementsCopy;
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = blockCopy[2](blockCopy, v12);
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "type")}];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)buildActionMenuForItems:(id)items buildingOptions:(id)options menuElementCreationBlock:(id)block
{
  v49 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  optionsCopy = options;
  blockCopy = block;
  array = [MEMORY[0x1E695DF70] array];
  headerMenuElement = [optionsCopy headerMenuElement];

  if (headerMenuElement)
  {
    headerMenuElement2 = [optionsCopy headerMenuElement];
    [array addObject:headerMenuElement2];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v38 = itemsCopy;
  v36 = blockCopy;
  v15 = [self actionTypesToMenuElements:itemsCopy menuElementCreationBlock:blockCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v37 = optionsCopy;
  requestedActionTypes = [optionsCopy requestedActionTypes];
  v17 = [requestedActionTypes countByEnumeratingWithState:&v43 objects:v48 count:16];
  v18 = 0x1E69DC000uLL;
  if (v17)
  {
    v19 = v17;
    v20 = *v44;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v44 != v20)
        {
          objc_enumerationMutation(requestedActionTypes);
        }

        v22 = *(*(&v43 + 1) + 8 * i);
        v23 = [v15 objectForKeyedSubscript:v22];
        if (v23)
        {
          [v15 removeObjectForKey:v22];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_12;
          }

          v24 = v23;
          if (([v24 options] & 1) == 0)
          {

LABEL_12:
            [array2 addObject:v23];
            goto LABEL_17;
          }

          [array addObject:v24];
        }

        else if ([v22 isEqualToNumber:&unk_1F1611698] && objc_msgSend(array2, "count"))
        {
          v25 = *(v18 + 3168);
          v26 = [array2 copy];
          v27 = [v25 menuWithTitle:&stru_1F15B23C0 image:0 identifier:0 options:1 children:v26];

          [array addObject:v27];
          array3 = [MEMORY[0x1E695DF70] array];

          array2 = array3;
          v18 = 0x1E69DC000;
        }

LABEL_17:
      }

      v19 = [requestedActionTypes countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v19);
  }

  if ([array2 count])
  {
    [array addObjectsFromArray:array2];
  }

  if ([v37 addMismatchedItems])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allValues = [v15 allValues];
    v30 = [allValues countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v40;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(allValues);
          }

          [array addObject:*(*(&v39 + 1) + 8 * j)];
        }

        v31 = [allValues countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v31);
    }
  }

  if ([array count])
  {
    v34 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F15B23C0 children:array];
    [v34 setAccessibilityIdentifier:@"PlacecardEllipsisMenu"];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)type
{
  v3 = [[MKPlaceCardActionItem alloc] initWithType:type displayString:0 glyph:0 enabled:1];

  return v3;
}

+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)type actionDataProvider:(id)provider enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  providerCopy = provider;
  v8 = [[MKPlaceActionItemAppearanceProvider alloc] initWithActionType:type dataProvider:providerCopy];

  v9 = [[MKPlaceCardActionItem alloc] initWithType:type appearanceProvider:v8 enabled:enabledCopy];

  return v9;
}

@end