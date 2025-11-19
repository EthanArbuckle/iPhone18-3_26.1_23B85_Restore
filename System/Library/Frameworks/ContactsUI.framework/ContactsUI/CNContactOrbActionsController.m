@interface CNContactOrbActionsController
+ (id)descriptorForRequiredKeys;
- (BOOL)shouldUseActionsManagerForContacts:(id)a3;
- (CNContactOrbActionsController)initWithContact:(id)a3;
- (CNContactOrbActionsController)initWithContacts:(id)a3;
- (CNContactOrbActionsController)initWithContacts:(id)a3 actionCategories:(id)a4 bypassActionValidation:(BOOL)a5;
- (CNContactOrbActionsControllerDelegate)delegate;
- (id)actionsManager:(id)a3 presentingViewControllerForAction:(id)a4;
- (id)menuItemsForContactsWithActions:(id)a3;
- (void)contactActionsController:(id)a3 didSelectAction:(id)a4;
- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)reloadMenuItems;
- (void)setupActionsControllerForContact:(id)a3;
- (void)setupActionsForContacts:(id)a3;
- (void)setupActionsManagerForContacts:(id)a3;
@end

@implementation CNContactOrbActionsController

+ (id)descriptorForRequiredKeys
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNContactActionsController descriptorForRequiredKeys];
  v4 = +[CNQuickActionsManager descriptorForRequiredKeys];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
  v6 = [v5 descriptorForRequiredKeys];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNContactOrbActionsController descriptorForRequiredKeys]"];
  v9 = [v2 descriptorWithKeyDescriptors:v7 description:v8];

  return v9;
}

- (CNContactOrbActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v5 = a4;
  [(CNContactOrbActionsController *)self setMenuItems:v5];
  v6 = [(CNContactOrbActionsController *)self delegate];
  [v6 contactOrbActionsController:self didUpdateWithMenu:v5];
}

- (void)contactActionsController:(id)a3 didSelectAction:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v6 = [v4 performActionWithContext:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CNContactOrbActionsController_contactActionsController_didSelectAction___block_invoke;
  v11[3] = &unk_1E74E5980;
  v7 = v4;
  v12 = v7;
  [v6 addSuccessBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74__CNContactOrbActionsController_contactActionsController_didSelectAction___block_invoke_2;
  v9[3] = &unk_1E74E5200;
  v10 = v7;
  v8 = v7;
  [v6 addFailureBlock:v9];
}

- (void)reloadMenuItems
{
  v3 = [(CNContactOrbActionsController *)self contacts];
  v4 = [(CNContactOrbActionsController *)self shouldUseActionsManagerForContacts:v3];

  if (v4)
  {
    v7 = [(CNContactOrbActionsController *)self actionsManager];
    v5 = [v7 actions];
    v6 = [(CNContactOrbActionsController *)self menuItemsForContactsWithActions:v5];
    [(CNContactOrbActionsController *)self setMenuItems:v6];
  }

  else
  {
    v7 = [(CNContactOrbActionsController *)self actionsController];
    [v7 retrieveModels];
  }
}

- (void)setupActionsControllerForContact:(id)a3
{
  v4 = a3;
  v5 = [CNContactActionsController alloc];
  v6 = +[CNContactActionsController supportedActionTypes];
  v7 = [(CNContactActionsController *)v5 initWithContact:v4 actionTypes:v6];

  [(CNContactActionsController *)v7 setDisplayMenuIconAtTopLevel:1];
  [(CNContactActionsController *)v7 setShouldUseOutlinedActionGlyphStyle:1];
  [(CNContactActionsController *)v7 setDelegate:self];
  actionsController = self->_actionsController;
  self->_actionsController = v7;
  v9 = v7;

  [(CNContactActionsController *)self->_actionsController retrieveModels];
}

- (id)actionsManager:(id)a3 presentingViewControllerForAction:(id)a4
{
  v5 = [(CNContactOrbActionsController *)self delegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNContactOrbActionsController *)self delegate];
    v8 = [v7 presentingViewControllerForActionsController:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)menuItemsForContactsWithActions:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v38 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v38)
  {
    v6 = *v41;
    v35 = v5;
    v36 = *v41;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v40 + 1) + 8 * i);
        v9 = [(CNContactOrbActionsController *)self contacts];
        v10 = [v9 count];

        if (v10 < 2)
        {
          v15 = [v8 titleForContext:0];
          v16 = [v8 outlinedImage];
          v17 = v16;
          if (v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = [v8 image];
          }

          v30 = v18;

          v31 = [v8 subtitleForContext:0];
        }

        else
        {
          objc_opt_class();
          v11 = v8;
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          objc_opt_class();
          if (v13)
          {
            v14 = [v13 mainAction];
          }

          else
          {
            v14 = v11;
          }

          v19 = v14;
          if (objc_opt_isKindOfClass())
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;

          if (!v21)
          {
            v6 = v36;
            goto LABEL_27;
          }

          v22 = self;
          v23 = [v21 propertyAction];
          v24 = [v23 propertyItem];
          v25 = [v24 contact];

          v26 = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
          v15 = [v26 stringFromContact:v25];
          v27 = [v21 outlinedImage];
          v28 = v27;
          if (v27)
          {
            v29 = v27;
          }

          else
          {
            v29 = [v21 image];
          }

          v30 = v29;

          v31 = 0;
          self = v22;
          v5 = v35;
          v6 = v36;
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __65__CNContactOrbActionsController_menuItemsForContactsWithActions___block_invoke;
        v39[3] = &unk_1E74E7608;
        v39[4] = v8;
        v32 = [MEMORY[0x1E69DC628] actionWithTitle:v15 image:v30 identifier:0 handler:v39];
        [v32 setSubtitle:v31];
        [v5 addObject:v32];

        v13 = v15;
LABEL_27:
      }

      v38 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v38);
  }

  v33 = [v5 copy];

  return v33;
}

- (void)setupActionsManagerForContacts:(id)a3
{
  v11 = [CNQuickActionsManager actionsManagerForContacts:a3];
  v5 = [(CNContactOrbActionsController *)self actionCategories];
  [v11 setCategories:v5];

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  v7 = [v6 userInterfaceIdiom];
  if (!v7)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
    if (CGRectGetHeight(v13) > 667.0)
    {
      [v11 setDesiredNumberOfActions:6];
LABEL_11:

      goto LABEL_12;
    }
  }

  v8 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v8 userInterfaceIdiom])
  {
    [v11 setDesiredNumberOfActions:5];
  }

  else
  {
    v9 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v9 _referenceBounds];
    if (CGRectGetHeight(v14) <= 568.0)
    {
      v10 = 5;
    }

    else
    {
      v10 = 6;
    }

    [v11 setDesiredNumberOfActions:v10];
  }

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_12:

  [v11 setBypassActionValidation:{-[CNContactOrbActionsController bypassActionValidation](self, "bypassActionValidation")}];
  [v11 setDelegate:self];
  [(CNContactOrbActionsController *)self setActionsManager:v11];
}

- (BOOL)shouldUseActionsManagerForContacts:(id)a3
{
  v3 = a3;
  if ([v3 count] == 1)
  {
    objc_opt_class();
    v4 = [v3 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      if ([v6 isUnknown])
      {
        v7 = 1;
      }

      else
      {
        v7 = [v6 isSuggestedMe];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setupActionsForContacts:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    if ([(CNContactOrbActionsController *)self shouldUseActionsManagerForContacts:v4])
    {
      [(CNContactOrbActionsController *)self setupActionsManagerForContacts:v4];
      v5 = [(CNContactOrbActionsController *)self actionsManager];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__CNContactOrbActionsController_setupActionsForContacts___block_invoke;
      v6[3] = &unk_1E74E6A88;
      v6[4] = self;
      [v5 updateActionsWithBlock:v6];
    }

    else
    {
      v5 = [v4 firstObject];
      [(CNContactOrbActionsController *)self setupActionsControllerForContact:v5];
    }
  }
}

void __57__CNContactOrbActionsController_setupActionsForContacts___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [v2 actionsManager];
  v3 = [v5 actions];
  v4 = [v2 menuItemsForContactsWithActions:v3];
  [*(a1 + 32) setMenuItems:v4];
}

- (CNContactOrbActionsController)initWithContacts:(id)a3 actionCategories:(id)a4 bypassActionValidation:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = CNContactOrbActionsController;
  v11 = [(CNContactOrbActionsController *)&v15 init];
  v12 = v11;
  v13 = 0;
  if (v9 && v11)
  {
    objc_storeStrong(&v11->_actionCategories, a4);
    v12->_bypassActionValidation = a5;
    objc_storeStrong(&v12->_contacts, a3);
    [(CNContactOrbActionsController *)v12 setupActionsForContacts:v9];
    v13 = v12;
  }

  return v13;
}

- (CNContactOrbActionsController)initWithContacts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 count] < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = +[CNQuickActionsManager defaultCategories];
    }

    self = [(CNContactOrbActionsController *)self initWithContacts:v5 actionCategories:v6 bypassActionValidation:0];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CNContactOrbActionsController)initWithContact:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    self = [(CNContactOrbActionsController *)self initWithContacts:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end