@interface CNActionMenuHelper
- (id)configurationActionProviderWithActionBlock:(id)a3;
- (id)menuForProviders;
- (id)menuProviderWithActionBlock:(id)a3;
- (id)targetedPreviewForSourceView:(id)a3;
- (void)replaceDeferredMenuItemWithMenuItems:(id)a3;
- (void)setupDeferredMenuItem;
- (void)updateVisibleMenuWithMenuItems:(id)a3 contextMenuInteraction:(id)a4;
- (void)updateWithMenuItems:(id)a3 contextMenuInteraction:(id)a4;
- (void)willDismissMenu;
- (void)willDisplayMenuWithContextMenuInteraction:(id)a3;
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

- (void)willDisplayMenuWithContextMenuInteraction:(id)a3
{
  v4 = a3;
  [(CNActionMenuHelper *)self setIsMenuDisplayed:1];
  v5 = [(CNActionMenuHelper *)self deferredMenuItem];

  if (!v5)
  {
    v6 = [(CNActionMenuHelper *)self displayedMenuItems];
    v7 = [(CNActionMenuHelper *)self currentMenuItems];

    if (v6 != v7)
    {
      v8 = [MEMORY[0x1E6996818] mainThreadScheduler];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __64__CNActionMenuHelper_willDisplayMenuWithContextMenuInteraction___block_invoke;
      v10[3] = &unk_1E74E77C0;
      v10[4] = self;
      v11 = v4;
      v9 = [v8 afterDelay:v10 performBlock:0.1];
    }
  }
}

void __64__CNActionMenuHelper_willDisplayMenuWithContextMenuInteraction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentMenuItems];
  [v2 updateVisibleMenuWithMenuItems:v3 contextMenuInteraction:*(a1 + 40)];
}

- (void)replaceDeferredMenuItemWithMenuItems:(id)a3
{
  v7 = a3;
  v4 = [(CNActionMenuHelper *)self deferredMenuElementCompletionBlock];

  if (v4)
  {
    [(CNActionMenuHelper *)self setDisplayedMenuItems:v7];
    v5 = [(CNActionMenuHelper *)self deferredMenuElementCompletionBlock];
    v6 = [(CNActionMenuHelper *)self displayedMenuItems];
    (v5)[2](v5, v6);

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

- (void)updateVisibleMenuWithMenuItems:(id)a3 contextMenuInteraction:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v10 = v8;
  [v7 updateVisibleMenuWithBlock:v9];

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

- (void)updateWithMenuItems:(id)a3 contextMenuInteraction:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([v8 count])
  {
    v7 = [(CNActionMenuHelper *)self deferredMenuItem];

    if (v7)
    {
      [(CNActionMenuHelper *)self replaceDeferredMenuItemWithMenuItems:v8];
    }

    else if ([(CNActionMenuHelper *)self isMenuDisplayed])
    {
      [(CNActionMenuHelper *)self updateVisibleMenuWithMenuItems:v8 contextMenuInteraction:v6];
    }

    [(CNActionMenuHelper *)self setCurrentMenuItems:v8];
  }
}

- (id)targetedPreviewForSourceView:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v3 parameters:v4];

  return v6;
}

- (id)menuForProviders
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNActionMenuHelper *)self currentMenuItems];
  [(CNActionMenuHelper *)self setDisplayedMenuItems:v3];

  v4 = [(CNActionMenuHelper *)self displayedMenuItems];
  v5 = [v4 count];

  if (!v5)
  {
    [(CNActionMenuHelper *)self setupDeferredMenuItem];
    v6 = [(CNActionMenuHelper *)self deferredMenuItem];
    v15[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(CNActionMenuHelper *)self setDisplayedMenuItems:v7];
  }

  v8 = MEMORY[0x1E69DCC60];
  v9 = [(CNActionMenuHelper *)self menuTitle];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F0CE7398;
  }

  v12 = [(CNActionMenuHelper *)self displayedMenuItems];
  v13 = [v8 menuWithTitle:v11 children:v12];

  return v13;
}

- (id)menuProviderWithActionBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__CNActionMenuHelper_menuProviderWithActionBlock___block_invoke;
  v8[3] = &unk_1E74E7748;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t __50__CNActionMenuHelper_menuProviderWithActionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 menuForProviders];
}

- (id)configurationActionProviderWithActionBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__CNActionMenuHelper_configurationActionProviderWithActionBlock___block_invoke;
  v8[3] = &unk_1E74E7720;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
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