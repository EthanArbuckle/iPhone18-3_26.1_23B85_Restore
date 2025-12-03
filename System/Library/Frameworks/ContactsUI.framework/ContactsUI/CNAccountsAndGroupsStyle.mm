@interface CNAccountsAndGroupsStyle
+ (id)styleForTraitCollection:(id)collection;
- (id)cellAccessoriesForContextMenuPreviewForItem:(id)item;
- (id)cellAccessoriesForItem:(id)item;
- (id)parentCellAccessories;
@end

@implementation CNAccountsAndGroupsStyle

+ (id)styleForTraitCollection:(id)collection
{
  if ([collection _splitViewControllerContext] == 2)
  {
    v3 = &styleForTraitCollection__outlineStyle;
    v4 = styleForTraitCollection__outlineStyle;
    if (styleForTraitCollection__outlineStyle)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = &styleForTraitCollection__insetStyle;
    v4 = styleForTraitCollection__insetStyle;
    if (styleForTraitCollection__insetStyle)
    {
      goto LABEL_6;
    }
  }

  v5 = objc_opt_new();
  v6 = *v3;
  *v3 = v5;

  v4 = *v3;
LABEL_6:

  return v4;
}

- (id)cellAccessoriesForContextMenuPreviewForItem:(id)item
{
  v3 = [(CNAccountsAndGroupsStyle *)self cellAccessoriesForItem:item];
  v4 = [v3 _cn_map:&__block_literal_global_38_17912];

  return v4;
}

id __72__CNAccountsAndGroupsStyle_cellAccessoriesForContextMenuPreviewForItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [v2 setHidden:1];
  }

  return v2;
}

- (id)cellAccessoriesForItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactCountString = [itemCopy contactCountString];
  if (contactCountString)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:contactCountString];
    [v4 addObject:v6];
  }

  groupSymbol = [itemCopy groupSymbol];
  if (groupSymbol)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:groupSymbol];
    v9 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v8 placement:0];
    [v4 addObject:v9];
  }

  if ([itemCopy canDelete])
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DC798]);
    [v4 addObject:v10];
  }

  return v4;
}

- (id)parentCellAccessories
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69DC7C8]);
  [v2 setStyle:1];
  headerConfiguration = [MEMORY[0x1E69DCC28] headerConfiguration];
  textProperties = [headerConfiguration textProperties];
  color = [textProperties color];
  [v2 setTintColor:color];

  v8[0] = v2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

@end