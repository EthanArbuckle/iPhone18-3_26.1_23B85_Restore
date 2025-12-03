@interface CNAvatarCardController
+ (BOOL)avatarCardEnabledForTraitCollection:(id)collection;
+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)descriptors;
+ (id)previewHeaderViewControllerForContacts:(id)contacts;
- (BOOL)hasActions;
- (BOOL)readyForContactsMatching:(id)matching;
- (CGRect)sourceRect;
- (CNAvatarCardControllerDelegate)delegate;
- (CNAvatarView)avatarView;
- (CNContact)contact;
- (CNContactOrbHeaderView)headerView;
- (NSString)message;
- (NSString)name;
- (UIViewController)presentingViewController;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteractionTargetedPreview;
- (id)headerViewController;
- (id)presentingViewControllerForActionsController:(id)controller;
- (id)refetchContactsMatching:(id)matching storeProvider:(id)provider;
- (void)cleanupAfterDisplay;
- (void)configurePreviewInteraction;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)dismissAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)prepareForDisplay;
- (void)prepareWithContacts:(id)contacts store:(id)store;
- (void)prepareWithContacts:(id)contacts storeProvider:(id)provider;
- (void)retrieveActions;
- (void)setContact:(id)contact;
- (void)setContacts:(id)contacts;
- (void)setMessage:(id)message;
- (void)setName:(id)name;
- (void)setSourceView:(id)view;
- (void)setupActionsControllerForContacts:(id)contacts;
- (void)setupActionsForContacts:(id)contacts;
- (void)showContact;
- (void)updateWithMenuItems:(id)items;
@end

@implementation CNAvatarCardController

- (void)configurePreviewInteraction
{
  contextMenuInteraction = [(CNAvatarCardController *)self contextMenuInteraction];

  if (!contextMenuInteraction)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [(CNAvatarCardController *)self setContextMenuInteraction:v4];
  }

  [(CNAvatarCardController *)self setPresentationResult:1];
  sourceView = [(CNAvatarCardController *)self sourceView];
  contextMenuInteraction2 = [(CNAvatarCardController *)self contextMenuInteraction];
  [sourceView addInteraction:contextMenuInteraction2];

  actionMenuHelper = [(CNAvatarCardController *)self actionMenuHelper];

  if (!actionMenuHelper)
  {
    v8 = objc_alloc_init(CNActionMenuHelper);
    [(CNAvatarCardController *)self setActionMenuHelper:v8];
  }
}

- (CNAvatarView)avatarView
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarView);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CNAvatarCardControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForActionsController:(id)controller
{
  delegate = [(CNAvatarCardController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAvatarCardController *)self delegate];
    v7 = [delegate2 presentingViewControllerForAvatarCardController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setupActionsControllerForContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = [CNContactOrbActionsController alloc];
  actionCategories = [(CNAvatarCardController *)self actionCategories];
  v7 = [(CNContactOrbActionsController *)v5 initWithContacts:contactsCopy actionCategories:actionCategories bypassActionValidation:[(CNAvatarCardController *)self bypassActionValidation]];

  [(CNAvatarCardController *)self setOrbActionsController:v7];
  orbActionsController = [(CNAvatarCardController *)self orbActionsController];

  if (orbActionsController)
  {
    orbActionsController2 = [(CNAvatarCardController *)self orbActionsController];
    [orbActionsController2 setDelegate:self];
  }
}

- (void)retrieveActions
{
  v3 = *MEMORY[0x1E6996530];
  contacts = [(CNAvatarCardController *)self contacts];
  if (((*(v3 + 16))(v3) & 1) == 0)
  {
    orbActionsController = [(CNAvatarCardController *)self orbActionsController];

    if (!orbActionsController)
    {
      return;
    }

    orbActionsController2 = [(CNAvatarCardController *)self orbActionsController];
    [orbActionsController2 reloadMenuItems];

    contacts = [(CNAvatarCardController *)self orbActionsController];
    currentAvailableMenuItems = [contacts currentAvailableMenuItems];
    [(CNAvatarCardController *)self updateWithMenuItems:currentAvailableMenuItems];
  }
}

- (void)setupActionsForContacts:(id)contacts
{
  contactsCopy = contacts;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNAvatarCardController *)self setupActionsControllerForContacts:contactsCopy];
  }
}

- (void)updateWithMenuItems:(id)items
{
  itemsCopy = items;
  actionMenuHelper = [(CNAvatarCardController *)self actionMenuHelper];
  contextMenuInteraction = [(CNAvatarCardController *)self contextMenuInteraction];
  [actionMenuHelper updateWithMenuItems:itemsCopy contextMenuInteraction:contextMenuInteraction];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v5 = [(CNAvatarCardController *)self actionMenuHelper:interaction];
  [v5 willDismissMenu];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  actionMenuHelper = [(CNAvatarCardController *)self actionMenuHelper];
  [actionMenuHelper willDisplayMenuWithContextMenuInteraction:interactionCopy];
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(CNAvatarCardController *)self setPresentationResult:1];
  delegate = [(CNAvatarCardController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  delegate2 = [(CNAvatarCardController *)self delegate];
  v10 = delegate2;
  if (v8)
  {
    -[CNAvatarCardController setPresentationResult:](self, "setPresentationResult:", [delegate2 avatarCardController:self presentationResultForLocation:{x, y}]);

    if (([(CNAvatarCardController *)self presentationResult]- 1) < 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate3 = [(CNAvatarCardController *)self delegate];
      v13 = [delegate3 avatarCardController:self shouldPresentForLocation:{x, y}];

      if (!v13)
      {
LABEL_10:
        v19 = 0;
        goto LABEL_11;
      }

      [(CNAvatarCardController *)self setPresentationResult:0];
    }
  }

  [(CNAvatarCardController *)self retrieveActions];
  delegate4 = [(CNAvatarCardController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    delegate5 = [(CNAvatarCardController *)self delegate];
    [delegate5 avatarCardControllerWillBeginPreviewInteraction:self];
  }

  actionMenuHelper = [(CNAvatarCardController *)self actionMenuHelper];
  v18 = [actionMenuHelper configurationActionProviderWithActionBlock:&__block_literal_global_49_56536];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__CNAvatarCardController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
  v21[3] = &unk_1E74E60D0;
  v21[4] = self;
  v19 = [MEMORY[0x1E69DC8D8] configurationWithIdentifier:0 previewProvider:v21 actionProvider:v18];

LABEL_11:

  return v19;
}

- (id)contextMenuInteractionTargetedPreview
{
  highlightView = [(CNAvatarCardController *)self highlightView];
  if (highlightView)
  {
    sourceView = highlightView;
  }

  else
  {
    sourceView = [(CNAvatarCardController *)self sourceView];
    if (!sourceView)
    {
LABEL_7:
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNAvatarCardController.m", 445, 3, @"Tried to initialize UITargetedPreview with a view that is not in a window: %@", v5, v6, v7, v8, sourceView);
      v11 = 0;
      goto LABEL_8;
    }
  }

  window = [sourceView window];

  if (!window)
  {
    goto LABEL_7;
  }

  actionMenuHelper = [(CNAvatarCardController *)self actionMenuHelper];
  v11 = [actionMenuHelper targetedPreviewForSourceView:sourceView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E69DC728];
    [sourceView bounds];
    v13 = [v12 bezierPathWithOvalInRect:?];
    parameters = [v11 parameters];
    [parameters setVisiblePath:v13];
  }

LABEL_8:

  return v11;
}

- (void)dismissAnimated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  handlerCopy = handler;
  delegate = [(CNAvatarCardController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNAvatarCardController *)self delegate];
    [delegate2 avatarCardControllerWillDismiss:self];
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __60__CNAvatarCardController_dismissAnimated_completionHandler___block_invoke;
  v17 = &unk_1E74E6DD0;
  selfCopy = self;
  v19 = handlerCopy;
  v10 = handlerCopy;
  v11 = _Block_copy(&v14);
  v12 = [(CNAvatarCardController *)self contextMenuInteraction:v14];

  if (v12)
  {
    v11[2](v11);
  }

  else
  {
    presentingViewController = [(CNAvatarCardController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:v11];
  }
}

void __60__CNAvatarCardController_dismissAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegate];
    [v5 avatarCardControllerDidDismiss:*(a1 + 32)];
  }
}

- (UIViewController)presentingViewController
{
  delegate = [(CNAvatarCardController *)self delegate];
  v4 = [delegate presentingViewControllerForAvatarCardController:self];

  return v4;
}

- (void)showContact
{
  contacts = [(CNAvatarCardController *)self contacts];
  firstObject = [contacts firstObject];

  if (firstObject)
  {
    delegate = [(CNAvatarCardController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && (-[CNAvatarCardController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 avatarCardController:self shouldShowContact:firstObject], v7, (v8 & 1) == 0))
    {

      firstObject = 0;
    }

    else if ([firstObject hasBeenPersisted])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__CNAvatarCardController_showContact__block_invoke;
      v9[3] = &unk_1E74E6A88;
      firstObject = firstObject;
      v10 = firstObject;
      [(CNAvatarCardController *)self dismissAnimated:1 completionHandler:v9];
    }
  }
}

void __37__CNAvatarCardController_showContact__block_invoke(uint64_t a1)
{
  if (CNUIIsMobilePhone())
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 bundleIdentifier];

    v4 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v4 setScheme:@"search"];
    [v4 setHost:v3];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%u/%u", 2, objc_msgSend(*(a1 + 32), "iOSLegacyIdentifier")];
    [v4 setPath:v5];

    [v4 URL];
  }

  else
  {
    v6 = MEMORY[0x1E695DFF8];
    v7 = MEMORY[0x1E696AEC0];
    v3 = [*(a1 + 32) identifier];
    v4 = [v7 stringWithFormat:@"contact://show?id=%@", v3];
    [v6 URLWithString:v4];
  }
  v10 = ;

  v8 = +[CNUIContactsEnvironment currentEnvironment];
  v9 = [v8 applicationWorkspace];
  [v9 openSensitiveURLInBackground:v10 withOptions:0];
}

- (NSString)message
{
  headerView = [(CNAvatarCardController *)self headerView];
  message = [headerView message];

  return message;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  headerView = [(CNAvatarCardController *)self headerView];
  [headerView setMessage:messageCopy];

  headerView2 = [(CNAvatarCardController *)self headerView];
  [headerView2 reloadData];
}

- (NSString)name
{
  headerView = [(CNAvatarCardController *)self headerView];
  alternateName = [headerView alternateName];

  return alternateName;
}

- (void)setName:(id)name
{
  nameCopy = name;
  headerView = [(CNAvatarCardController *)self headerView];
  [headerView setAlternateName:nameCopy];

  headerView2 = [(CNAvatarCardController *)self headerView];
  [headerView2 reloadData];
}

- (void)setSourceView:(id)view
{
  viewCopy = view;
  if (self->_sourceView != viewCopy)
  {
    v11 = viewCopy;
    sourceView = [(CNAvatarCardController *)self sourceView];
    contextMenuInteraction = [(CNAvatarCardController *)self contextMenuInteraction];
    [sourceView removeInteraction:contextMenuInteraction];

    objc_storeStrong(&self->_sourceView, view);
    traitCollection = [(UIView *)v11 traitCollection];
    v9 = [CNAvatarCardController avatarCardEnabledForTraitCollection:traitCollection];

    sourceView2 = [(CNAvatarCardController *)self sourceView];

    if (sourceView2 && v9)
    {
      [(CNAvatarCardController *)self configurePreviewInteraction];
    }

    else
    {
      [(CNAvatarCardController *)self setContextMenuInteraction:0];
    }

    viewCopy = v11;
  }
}

- (void)cleanupAfterDisplay
{
  [(CNAvatarCardController *)self prepareWithContacts:0 store:0];

  [(CNAvatarCardController *)self prepareForDisplay];
}

- (void)prepareForDisplay
{
  v12[1] = *MEMORY[0x1E69E9840];
  overrideImageData = [(CNAvatarCardController *)self overrideImageData];

  if (overrideImageData)
  {
    headerView3 = [MEMORY[0x1E695CF18] contactWithDisplayName:0 emailOrPhoneNumber:0];
    overrideImageData2 = [(CNAvatarCardController *)self overrideImageData];
    [headerView3 setImageData:overrideImageData2];

    headerView = [(CNAvatarCardController *)self headerView];
    v12[0] = headerView3;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [headerView updateWithContacts:v7];

LABEL_5:
    goto LABEL_6;
  }

  contacts = [(CNAvatarCardController *)self contacts];
  headerView2 = [(CNAvatarCardController *)self headerView];
  contacts2 = [headerView2 contacts];

  if (contacts != contacts2)
  {
    headerView3 = [(CNAvatarCardController *)self headerView];
    headerView = [(CNAvatarCardController *)self contacts];
    [headerView3 updateWithContacts:headerView];
    goto LABEL_5;
  }

LABEL_6:
  contacts3 = [(CNAvatarCardController *)self contacts];
  [(CNAvatarCardController *)self setupActionsForContacts:contacts3];
}

- (BOOL)hasActions
{
  contacts = [(CNAvatarCardController *)self contacts];
  firstObject = [contacts firstObject];

  if (!firstObject)
  {
    return 0;
  }

  contacts2 = [(CNAvatarCardController *)self contacts];
  firstObject2 = [contacts2 firstObject];
  v7 = [CNQuickActionsManager hasActionsForContact:firstObject2];

  return v7;
}

- (id)refetchContactsMatching:(id)matching storeProvider:(id)provider
{
  v39[1] = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  providerCopy = provider;
  if ([matchingCopy count])
  {
    v7 = providerCopy[2](providerCopy);
    descriptorForRequiredKeys = [objc_opt_class() descriptorForRequiredKeys];
    v39[0] = descriptorForRequiredKeys;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = matchingCopy;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v35;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          if (([v16 areKeysAvailable:v9] & 1) == 0)
          {
            identifier = [v16 identifier];
            [array addObject:identifier];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    v18 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:array];
    v33 = 0;
    v19 = [v7 unifiedContactsMatchingPredicate:v18 keysToFetch:v9 error:&v33];
    v20 = v33;

    if (!v19)
    {
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNAvatarCardController.m", 251, 3, @"Error fetching contact: %@", v21, v22, v23, v24, v20);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64__CNAvatarCardController_refetchContactsMatching_storeProvider___block_invoke;
    aBlock[3] = &unk_1E74E60A8;
    v31 = v9;
    v32 = v19;
    v25 = v19;
    v26 = v9;
    v27 = _Block_copy(aBlock);
    v28 = [v11 _cn_map:v27];
  }

  else
  {
    v28 = matchingCopy;
  }

  return v28;
}

id __64__CNAvatarCardController_refetchContactsMatching_storeProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 areKeysAvailable:*(a1 + 32)])
  {
    v4 = v3;
  }

  else
  {
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__CNAvatarCardController_refetchContactsMatching_storeProvider___block_invoke_2;
    v10[3] = &unk_1E74E7880;
    v11 = v3;
    v6 = [v5 _cn_firstObjectPassingTest:v10];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695CD58]);
    }

    v4 = v8;
  }

  return v4;
}

uint64_t __64__CNAvatarCardController_refetchContactsMatching_storeProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allLinkedIdentifiers];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (BOOL)readyForContactsMatching:(id)matching
{
  v25 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  v5 = [matchingCopy count];
  contacts = [(CNAvatarCardController *)self contacts];
  v7 = [contacts count];

  if (v5 == v7)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    contacts2 = [(CNAvatarCardController *)self contacts];
    v10 = [contacts2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(contacts2);
          }

          allLinkedIdentifiers = [*(*(&v20 + 1) + 8 * i) allLinkedIdentifiers];
          [v8 addObjectsFromArray:allLinkedIdentifiers];
        }

        v11 = [contacts2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__CNAvatarCardController_readyForContactsMatching___block_invoke;
    v18[3] = &unk_1E74E7880;
    v19 = v8;
    v15 = v8;
    v16 = [matchingCopy _cn_all:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __51__CNAvatarCardController_readyForContactsMatching___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)prepareWithContacts:(id)contacts storeProvider:(id)provider
{
  contactsCopy = contacts;
  providerCopy = provider;
  [(CNAvatarCardController *)self prepareWithOverrideImageData:0];
  if (![(CNAvatarCardController *)self readyForContactsMatching:contactsCopy])
  {
    v7 = [(CNAvatarCardController *)self refetchContactsMatching:contactsCopy storeProvider:providerCopy];
    contacts = self->_contacts;
    self->_contacts = v7;

    [(CNAvatarCardController *)self setActionsNeedRefresh:0];
  }
}

- (void)prepareWithContacts:(id)contacts store:(id)store
{
  storeCopy = store;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CNAvatarCardController_prepareWithContacts_store___block_invoke;
  v8[3] = &unk_1E74E6080;
  v9 = storeCopy;
  v7 = storeCopy;
  [(CNAvatarCardController *)self prepareWithContacts:contacts storeProvider:v8];
}

- (void)setContacts:(id)contacts
{
  [(CNAvatarCardController *)self prepareWithContacts:contacts storeProvider:&__block_literal_global_56580];

  [(CNAvatarCardController *)self prepareForDisplay];
}

id __38__CNAvatarCardController_setContacts___block_invoke()
{
  v0 = +[CNUIContactsEnvironment currentEnvironment];
  v1 = [v0 contactStore];

  return v1;
}

- (CNContact)contact
{
  contacts = [(CNAvatarCardController *)self contacts];
  firstObject = [contacts firstObject];

  return firstObject;
}

- (void)setContact:(id)contact
{
  v8 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = MEMORY[0x1E695DEC8];
  contactCopy2 = contact;
  v6 = [v4 arrayWithObjects:&contactCopy count:1];

  [(CNAvatarCardController *)self setContacts:v6, contactCopy, v8];
}

- (CNContactOrbHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [CNContactOrbHeaderViewController alloc];
    contacts = [(CNAvatarCardController *)self contacts];
    v6 = [(CNContactOrbHeaderViewController *)v4 initWithContacts:contacts];
    [(CNAvatarCardController *)self setOrbHeaderViewController:v6];

    orbHeaderViewController = [(CNAvatarCardController *)self orbHeaderViewController];
    headerView = [orbHeaderViewController headerView];
    [(CNAvatarCardController *)self setHeaderView:headerView];

    headerView = self->_headerView;
  }

  return headerView;
}

- (id)headerViewController
{
  orbHeaderViewController = self->_orbHeaderViewController;
  if (!orbHeaderViewController)
  {
    v4 = [CNContactOrbHeaderViewController alloc];
    contacts = [(CNAvatarCardController *)self contacts];
    v6 = [(CNContactOrbHeaderViewController *)v4 initWithContacts:contacts];
    [(CNAvatarCardController *)self setOrbHeaderViewController:v6];

    orbHeaderViewController = [(CNAvatarCardController *)self orbHeaderViewController];
    headerView = [orbHeaderViewController headerView];
    [(CNAvatarCardController *)self setHeaderView:headerView];

    orbHeaderViewController = self->_orbHeaderViewController;
  }

  return orbHeaderViewController;
}

+ (id)previewHeaderViewControllerForContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = [[CNContactOrbHeaderViewController alloc] initWithContacts:contactsCopy];

  return v4;
}

+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)descriptors
{
  descriptorsCopy = descriptors;
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD58];
  mEMORY[0x1E695CD80] = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
  v6 = [CNContactOrbHeaderView descriptorForRequiredKeysForContactFormatter:mEMORY[0x1E695CD80] includingAvatarViewDescriptors:descriptorsCopy];
  v12[0] = v6;
  v7 = +[CNContactOrbActionsController descriptorForRequiredKeys];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNAvatarCardController descriptorForRequiredKeysIncludingAvatarViewDescriptors:]"];
  v10 = [v4 descriptorWithKeyDescriptors:v8 description:v9];

  return v10;
}

+ (BOOL)avatarCardEnabledForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy userInterfaceIdiom] != 3 && objc_msgSend(collectionCopy, "userInterfaceIdiom") != 5;

  return v4;
}

@end