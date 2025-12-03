@interface CNOutlineGroupsAndAccountsStyle
- (id)parentCellConfigurationUpdateHandlerWithText:(id)text;
- (id)sectionConfigurationForLayoutEnvironment:(id)environment withLeadingActionsProvider:(id)provider withTrailingActionsProvider:(id)actionsProvider hasHeader:(BOOL)header;
- (int64_t)buttonBehaviorWithTraitCollection:(id)collection;
@end

@implementation CNOutlineGroupsAndAccountsStyle

void __65__CNOutlineGroupsAndAccountsStyle_cellConfigurationUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v20 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v20;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x1E69DCC28] accompaniedSidebarCellConfiguration];
    v9 = [v8 updatedConfigurationForState:v5];

    [v7 setIndentationWidth:10.0];
    v10 = [v9 textProperties];
    v11 = [v10 color];
    [v7 applyTextColor:v11];

    v12 = [v9 imageProperties];
    v13 = [v12 tintColor];
    [v7 applyTextViewTintColor:v13];

    v14 = [v9 imageProperties];
    v15 = [v14 tintColor];
    v16 = [v9 textProperties];
    v17 = [v16 color];
    [v7 applyAccessoryTintColor:v15 leadingAccessoryTintColor:v17];

    v18 = [v9 textProperties];
    v19 = [v18 font];
    [v7 applyTextFont:v19];
  }
}

- (int64_t)buttonBehaviorWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v6 = [featureFlags isFeatureEnabled:29];

  if (v6)
  {
    if ([collectionCopy _splitViewControllerContext])
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)parentCellConfigurationUpdateHandlerWithText:(id)text
{
  textCopy = text;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__CNOutlineGroupsAndAccountsStyle_parentCellConfigurationUpdateHandlerWithText___block_invoke;
  aBlock[3] = &unk_1E74E2CC8;
  v8 = textCopy;
  v4 = textCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __80__CNOutlineGroupsAndAccountsStyle_parentCellConfigurationUpdateHandlerWithText___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 traitCollection];
  v7 = [v6 _splitViewControllerContext];

  if (v7)
  {
    [MEMORY[0x1E69DCC28] headerConfiguration];
  }

  else
  {
    [MEMORY[0x1E69DCC28] prominentInsetGroupedHeaderConfiguration];
  }
  v8 = ;
  [v8 setText:*(a1 + 32)];
  [v5 setContentConfiguration:v8];
}

- (id)sectionConfigurationForLayoutEnvironment:(id)environment withLeadingActionsProvider:(id)provider withTrailingActionsProvider:(id)actionsProvider hasHeader:(BOOL)header
{
  v8 = MEMORY[0x1E69DD3F8];
  actionsProviderCopy = actionsProvider;
  providerCopy = provider;
  environmentCopy = environment;
  v12 = [[v8 alloc] initWithAppearanceStyle:3 layoutEnvironment:environmentCopy];
  [v12 setSeparatorStyle:0];
  [v12 setLeadingSwipeActionsConfigurationProvider:providerCopy];

  [v12 setTrailingSwipeActionsConfigurationProvider:actionsProviderCopy];
  v13 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v12 layoutEnvironment:environmentCopy];

  return v13;
}

@end