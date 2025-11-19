@interface CNInsetGroupsAndAccountsStyle
- (id)cellAccessoriesForItem:(id)a3;
- (id)parentCellConfigurationUpdateHandlerWithText:(id)a3;
- (id)sectionConfigurationForLayoutEnvironment:(id)a3 withLeadingActionsProvider:(id)a4 withTrailingActionsProvider:(id)a5 hasHeader:(BOOL)a6;
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

- (id)cellAccessoriesForItem:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 alloc];
  v12.receiver = self;
  v12.super_class = CNInsetGroupsAndAccountsStyle;
  v7 = [(CNAccountsAndGroupsStyle *)&v12 cellAccessoriesForItem:v5];
  v8 = [v6 initWithArray:v7];

  v9 = [v5 identifier];

  LOBYTE(v5) = [v9 isEqualToString:@"groupPlaceholderIdentifier"];
  if ((v5 & 1) == 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    [v8 addObject:v10];
  }

  return v8;
}

- (id)parentCellConfigurationUpdateHandlerWithText:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__CNInsetGroupsAndAccountsStyle_parentCellConfigurationUpdateHandlerWithText___block_invoke;
  aBlock[3] = &unk_1E74E2CC8;
  v8 = v3;
  v4 = v3;
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

- (id)sectionConfigurationForLayoutEnvironment:(id)a3 withLeadingActionsProvider:(id)a4 withTrailingActionsProvider:(id)a5 hasHeader:(BOOL)a6
{
  v6 = a6;
  v9 = MEMORY[0x1E69DD3F8];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[v9 alloc] initWithAppearanceStyle:2 layoutEnvironment:v12];
  [v13 setStylesFirstItemAsHeader:v6];
  [v13 setLeadingSwipeActionsConfigurationProvider:v11];

  [v13 setTrailingSwipeActionsConfigurationProvider:v10];
  v14 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v13 layoutEnvironment:v12];

  return v14;
}

@end