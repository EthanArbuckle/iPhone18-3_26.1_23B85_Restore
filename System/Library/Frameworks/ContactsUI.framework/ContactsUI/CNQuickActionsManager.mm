@interface CNQuickActionsManager
+ (BOOL)hasActionsForContact:(id)contact;
+ (id)actionsManagerForContacts:(id)contacts;
+ (id)defaultCategories;
+ (id)descriptorForRequiredKeys;
- (BOOL)sortsWithDuet;
- (CNContact)contact;
- (CNQuickActionsManager)initWithContacts:(id)contacts;
- (CNQuickActionsManagerDelegate)delegate;
- (NSArray)categories;
- (id)_addActionForPropertyItem:(id)item category:(id)category propertyActionClass:(Class)class;
- (id)_groupedActionsFromOrderedActionsByCategories:(id)categories;
- (id)_hierarchicalActionsForCategory:(id)category fromActions:(id)actions askDelegate:(BOOL)delegate;
- (id)_ignoredLabels;
- (id)_orderedLabels;
- (id)_propertyItemsForKey:(id)key;
- (id)quickActions;
- (void)_actionsUpdated;
- (void)_addAction:(id)action;
- (void)_createGroupsForPropertyKeys:(id)keys;
- (void)_openURL:(id)l;
- (void)_updateActionsForPropertyItems:(id)items category:(id)category propertyActionClass:(Class)class;
- (void)_updateIDSActionsForPropertyItems:(id)items category:(id)category serviceName:(id)name propertyActionClass:(Class)class;
- (void)_updateMultiContactActions;
- (void)_updateSingleContactActions;
- (void)actionPerformed:(id)performed;
- (void)contactAction:(id)action presentViewController:(id)controller;
- (void)contactActionDidUpdate:(id)update;
- (void)dealloc;
- (void)refreshActionsAndForceSendUpdate:(BOOL)update;
- (void)setSortsWithDuet:(BOOL)duet;
- (void)stopUpdatingActions;
- (void)updateActionsWithBlock:(id)block;
@end

@implementation CNQuickActionsManager

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2, &__block_literal_global_1900);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2;

  return v3;
}

void __50__CNQuickActionsManager_descriptorForRequiredKeys__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = *MEMORY[0x1E695C208];
  v6[0] = *MEMORY[0x1E695C330];
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNQuickActionsManager descriptorForRequiredKeys]_block_invoke"];
  v4 = [v0 descriptorWithKeyDescriptors:v2 description:v3];
  v5 = descriptorForRequiredKeys_cn_once_object_2;
  descriptorForRequiredKeys_cn_once_object_2 = v4;
}

- (CNQuickActionsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactAction:(id)action presentViewController:(id)controller
{
  actionCopy = action;
  controllerCopy = controller;
  delegate = [(CNQuickActionsManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNQuickActionsManager *)self delegate];
    v10 = [delegate2 actionsManager:self presentingViewControllerForAction:actionCopy];

    if (v10)
    {
      [v10 presentViewController:controllerCopy animated:1 completion:0];
    }
  }
}

- (void)contactActionDidUpdate:(id)update
{
  faceTimeVideoAction = [(CNQuickActionsManager *)self faceTimeVideoAction];

  if (faceTimeVideoAction)
  {
    faceTimeVideoAction2 = [(CNQuickActionsManager *)self faceTimeVideoAction];
    [faceTimeVideoAction2 setCached:0];

    usageManager = self->_usageManager;
    faceTimeVideoAction3 = [(CNQuickActionsManager *)self faceTimeVideoAction];
    [(CNQuickActionsUsageManager *)usageManager cacheEnabledStateForAction:faceTimeVideoAction3];
  }

  faceTimeAudioAction = [(CNQuickActionsManager *)self faceTimeAudioAction];

  if (faceTimeAudioAction)
  {
    faceTimeAudioAction2 = [(CNQuickActionsManager *)self faceTimeAudioAction];
    [faceTimeAudioAction2 setCached:0];

    v10 = self->_usageManager;
    faceTimeAudioAction3 = [(CNQuickActionsManager *)self faceTimeAudioAction];
    [(CNQuickActionsUsageManager *)v10 cacheEnabledStateForAction:faceTimeAudioAction3];
  }

  [(CNQuickActionsManager *)self refreshActionsAndForceSendUpdate:0];
}

- (id)quickActions
{
  actions = [(CNQuickActionsManager *)self actions];
  v3 = [actions indexesOfObjectsPassingTest:&__block_literal_global_81];
  v4 = [actions objectsAtIndexes:v3];

  return v4;
}

uint64_t __37__CNQuickActionsManager_quickActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 category];
  v3 = [v2 isEqualToString:CNQuickActionCategoryMail];

  return v3 ^ 1u;
}

- (void)actionPerformed:(id)performed
{
  performedCopy = performed;
  usageManager = [(CNQuickActionsManager *)self usageManager];
  [usageManager actionPerformed:performedCopy];

  delegate = [(CNQuickActionsManager *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNQuickActionsManager *)self delegate];
    [delegate2 actionsManager:self actionDidPerform:performedCopy];
  }

  [(CNQuickActionsManager *)self refreshActionsAndForceSendUpdate:0];
}

- (void)_actionsUpdated
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_updateBlocks;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)stopUpdatingActions
{
  [(NSMutableSet *)self->_requests makeObjectsPerformSelector:sel_cancel];
  requests = self->_requests;
  self->_requests = 0;
}

- (void)refreshActionsAndForceSendUpdate:(BOOL)update
{
  v24 = *MEMORY[0x1E69E9840];
  contact = [(CNQuickActionsManager *)self contact];

  if (contact)
  {
    updateCopy = update;
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_actionsByCategories, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    categories = [(CNQuickActionsManager *)self categories];
    v8 = [categories countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(categories);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_actionsByCategories objectForKeyedSubscript:v12];
          usageManager = [(CNQuickActionsManager *)self usageManager];
          v15 = [usageManager sortedActions:v13];

          if ([v15 count])
          {
            [v6 setObject:v15 forKeyedSubscript:v12];
            [v15 count];
          }
        }

        v9 = [categories countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = [(CNQuickActionsManager *)self _groupedActionsFromOrderedActionsByCategories:v6];
    v17 = v16;
    if (updateCopy || ([v16 isEqualToOrderedSet:self->_actions] & 1) == 0)
    {
      objc_storeStrong(&self->_actions, v17);
      [(CNQuickActionsManager *)self _actionsUpdated];
    }
  }
}

- (void)_updateMultiContactActions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_contacts, "count")}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__CNQuickActionsManager__updateMultiContactActions__block_invoke;
  aBlock[3] = &unk_1E74E6A88;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_contacts;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v14 + 1) + 8 * v8);
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
        v10 = [CNQuickActionsManager actionsManagerForContacts:v9];

        categories = [(CNQuickActionsManager *)self categories];
        [v10 setCategories:categories];

        [v10 setBypassActionValidation:{-[CNQuickActionsManager bypassActionValidation](self, "bypassActionValidation")}];
        delegate = [(CNQuickActionsManager *)self delegate];
        [v10 setDelegate:delegate];

        [v3 addObject:v10];
        [v10 updateActionsWithBlock:v4];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  [(CNQuickActionsManager *)self setSubManagers:v3];
  v4[2](v4);
}

void __51__CNQuickActionsManager__updateMultiContactActions__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) subManagers];

  if (v2)
  {
    v3 = MEMORY[0x1E695DFA0];
    v4 = [*(a1 + 32) subManagers];
    v5 = [v3 orderedSetWithCapacity:{objc_msgSend(v4, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [*(a1 + 32) subManagers];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * v10) actions];
          [v5 addObjectsFromArray:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    *(v12 + 16) = v5;
    v14 = v5;

    [*(a1 + 32) _actionsUpdated];
  }
}

- (void)_updateSingleContactActions
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(CNQuickActionsManager *)self _propertyItemsForKey:*MEMORY[0x1E695C330]];
  v48 = [(CNQuickActionsManager *)self _propertyItemsForKey:*MEMORY[0x1E695C208]];
  v4 = +[CNCapabilitiesManager defaultCapabilitiesManager];
  if ([v4 isFaceTimeAppAvailable])
  {
    isConferencingAvailable = [v4 isConferencingAvailable];
  }

  else
  {
    isConferencingAvailable = 0;
  }

  isFaceTimeAudioAvailable = [v4 isFaceTimeAudioAvailable];
  if ([v3 count])
  {
    hasCellularTelephonyCapability = [v4 hasCellularTelephonyCapability];
  }

  else
  {
    hasCellularTelephonyCapability = 0;
  }

  if ([v3 count])
  {
    hasSMSCapability = [v4 hasSMSCapability];
  }

  else
  {
    hasSMSCapability = 0;
  }

  LODWORD(v47) = isFaceTimeAudioAvailable;
  if ([v4 isMessagesAppAvailable] && (objc_msgSend(v3, "count") || objc_msgSend(v48, "count")))
  {
    HIDWORD(v47) = [v4 isMadridConfigured];
  }

  else
  {
    HIDWORD(v47) = 0;
  }

  if ((hasCellularTelephonyCapability & 1) != 0 || [(CNQuickActionsManager *)self bypassActionValidation])
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v10)
    {
      v11 = *v53;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v53 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v52 + 1) + 8 * i) setAllowsPhone:{1, v47}];
        }

        v10 = [v9 countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v10);
    }

    [(CNQuickActionsManager *)self _updateActionsForPropertyItems:v9 category:CNQuickActionCategoryAudioCall propertyActionClass:objc_opt_class()];
  }

  if ((hasSMSCapability & 1) != 0 || [(CNQuickActionsManager *)self bypassActionValidation])
  {
    [(CNQuickActionsManager *)self _updateActionsForPropertyItems:v3 category:CNQuickActionCategoryInstantMessage propertyActionClass:objc_opt_class()];
  }

  [(CNQuickActionsManager *)self _updateActionsForPropertyItems:v48 category:CNQuickActionCategoryMail propertyActionClass:objc_opt_class()];
  if ((isConferencingAvailable & 1) != 0 || [(CNQuickActionsManager *)self bypassActionValidation])
  {
    categories = [(CNQuickActionsManager *)self categories];
    if ([categories containsObject:CNQuickActionCategoryVideoCall])
    {
    }

    else
    {
      categories2 = [(CNQuickActionsManager *)self categories];
      v15 = [categories2 containsObject:CNQuickActionCategoryAudioCall];

      if (!v15)
      {
        goto LABEL_39;
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    [array addObjectsFromArray:v3];
    [array addObjectsFromArray:v48];
    v17 = [CNPropertyFaceTimeAction alloc];
    contact = [(CNQuickActionsManager *)self contact];
    v19 = [(CNPropertyFaceTimeAction *)v17 initWithContact:contact propertyItems:array];

    categories3 = [(CNQuickActionsManager *)self categories];
    v21 = [categories3 containsObject:CNQuickActionCategoryVideoCall];

    if (v21)
    {
      v22 = [(CNQuickPropertyAction *)[CNQuickFaceTimeAction alloc] initWithPropertyAction:v19];
      [(CNQuickFaceTimeAction *)v22 setAudioOnly:0];
      [(CNQuickActionsUsageManager *)self->_usageManager updateCachedEnabledStateForAction:v22];
      [(CNQuickActionsManager *)self setFaceTimeVideoAction:v22];
      [(CNQuickActionsManager *)self _addAction:v22];
    }

    if (v47)
    {
      categories4 = [(CNQuickActionsManager *)self categories];
      v24 = [categories4 containsObject:CNQuickActionCategoryAudioCall];

      if (v24)
      {
        v25 = [(CNQuickPropertyAction *)[CNQuickFaceTimeAction alloc] initWithPropertyAction:v19];
        [(CNQuickFaceTimeAction *)v25 setAudioOnly:1];
        [(CNQuickActionsUsageManager *)self->_usageManager updateCachedEnabledStateForAction:v25];
        [(CNQuickActionsManager *)self setFaceTimeAudioAction:v25];
        [(CNQuickActionsManager *)self _addAction:v25];
      }
    }
  }

LABEL_39:
  if ((v47 & 0x100000000) != 0 || [(CNQuickActionsManager *)self bypassActionValidation])
  {
    v26 = CNQuickActionCategoryInstantMessage;
    v27 = getIDSServiceNameiMessage_1863();
    [(CNQuickActionsManager *)self _updateIDSActionsForPropertyItems:v48 category:v26 serviceName:v27 propertyActionClass:objc_opt_class()];

    v28 = CNQuickActionCategoryInstantMessage;
    v29 = getIDSServiceNameiMessage_1863();
    [(CNQuickActionsManager *)self _updateIDSActionsForPropertyItems:v3 category:v28 serviceName:v29 propertyActionClass:objc_opt_class()];
  }

  categories5 = [(CNQuickActionsManager *)self categories];
  if ([(CNContactCreateNewContactAction *)categories5 containsObject:CNQuickActionCategoryAddToContacts])
  {
    contact2 = [(CNQuickActionsManager *)self contact];
    isUnknown = [contact2 isUnknown];

    if (!isUnknown)
    {
      goto LABEL_46;
    }

    v33 = [CNContactCreateNewContactAction alloc];
    contact3 = [(CNQuickActionsManager *)self contact];
    categories5 = [(CNContactAction *)v33 initWithContact:contact3];

    v35 = [[CNQuickContactAction alloc] initWithContactAction:categories5];
    [(CNQuickAction *)v35 setCategory:CNQuickActionCategoryAddToContacts];
    v36 = CNContactsUIBundle();
    v37 = [v36 localizedStringForKey:@"UNKNOWN_CARD_CREATE_NEW_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNQuickAction *)v35 setTitle:v37];

    [(CNQuickAction *)v35 setIdentifier:@"create-new"];
    [(CNQuickActionsManager *)self _addAction:v35];
    v38 = [CNContactAddToExistingContactAction alloc];
    contact4 = [(CNQuickActionsManager *)self contact];
    v40 = [(CNContactAction *)v38 initWithContact:contact4];

    v41 = [[CNQuickContactAction alloc] initWithContactAction:v40];
    [(CNQuickAction *)v41 setCategory:CNQuickActionCategoryAddToContacts];
    v42 = CNContactsUIBundle();
    v43 = [v42 localizedStringForKey:@"UNKNOWN_CARD_ADD_TO_EXISTING_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNQuickAction *)v41 setTitle:v43];

    [(CNQuickAction *)v41 setIdentifier:@"add-existing"];
    [(CNQuickActionsManager *)self _addAction:v41];
  }

LABEL_46:
  categories6 = [(CNQuickActionsManager *)self categories];
  if (![(CNQuickAction *)categories6 containsObject:CNQuickActionCategoryInfo])
  {
LABEL_49:

    goto LABEL_50;
  }

  contact5 = [(CNQuickActionsManager *)self contact];
  isUnknown2 = [contact5 isUnknown];

  if ((isUnknown2 & 1) == 0)
  {
    categories6 = objc_alloc_init(CNQuickAction);
    [(CNQuickAction *)categories6 setCategory:CNQuickActionCategoryInfo];
    [(CNQuickAction *)categories6 setIdentifier:@"info"];
    objc_initWeak(&location, self);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __52__CNQuickActionsManager__updateSingleContactActions__block_invoke;
    v49[3] = &unk_1E74E6C98;
    objc_copyWeak(&v50, &location);
    [(CNQuickAction *)categories6 setPerformBlock:v49];
    [(CNQuickActionsManager *)self _addAction:categories6];
    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    goto LABEL_49;
  }

LABEL_50:
  [(CNQuickActionsManager *)self refreshActionsAndForceSendUpdate:1];
}

void __52__CNQuickActionsManager__updateSingleContactActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = MEMORY[0x1E695DFF8];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [WeakRetained contact];
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"contact://show?id=%@", v4];
  v6 = [v1 URLWithString:v5];

  [WeakRetained _openURL:v6];
}

- (void)updateActionsWithBlock:(id)block
{
  aBlock = block;
  [(CNQuickActionsManager *)self stopUpdatingActions];
  v4 = [MEMORY[0x1E695DFA8] set];
  requests = self->_requests;
  self->_requests = v4;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  actionsByCategories = self->_actionsByCategories;
  self->_actionsByCategories = dictionary;

  subManagers = self->_subManagers;
  self->_subManagers = 0;

  if (aBlock)
  {
    updateBlocks = self->_updateBlocks;
    v10 = _Block_copy(aBlock);
    [(NSMutableArray *)updateBlocks addObject:v10];
  }

  contact = [(CNQuickActionsManager *)self contact];

  if (contact)
  {
    [(CNQuickActionsManager *)self _updateSingleContactActions];
  }

  else
  {
    [(CNQuickActionsManager *)self _updateMultiContactActions];
  }
}

- (id)_propertyItemsForKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  contact = [(CNQuickActionsManager *)self contact];
  v6 = [contact valueForKey:keyCopy];

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(NSDictionary *)self->_groups objectForKeyedSubscript:keyCopy];
        contact2 = [(CNQuickActionsManager *)self contact];
        v14 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:v11 group:v12 contact:contact2];

        if (v14)
        {
          [v17 addObject:v14];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v17;
}

- (void)_openURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = MEMORY[0x1E695DFF8];
  if (isKindOfClass)
  {
    v5 = [lCopy stringByReplacingOccurrencesOfString:@" " withString:&stru_1F0CE7398];
    v6 = [v4 URLWithString:v5];

    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = +[CNUIContactsEnvironment currentEnvironment];
    applicationWorkspace = [v7 applicationWorkspace];
    [applicationWorkspace openSensitiveURLInBackground:v6 withOptions:0];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = lCopy;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)_updateIDSActionsForPropertyItems:(id)items category:(id)category serviceName:(id)name propertyActionClass:(Class)class
{
  v36 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  categoryCopy = category;
  nameCopy = name;
  categories = [(CNQuickActionsManager *)self categories];
  v12 = [categories containsObject:categoryCopy];

  if (v12)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [(CNQuickActionsManager *)self _addActionForPropertyItem:v18 category:categoryCopy propertyActionClass:class];
          if (v19)
          {
            [array addObject:v18];
            [strongToStrongObjectsMapTable setObject:v19 forKey:v18];
            if ([(CNQuickActionsManager *)self bypassActionValidation])
            {
              [v19 setEnabled:1];
            }

            else
            {
              usageManager = [(CNQuickActionsManager *)self usageManager];
              [usageManager updateCachedEnabledStateForAction:v19];
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    if (![(CNQuickActionsManager *)self bypassActionValidation])
    {
      objc_initWeak(&location, self);
      v21 = [CNPropertyIDSRequest alloc];
      v22 = [array copy];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __100__CNQuickActionsManager__updateIDSActionsForPropertyItems_category_serviceName_propertyActionClass___block_invoke;
      v27[3] = &unk_1E74E1B00;
      objc_copyWeak(&v29, &location);
      v28 = strongToStrongObjectsMapTable;
      v23 = [(CNPropertyIDSRequest *)v21 initWithPropertyItems:v22 service:nameCopy postToMainQueue:1 resultBlock:v27];

      [(NSMutableSet *)self->_requests addObject:v23];
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }
}

void __100__CNQuickActionsManager__updateIDSActionsForPropertyItems_category_serviceName_propertyActionClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      v12 = 0;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(a1 + 32) objectForKey:*(*(&v26 + 1) + 8 * v12)];
        [v13 setEnabled:1];
        v14 = [WeakRetained usageManager];
        [v14 cacheEnabledStateForAction:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(a1 + 32) objectForKey:{*(*(&v22 + 1) + 8 * v19), v22}];
        [v20 setEnabled:0];
        v21 = [WeakRetained usageManager];
        [v21 cacheEnabledStateForAction:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  [WeakRetained refreshActionsAndForceSendUpdate:0];
}

- (void)_updateActionsForPropertyItems:(id)items category:(id)category propertyActionClass:(Class)class
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  categoryCopy = category;
  categories = [(CNQuickActionsManager *)self categories];
  v11 = [categories containsObject:categoryCopy];

  if (v11)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [(CNQuickActionsManager *)self _addActionForPropertyItem:*(*(&v18 + 1) + 8 * v16++) category:categoryCopy propertyActionClass:class, v18];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (id)_addActionForPropertyItem:(id)item category:(id)category propertyActionClass:(Class)class
{
  itemCopy = item;
  categoryCopy = category;
  labeledValue = [itemCopy labeledValue];
  label = [labeledValue label];
  if (label && (-[CNQuickActionsManager _ignoredLabels](self, "_ignoredLabels"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 containsObject:label], v12, (v13 & 1) != 0))
  {
    v14 = 0;
  }

  else
  {
    v15 = [class alloc];
    contact = [(CNQuickActionsManager *)self contact];
    v17 = [v15 initWithContact:contact propertyItem:itemCopy];

    v14 = [[CNQuickPropertyAction alloc] initWithPropertyAction:v17];
    [(CNQuickAction *)v14 setCategory:categoryCopy];
    _orderedLabels = [(CNQuickActionsManager *)self _orderedLabels];
    v19 = [_orderedLabels indexOfObject:label];
    if (v19 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
    }

    else
    {
      v20 = [_orderedLabels count] - v19 + 1;
    }

    [(CNQuickAction *)v14 setScore:v20];
    [(CNQuickActionsManager *)self _addAction:v14];
  }

  return v14;
}

- (void)_addAction:(id)action
{
  actionCopy = action;
  category = [actionCopy category];
  orderedSet = [(NSMutableDictionary *)self->_actionsByCategories objectForKeyedSubscript:category];
  if (!orderedSet)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    [(NSMutableDictionary *)self->_actionsByCategories setObject:orderedSet forKeyedSubscript:category];
  }

  [actionCopy setManager:self];
  [actionCopy setUseDuetIfAvailable:{-[CNQuickActionsManager useDuetIfAvailable](self, "useDuetIfAvailable")}];
  objc_opt_class();
  v9 = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v8 setDelegate:self];
  }

  [orderedSet addObject:v9];
}

- (id)_hierarchicalActionsForCategory:(id)category fromActions:(id)actions askDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v56 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  actionsCopy = actions;
  if (![actionsCopy count])
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
    goto LABEL_33;
  }

  if ([actionsCopy count] < 2 || !-[CNQuickActionsManager _shouldGroupActionsInCategory:](self, "_shouldGroupActionsInCategory:", categoryCopy))
  {
    orderedSet = actionsCopy;
LABEL_33:
    v33 = orderedSet;
    goto LABEL_34;
  }

  if (!delegateCopy)
  {
    goto LABEL_43;
  }

  delegate = [(CNQuickActionsManager *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    goto LABEL_43;
  }

  array = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v13 = actionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (!v14)
  {
    strongToStrongObjectsMapTable = 0;
    goto LABEL_41;
  }

  v15 = v14;
  strongToStrongObjectsMapTable = 0;
  v44 = array;
  v45 = *v51;
  obj = v13;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v51 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v50 + 1) + 8 * i);
      objc_opt_class();
      v19 = v18;
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
        v21 = strongToStrongObjectsMapTable;
LABEL_40:

        strongToStrongObjectsMapTable = 0;
        v13 = obj;
        goto LABEL_41;
      }

      if (!strongToStrongObjectsMapTable)
      {
        strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      }

      propertyAction = [v21 propertyAction];
      propertyItem = [propertyAction propertyItem];
      contactProperty = [propertyItem contactProperty];

      if (!contactProperty)
      {

        array = v44;
        goto LABEL_40;
      }

      [strongToStrongObjectsMapTable setObject:v21 forKey:contactProperty];
      array = v44;
      [v44 addObject:contactProperty];
    }

    v15 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  if (!strongToStrongObjectsMapTable)
  {
    goto LABEL_42;
  }

  delegate2 = [(CNQuickActionsManager *)self delegate];
  v13 = [delegate2 actionsManager:self orderedPropertiesForProperties:v44 category:categoryCopy];

  if (!v13 || ([v13 isEqualToArray:v44] & 1) != 0)
  {
LABEL_41:

LABEL_42:
LABEL_43:
    v36 = [CNQuickDisambiguateAction alloc];
    v37 = [actionsCopy copy];
    v38 = [(CNQuickDisambiguateAction *)v36 initWithActions:v37];

    actions = [(CNQuickDisambiguateAction *)v38 actions];
    firstObject = [actions firstObject];

    firstObject2 = [actionsCopy firstObject];
    [(CNQuickDisambiguateAction *)v38 setMainAction:firstObject];
    [(CNQuickContactAction *)v38 setDelegate:self];
    [(CNQuickAction *)v38 setIdentifier:@"disambiguate"];
    category = [firstObject2 category];
    [(CNQuickAction *)v38 setCategory:category];

    [(CNQuickAction *)v38 setUseDuetIfAvailable:[(CNQuickActionsManager *)self useDuetIfAvailable]];
    v33 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v38];

    goto LABEL_34;
  }

  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v27 = v13;
  v28 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v47;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [strongToStrongObjectsMapTable objectForKey:*(*(&v46 + 1) + 8 * j)];
        [orderedSet2 addObject:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v29);
  }

  v33 = [(CNQuickActionsManager *)self _hierarchicalActionsForCategory:categoryCopy fromActions:orderedSet2 askDelegate:0];

LABEL_34:

  return v33;
}

- (id)_groupedActionsFromOrderedActionsByCategories:(id)categories
{
  v20 = *MEMORY[0x1E69E9840];
  categoriesCopy = categories;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  categories = [(CNQuickActionsManager *)self categories];
  v7 = [categories countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(categories);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [categoriesCopy objectForKeyedSubscript:v11];
        v13 = [(CNQuickActionsManager *)self _hierarchicalActionsForCategory:v11 fromActions:v12 askDelegate:1];
        if (v13)
        {
          [orderedSet unionOrderedSet:v13];
        }
      }

      v8 = [categories countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return orderedSet;
}

- (id)_ignoredLabels
{
  if (_ignoredLabels_cn_once_token_5 != -1)
  {
    dispatch_once(&_ignoredLabels_cn_once_token_5, &__block_literal_global_21);
  }

  v3 = _ignoredLabels_cn_once_object_5;

  return v3;
}

void __39__CNQuickActionsManager__ignoredLabels__block_invoke()
{
  v7[7] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E695CBB8];
  v7[0] = *MEMORY[0x1E695CB78];
  v7[1] = v1;
  v2 = *MEMORY[0x1E695CBA0];
  v7[2] = *MEMORY[0x1E695CB98];
  v7[3] = v2;
  v3 = *MEMORY[0x1E695CBB0];
  v7[4] = *MEMORY[0x1E695CB80];
  v7[5] = v3;
  v7[6] = *MEMORY[0x1E695CBA8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v5 = [v0 setWithArray:v4];
  v6 = _ignoredLabels_cn_once_object_5;
  _ignoredLabels_cn_once_object_5 = v5;
}

- (id)_orderedLabels
{
  if (_orderedLabels_cn_once_token_4 != -1)
  {
    dispatch_once(&_orderedLabels_cn_once_token_4, &__block_literal_global_19);
  }

  v3 = _orderedLabels_cn_once_object_4;

  return v3;
}

void __39__CNQuickActionsManager__orderedLabels__block_invoke()
{
  v5[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CB70];
  v5[0] = *MEMORY[0x1E695CBC0];
  v5[1] = v0;
  v1 = *MEMORY[0x1E695CB88];
  v5[2] = *MEMORY[0x1E695CB90];
  v5[3] = v1;
  v2 = *MEMORY[0x1E695CBD8];
  v5[4] = *MEMORY[0x1E695CB60];
  v5[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v4 = _orderedLabels_cn_once_object_4;
  _orderedLabels_cn_once_object_4 = v3;
}

- (void)_createGroupsForPropertyKeys:(id)keys
{
  v19 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        contact = [(CNQuickActionsManager *)self contact];
        v13 = [CNCardPropertyGroup groupForProperty:v11 contact:contact store:0 policy:0 linkedPolicies:0];

        [v5 setObject:v13 forKey:v11];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(CNQuickActionsManager *)self setGroups:v5];
}

- (BOOL)sortsWithDuet
{
  usageManager = [(CNQuickActionsManager *)self usageManager];
  sortsWithDuet = [usageManager sortsWithDuet];

  return sortsWithDuet;
}

- (void)setSortsWithDuet:(BOOL)duet
{
  duetCopy = duet;
  usageManager = [(CNQuickActionsManager *)self usageManager];
  [usageManager setSortsWithDuet:duetCopy];
}

- (NSArray)categories
{
  categories = self->_categories;
  if (categories)
  {
    defaultCategories = categories;
  }

  else
  {
    defaultCategories = [objc_opt_class() defaultCategories];
  }

  return defaultCategories;
}

- (CNContact)contact
{
  contacts = [(CNQuickActionsManager *)self contacts];
  v4 = [contacts count];

  if (v4 == 1)
  {
    contacts2 = [(CNQuickActionsManager *)self contacts];
    firstObject = [contacts2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)dealloc
{
  [(CNQuickActionsManager *)self stopUpdatingActions];
  v3.receiver = self;
  v3.super_class = CNQuickActionsManager;
  [(CNQuickActionsManager *)&v3 dealloc];
}

- (CNQuickActionsManager)initWithContacts:(id)contacts
{
  v31 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v27.receiver = self;
  v27.super_class = CNQuickActionsManager;
  v5 = [(CNQuickActionsManager *)&v27 init];
  array = [MEMORY[0x1E695DF70] array];
  updateBlocks = v5->_updateBlocks;
  v5->_updateBlocks = array;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = contactsCopy;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
        v29 = descriptorForRequiredKeys;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        [v13 assertKeysAreAvailable:v15];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v10);
  }

  [(CNQuickActionsManager *)v5 setContacts:v8];
  contact = [(CNQuickActionsManager *)v5 contact];

  if (contact)
  {
    v17 = *MEMORY[0x1E695C208];
    v28[0] = *MEMORY[0x1E695C330];
    v28[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [(CNQuickActionsManager *)v5 _createGroupsForPropertyKeys:v18];

    contact2 = [(CNQuickActionsManager *)v5 contact];
    v20 = [CNQuickActionsUsageManager managerForContact:contact2];
    usageManager = v5->_usageManager;
    v5->_usageManager = v20;
  }

  return v5;
}

+ (id)actionsManagerForContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = [[CNQuickActionsManager alloc] initWithContacts:contactsCopy];

  return v4;
}

+ (id)defaultCategories
{
  if (defaultCategories_cn_once_token_3 != -1)
  {
    dispatch_once(&defaultCategories_cn_once_token_3, &__block_literal_global_10);
  }

  v3 = defaultCategories_cn_once_object_3;

  return v3;
}

void __42__CNQuickActionsManager_defaultCategories__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = CNQuickActionCategoryAudioCall;
  v2[1] = CNQuickActionCategoryInstantMessage;
  v2[2] = CNQuickActionCategoryVideoCall;
  v2[3] = CNQuickActionCategoryMail;
  v2[4] = CNQuickActionCategoryAddToContacts;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = defaultCategories_cn_once_object_3;
  defaultCategories_cn_once_object_3 = v0;
}

+ (BOOL)hasActionsForContact:(id)contact
{
  contactCopy = contact;
  v4 = contactCopy;
  if (!contactCopy)
  {
    goto LABEL_7;
  }

  phoneNumbers = [contactCopy phoneNumbers];
  if ([phoneNumbers count])
  {

    goto LABEL_5;
  }

  emailAddresses = [v4 emailAddresses];
  v7 = [emailAddresses count];

  if (!v7)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_9;
  }

LABEL_5:
  phoneNumbers2 = [v4 phoneNumbers];
  v9 = [phoneNumbers2 _cn_any:&__block_literal_global_6];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    emailAddresses2 = [v4 emailAddresses];
    v10 = [emailAddresses2 _cn_any:&__block_literal_global_8];
  }

LABEL_9:

  return v10;
}

@end