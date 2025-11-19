@interface MKPlaceCardActionItem
+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)a3;
+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)a3 actionDataProvider:(id)a4 enabled:(BOOL)a5;
+ (id)actionTypesToMenuElements:(id)a3 menuElementCreationBlock:(id)a4;
+ (id)buildActionMenuForItems:(id)a3 buildingOptions:(id)a4 menuElementCreationBlock:(id)a5;
- (MKPlaceCardActionItem)initWithType:(unint64_t)a3 appearanceProvider:(id)a4 enabled:(BOOL)a5;
- (MKPlaceCardActionItem)initWithType:(unint64_t)a3 displayString:(id)a4 glyph:(id)a5 enabled:(BOOL)a6;
- (NSString)glyph;
- (id)description;
- (id)menuElementWithActionHandler:(id)a3;
- (id)resolvedActionItem;
@end

@implementation MKPlaceCardActionItem

- (id)menuElementWithActionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MKPlaceCardActionItem *)self resolvedActionItem];
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [v5 glyph];
  v8 = [v6 _mapkit_systemImageNamed:v7];

  v9 = MEMORY[0x1E69DC628];
  v10 = [(MKPlaceCardActionItem *)self resolvedActionItem];
  v11 = [v10 displayString];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__MKPlaceCardActionItem_menuElementWithActionHandler___block_invoke;
  v15[3] = &unk_1E76C9F08;
  v16 = v4;
  v12 = v4;
  v13 = [v9 actionWithTitle:v11 image:v8 identifier:0 handler:v15];

  return v13;
}

- (id)resolvedActionItem
{
  if ([(MKPlaceCardActionItem *)self selected]&& ([(MKPlaceCardActionItem *)self selectedItem], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(MKPlaceCardActionItem *)self selectedItem];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MKPlaceCardActionItem type](self, "type")}];
  v5 = [(MKPlaceCardActionItem *)self displayString];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MKPlaceCardActionItem enabled](self, "enabled")}];
  v7 = [v3 stringWithFormat:@"type: %@, displayString: %@, enabled: %@", v4, v5, v6];

  return v7;
}

- (NSString)glyph
{
  v2 = [(MKPlaceCardActionItem *)self symbolForDisplayStyle:MapKitIdiomIsMacCatalyst()];

  return v2;
}

- (MKPlaceCardActionItem)initWithType:(unint64_t)a3 displayString:(id)a4 glyph:(id)a5 enabled:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [[MKPlaceActionItemCustomAppearanceProvider alloc] initWithActionType:a3 overrideTitle:v11 symbolName:v10];

  v13 = [[MKPlaceCardActionItem alloc] initWithType:a3 appearanceProvider:v12 enabled:v6];
  return v13;
}

- (MKPlaceCardActionItem)initWithType:(unint64_t)a3 appearanceProvider:(id)a4 enabled:(BOOL)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MKPlaceCardActionItem;
  v10 = [(MKPlaceCardActionItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    objc_storeStrong(&v10->_appearanceProvider, a4);
    v11->_enabled = a5;
  }

  return v11;
}

+ (id)actionTypesToMenuElements:(id)a3 menuElementCreationBlock:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
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
        v13 = v6[2](v6, v12);
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v12, "type")}];
        [v7 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)buildActionMenuForItems:(id)a3 buildingOptions:(id)a4 menuElementCreationBlock:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [v9 headerMenuElement];

  if (v12)
  {
    v13 = [v9 headerMenuElement];
    [v11 addObject:v13];
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v38 = v8;
  v36 = v10;
  v15 = [a1 actionTypesToMenuElements:v8 menuElementCreationBlock:v10];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v37 = v9;
  v16 = [v9 requestedActionTypes];
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
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
          objc_enumerationMutation(v16);
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
            [v14 addObject:v23];
            goto LABEL_17;
          }

          [v11 addObject:v24];
        }

        else if ([v22 isEqualToNumber:&unk_1F1611698] && objc_msgSend(v14, "count"))
        {
          v25 = *(v18 + 3168);
          v26 = [v14 copy];
          v27 = [v25 menuWithTitle:&stru_1F15B23C0 image:0 identifier:0 options:1 children:v26];

          [v11 addObject:v27];
          v28 = [MEMORY[0x1E695DF70] array];

          v14 = v28;
          v18 = 0x1E69DC000;
        }

LABEL_17:
      }

      v19 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v19);
  }

  if ([v14 count])
  {
    [v11 addObjectsFromArray:v14];
  }

  if ([v37 addMismatchedItems])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = [v15 allValues];
    v30 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
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
            objc_enumerationMutation(v29);
          }

          [v11 addObject:*(*(&v39 + 1) + 8 * j)];
        }

        v31 = [v29 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v31);
    }
  }

  if ([v11 count])
  {
    v34 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F15B23C0 children:v11];
    [v34 setAccessibilityIdentifier:@"PlacecardEllipsisMenu"];
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)a3
{
  v3 = [[MKPlaceCardActionItem alloc] initWithType:a3 displayString:0 glyph:0 enabled:1];

  return v3;
}

+ (MKPlaceCardActionItem)actionItemWithType:(unint64_t)a3 actionDataProvider:(id)a4 enabled:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [[MKPlaceActionItemAppearanceProvider alloc] initWithActionType:a3 dataProvider:v7];

  v9 = [[MKPlaceCardActionItem alloc] initWithType:a3 appearanceProvider:v8 enabled:v5];

  return v9;
}

@end