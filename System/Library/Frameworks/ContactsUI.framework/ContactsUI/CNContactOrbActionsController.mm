@interface CNContactOrbActionsController
+ (id)descriptorForRequiredKeys;
- (BOOL)shouldUseActionsManagerForContacts:(id)contacts;
- (CNContactOrbActionsController)initWithContact:(id)contact;
- (CNContactOrbActionsController)initWithContacts:(id)contacts;
- (CNContactOrbActionsController)initWithContacts:(id)contacts actionCategories:(id)categories bypassActionValidation:(BOOL)validation;
- (CNContactOrbActionsControllerDelegate)delegate;
- (id)actionsManager:(id)manager presentingViewControllerForAction:(id)action;
- (id)menuItemsForContactsWithActions:(id)actions;
- (void)contactActionsController:(id)controller didSelectAction:(id)action;
- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu;
- (void)reloadMenuItems;
- (void)setupActionsControllerForContact:(id)contact;
- (void)setupActionsForContacts:(id)contacts;
- (void)setupActionsManagerForContacts:(id)contacts;
@end

@implementation CNContactOrbActionsController

+ (id)descriptorForRequiredKeys
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNContactActionsController descriptorForRequiredKeys];
  v4 = +[CNQuickActionsManager descriptorForRequiredKeys];
  v11[1] = v4;
  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
  descriptorForRequiredKeys = [mEMORY[0x1E695CD80] descriptorForRequiredKeys];
  v11[2] = descriptorForRequiredKeys;
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

- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  menuCopy = menu;
  [(CNContactOrbActionsController *)self setMenuItems:menuCopy];
  delegate = [(CNContactOrbActionsController *)self delegate];
  [delegate contactOrbActionsController:self didUpdateWithMenu:menuCopy];
}

- (void)contactActionsController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  v5 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v6 = [actionCopy performActionWithContext:v5];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__CNContactOrbActionsController_contactActionsController_didSelectAction___block_invoke;
  v11[3] = &unk_1E74E5980;
  v7 = actionCopy;
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
  contacts = [(CNContactOrbActionsController *)self contacts];
  v4 = [(CNContactOrbActionsController *)self shouldUseActionsManagerForContacts:contacts];

  if (v4)
  {
    actionsManager = [(CNContactOrbActionsController *)self actionsManager];
    actions = [actionsManager actions];
    v6 = [(CNContactOrbActionsController *)self menuItemsForContactsWithActions:actions];
    [(CNContactOrbActionsController *)self setMenuItems:v6];
  }

  else
  {
    actionsManager = [(CNContactOrbActionsController *)self actionsController];
    [actionsManager retrieveModels];
  }
}

- (void)setupActionsControllerForContact:(id)contact
{
  contactCopy = contact;
  v5 = [CNContactActionsController alloc];
  v6 = +[CNContactActionsController supportedActionTypes];
  v7 = [(CNContactActionsController *)v5 initWithContact:contactCopy actionTypes:v6];

  [(CNContactActionsController *)v7 setDisplayMenuIconAtTopLevel:1];
  [(CNContactActionsController *)v7 setShouldUseOutlinedActionGlyphStyle:1];
  [(CNContactActionsController *)v7 setDelegate:self];
  actionsController = self->_actionsController;
  self->_actionsController = v7;
  v9 = v7;

  [(CNContactActionsController *)self->_actionsController retrieveModels];
}

- (id)actionsManager:(id)manager presentingViewControllerForAction:(id)action
{
  v5 = [(CNContactOrbActionsController *)self delegate:manager];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate = [(CNContactOrbActionsController *)self delegate];
    v8 = [delegate presentingViewControllerForActionsController:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)menuItemsForContactsWithActions:(id)actions
{
  v45 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  array = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = actionsCopy;
  v38 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v38)
  {
    v6 = *v41;
    v35 = array;
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
        contacts = [(CNContactOrbActionsController *)self contacts];
        v10 = [contacts count];

        if (v10 < 2)
        {
          v15 = [v8 titleForContext:0];
          outlinedImage = [v8 outlinedImage];
          v17 = outlinedImage;
          if (outlinedImage)
          {
            image = outlinedImage;
          }

          else
          {
            image = [v8 image];
          }

          v30 = image;

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
            mainAction = [v13 mainAction];
          }

          else
          {
            mainAction = v11;
          }

          v19 = mainAction;
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

          selfCopy = self;
          propertyAction = [v21 propertyAction];
          propertyItem = [propertyAction propertyItem];
          contact = [propertyItem contact];

          mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
          v15 = [mEMORY[0x1E695CD80] stringFromContact:contact];
          outlinedImage2 = [v21 outlinedImage];
          v28 = outlinedImage2;
          if (outlinedImage2)
          {
            image2 = outlinedImage2;
          }

          else
          {
            image2 = [v21 image];
          }

          v30 = image2;

          v31 = 0;
          self = selfCopy;
          array = v35;
          v6 = v36;
        }

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __65__CNContactOrbActionsController_menuItemsForContactsWithActions___block_invoke;
        v39[3] = &unk_1E74E7608;
        v39[4] = v8;
        v32 = [MEMORY[0x1E69DC628] actionWithTitle:v15 image:v30 identifier:0 handler:v39];
        [v32 setSubtitle:v31];
        [array addObject:v32];

        v13 = v15;
LABEL_27:
      }

      v38 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v38);
  }

  v33 = [array copy];

  return v33;
}

- (void)setupActionsManagerForContacts:(id)contacts
{
  v11 = [CNQuickActionsManager actionsManagerForContacts:contacts];
  actionCategories = [(CNContactOrbActionsController *)self actionCategories];
  [v11 setCategories:actionCategories];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  if (!userInterfaceIdiom)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
    if (CGRectGetHeight(v13) > 667.0)
    {
      [v11 setDesiredNumberOfActions:6];
LABEL_11:

      goto LABEL_12;
    }
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
  {
    [v11 setDesiredNumberOfActions:5];
  }

  else
  {
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 _referenceBounds];
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

  if (!userInterfaceIdiom)
  {
    goto LABEL_11;
  }

LABEL_12:

  [v11 setBypassActionValidation:{-[CNContactOrbActionsController bypassActionValidation](self, "bypassActionValidation")}];
  [v11 setDelegate:self];
  [(CNContactOrbActionsController *)self setActionsManager:v11];
}

- (BOOL)shouldUseActionsManagerForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    objc_opt_class();
    firstObject = [contactsCopy firstObject];
    if (objc_opt_isKindOfClass())
    {
      v5 = firstObject;
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
        isSuggestedMe = 1;
      }

      else
      {
        isSuggestedMe = [v6 isSuggestedMe];
      }
    }

    else
    {
      isSuggestedMe = 0;
    }
  }

  else
  {
    isSuggestedMe = 1;
  }

  return isSuggestedMe;
}

- (void)setupActionsForContacts:(id)contacts
{
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    if ([(CNContactOrbActionsController *)self shouldUseActionsManagerForContacts:contactsCopy])
    {
      [(CNContactOrbActionsController *)self setupActionsManagerForContacts:contactsCopy];
      actionsManager = [(CNContactOrbActionsController *)self actionsManager];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __57__CNContactOrbActionsController_setupActionsForContacts___block_invoke;
      v6[3] = &unk_1E74E6A88;
      v6[4] = self;
      [actionsManager updateActionsWithBlock:v6];
    }

    else
    {
      actionsManager = [contactsCopy firstObject];
      [(CNContactOrbActionsController *)self setupActionsControllerForContact:actionsManager];
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

- (CNContactOrbActionsController)initWithContacts:(id)contacts actionCategories:(id)categories bypassActionValidation:(BOOL)validation
{
  contactsCopy = contacts;
  categoriesCopy = categories;
  v15.receiver = self;
  v15.super_class = CNContactOrbActionsController;
  v11 = [(CNContactOrbActionsController *)&v15 init];
  v12 = v11;
  v13 = 0;
  if (contactsCopy && v11)
  {
    objc_storeStrong(&v11->_actionCategories, categories);
    v12->_bypassActionValidation = validation;
    objc_storeStrong(&v12->_contacts, contacts);
    [(CNContactOrbActionsController *)v12 setupActionsForContacts:contactsCopy];
    v13 = v12;
  }

  return v13;
}

- (CNContactOrbActionsController)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = contactsCopy;
  if (contactsCopy)
  {
    if ([contactsCopy count] < 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = +[CNQuickActionsManager defaultCategories];
    }

    self = [(CNContactOrbActionsController *)self initWithContacts:v5 actionCategories:v6 bypassActionValidation:0];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CNContactOrbActionsController)initWithContact:(id)contact
{
  v8[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8[0] = contactCopy;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    self = [(CNContactOrbActionsController *)self initWithContacts:v5];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end