@interface CNActionMenuHelper
- (id)configurationActionProviderWithActionBlock:(id)block;
- (id)menuForProviders;
- (id)menuProviderWithActionBlock:(id)block;
- (id)targetedPreviewForSourceView:(id)view;
- (void)replaceDeferredMenuItemWithMenuItems:(id)items;
- (void)setupDeferredMenuItem;
- (void)updateVisibleMenuWithMenuItems:(id)items contextMenuInteraction:(id)interaction;
- (void)updateWithMenuItems:(id)items contextMenuInteraction:(id)interaction;
- (void)willDismissMenu;
- (void)willDisplayMenuWithContextMenuInteraction:(id)interaction;
@end

@implementation CNActionMenuHelper

- (void)willDismissMenu
{
  [(CNActionMenuHelper *)self setDisplayedMenuItems:0];
  [(CNActionMenuHelper *)self setCurrentMenuItems:0];
  [(CNActionMenuHelper *)self setIsMenuDisplayed:0];
  [(CNActionMenuHelper *)self setDeferredMenuItem:0];

  [(CNActionMenuHelper *)self setDeferredMenuElementCompletionBlock:0];
}

- (void)willDisplayMenuWithContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  [(CNActionMenuHelper *)self setIsMenuDisplayed:1];
  deferredMenuItem = [(CNActionMenuHelper *)self deferredMenuItem];

  if (!deferredMenuItem)
  {
    displayedMenuItems = [(CNActionMenuHelper *)self displayedMenuItems];
    currentMenuItems = [(CNActionMenuHelper *)self currentMenuItems];

    if (displayedMenuItems != currentMenuItems)
    {
      mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__CNActionMenuHelper_willDisplayMenuWithContextMenuInteraction___block_invoke;
      v10[3] = &unk_1E74E77C0;
      v10[4] = self;
      v11 = interactionCopy;
      v9 = [mainThreadScheduler afterDelay:v10 performBlock:0.1];
    }
  }
}

void __64__CNActionMenuHelper_willDisplayMenuWithContextMenuInteraction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentMenuItems];
  [v2 updateVisibleMenuWithMenuItems:v3 contextMenuInteraction:*(a1 + 40)];
}

- (void)replaceDeferredMenuItemWithMenuItems:(id)items
{
  itemsCopy = items;
  deferredMenuElementCompletionBlock = [(CNActionMenuHelper *)self deferredMenuElementCompletionBlock];

  if (deferredMenuElementCompletionBlock)
  {
    [(CNActionMenuHelper *)self setDisplayedMenuItems:itemsCopy];
    deferredMenuElementCompletionBlock2 = [(CNActionMenuHelper *)self deferredMenuElementCompletionBlock];
    displayedMenuItems = [(CNActionMenuHelper *)self displayedMenuItems];
    (deferredMenuElementCompletionBlock2)[2](deferredMenuElementCompletionBlock2, displayedMenuItems);

    [(CNActionMenuHelper *)self setDeferredMenuItem:0];
    [(CNActionMenuHelper *)self setDeferredMenuElementCompletionBlock:0];
  }
}

- (void)setupDeferredMenuItem
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__CNActionMenuHelper_setupDeferredMenuItem__block_invoke;
  v4[3] = &unk_1E74E7798;
  v4[4] = self;
  v3 = [MEMORY[0x1E69DC928] elementWithProvider:v4];
  [(CNActionMenuHelper *)self setDeferredMenuItem:v3];
}

void __43__CNActionMenuHelper_setupDeferredMenuItem__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) displayedMenuItems];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [*(a1 + 32) deferredMenuItem];
  v6 = v5;
  if (v4 != v5)
  {

LABEL_3:
    [*(a1 + 32) setDeferredMenuElementCompletionBlock:v10];
    goto LABEL_6;
  }

  v7 = [*(a1 + 32) currentMenuItems];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = [*(a1 + 32) currentMenuItems];
  [*(a1 + 32) setDisplayedMenuItems:v8];

  v9 = [*(a1 + 32) displayedMenuItems];
  v10[2](v10, v9);

  [*(a1 + 32) setDeferredMenuItem:0];
LABEL_6:
}

- (void)updateVisibleMenuWithMenuItems:(id)items contextMenuInteraction:(id)interaction
{
  itemsCopy = items;
  interactionCopy = interaction;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__CNActionMenuHelper_updateVisibleMenuWithMenuItems_contextMenuInteraction___block_invoke;
  v9[3] = &unk_1E74E7770;
  v11 = v12;
  v9[4] = self;
  v8 = itemsCopy;
  v10 = v8;
  [interactionCopy updateVisibleMenuWithBlock:v9];

  _Block_object_dispose(v12, 8);
}

id __76__CNActionMenuHelper_updateVisibleMenuWithMenuItems_contextMenuInteraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24) == 1)
  {
    v6 = v3;
  }

  else
  {
    *(v5 + 24) = 1;
    [*(a1 + 32) setDisplayedMenuItems:*(a1 + 40)];
    v7 = [*(a1 + 32) displayedMenuItems];
    v6 = [v4 menuByReplacingChildren:v7];
  }

  return v6;
}

- (void)updateWithMenuItems:(id)items contextMenuInteraction:(id)interaction
{
  itemsCopy = items;
  interactionCopy = interaction;
  if ([itemsCopy count])
  {
    deferredMenuItem = [(CNActionMenuHelper *)self deferredMenuItem];

    if (deferredMenuItem)
    {
      [(CNActionMenuHelper *)self replaceDeferredMenuItemWithMenuItems:itemsCopy];
    }

    else if ([(CNActionMenuHelper *)self isMenuDisplayed])
    {
      [(CNActionMenuHelper *)self updateVisibleMenuWithMenuItems:itemsCopy contextMenuInteraction:interactionCopy];
    }

    [(CNActionMenuHelper *)self setCurrentMenuItems:itemsCopy];
  }
}

- (id)targetedPreviewForSourceView:(id)view
{
  viewCopy = view;
  v4 = objc_opt_new();
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  v6 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:viewCopy parameters:v4];

  return v6;
}

- (id)menuForProviders
{
  v15[1] = *MEMORY[0x1E69E9840];
  currentMenuItems = [(CNActionMenuHelper *)self currentMenuItems];
  [(CNActionMenuHelper *)self setDisplayedMenuItems:currentMenuItems];

  displayedMenuItems = [(CNActionMenuHelper *)self displayedMenuItems];
  v5 = [displayedMenuItems count];

  if (!v5)
  {
    [(CNActionMenuHelper *)self setupDeferredMenuItem];
    deferredMenuItem = [(CNActionMenuHelper *)self deferredMenuItem];
    v15[0] = deferredMenuItem;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CNActionMenuHelper *)self setDisplayedMenuItems:v7];
  }

  v8 = MEMORY[0x1E69DCC60];
  menuTitle = [(CNActionMenuHelper *)self menuTitle];
  v10 = menuTitle;
  if (menuTitle)
  {
    v11 = menuTitle;
  }

  else
  {
    v11 = &stru_1F0CE7398;
  }

  displayedMenuItems2 = [(CNActionMenuHelper *)self displayedMenuItems];
  v13 = [v8 menuWithTitle:v11 children:displayedMenuItems2];

  return v13;
}

- (id)menuProviderWithActionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CNActionMenuHelper_menuProviderWithActionBlock___block_invoke;
  v8[3] = &unk_1E74E7748;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t __50__CNActionMenuHelper_menuProviderWithActionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 menuForProviders];
}

- (id)configurationActionProviderWithActionBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CNActionMenuHelper_configurationActionProviderWithActionBlock___block_invoke;
  v8[3] = &unk_1E74E7720;
  v8[4] = self;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t __65__CNActionMenuHelper_configurationActionProviderWithActionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 menuForProviders];
}

@end