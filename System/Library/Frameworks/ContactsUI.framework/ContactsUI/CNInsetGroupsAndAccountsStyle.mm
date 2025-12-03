@interface CNInsetGroupsAndAccountsStyle
- (id)cellAccessoriesForItem:(id)item;
- (id)parentCellConfigurationUpdateHandlerWithText:(id)text;
- (id)sectionConfigurationForLayoutEnvironment:(id)environment withLeadingActionsProvider:(id)provider withTrailingActionsProvider:(id)actionsProvider hasHeader:(BOOL)header;
@end

@implementation CNInsetGroupsAndAccountsStyle

void __63__CNInsetGroupsAndAccountsStyle_cellConfigurationUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v16 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x1E69DCC28] cellConfiguration];
    v9 = [v8 updatedConfigurationForState:v5];

    [v7 setIndentationWidth:0.0];
    v10 = [v9 textProperties];
    v11 = [v10 color];
    [v7 applyTextColor:v11];

    v12 = [v9 imageProperties];
    v13 = [v12 tintColor];
    v14 = [v9 textProperties];
    v15 = [v14 color];
    [v7 applyAccessoryTintColor:v13 leadingAccessoryTintColor:v15];
  }
}

- (id)cellAccessoriesForItem:(id)item
{
  v4 = MEMORY[0x1E695DF70];
  itemCopy = item;
  v6 = [v4 alloc];
  v12.receiver = self;
  v12.super_class = CNInsetGroupsAndAccountsStyle;
  v7 = [(CNAccountsAndGroupsStyle *)&v12 cellAccessoriesForItem:itemCopy];
  v8 = [v6 initWithArray:v7];

  identifier = [itemCopy identifier];

  LOBYTE(itemCopy) = [identifier isEqualToString:@"groupPlaceholderIdentifier"];
  if ((itemCopy & 1) == 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    [v8 addObject:v10];
  }

  return v8;
}

- (id)parentCellConfigurationUpdateHandlerWithText:(id)text
{
  textCopy = text;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CNInsetGroupsAndAccountsStyle_parentCellConfigurationUpdateHandlerWithText___block_invoke;
  aBlock[3] = &unk_1E74E2CC8;
  v8 = textCopy;
  v4 = textCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __78__CNInsetGroupsAndAccountsStyle_parentCellConfigurationUpdateHandlerWithText___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DCC28];
  v4 = a2;
  v5 = [v3 headerConfiguration];
  [v5 setText:*(a1 + 32)];
  [v4 setContentConfiguration:v5];
}

- (id)sectionConfigurationForLayoutEnvironment:(id)environment withLeadingActionsProvider:(id)provider withTrailingActionsProvider:(id)actionsProvider hasHeader:(BOOL)header
{
  headerCopy = header;
  v9 = MEMORY[0x1E69DD3F8];
  actionsProviderCopy = actionsProvider;
  providerCopy = provider;
  environmentCopy = environment;
  v13 = [[v9 alloc] initWithAppearanceStyle:2 layoutEnvironment:environmentCopy];
  [v13 setStylesFirstItemAsHeader:headerCopy];
  [v13 setLeadingSwipeActionsConfigurationProvider:providerCopy];

  [v13 setTrailingSwipeActionsConfigurationProvider:actionsProviderCopy];
  v14 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v13 layoutEnvironment:environmentCopy];

  return v14;
}

@end