@interface CNAvatarCardController
+ (BOOL)avatarCardEnabledForTraitCollection:(id)a3;
+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)a3;
+ (id)previewHeaderViewControllerForContacts:(id)a3;
- (BOOL)hasActions;
- (BOOL)readyForContactsMatching:(id)a3;
- (CGRect)sourceRect;
- (CNAvatarCardControllerDelegate)delegate;
- (CNAvatarView)avatarView;
- (CNContact)contact;
- (CNContactOrbHeaderView)headerView;
- (NSString)message;
- (NSString)name;
- (UIViewController)presentingViewController;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteractionTargetedPreview;
- (id)headerViewController;
- (id)presentingViewControllerForActionsController:(id)a3;
- (id)refetchContactsMatching:(id)a3 storeProvider:(id)a4;
- (void)cleanupAfterDisplay;
- (void)configurePreviewInteraction;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)dismissAnimated:(BOOL)a3 completionHandler:(id)a4;
- (void)prepareForDisplay;
- (void)prepareWithContacts:(id)a3 store:(id)a4;
- (void)prepareWithContacts:(id)a3 storeProvider:(id)a4;
- (void)retrieveActions;
- (void)setContact:(id)a3;
- (void)setContacts:(id)a3;
- (void)setMessage:(id)a3;
- (void)setName:(id)a3;
- (void)setSourceView:(id)a3;
- (void)setupActionsControllerForContacts:(id)a3;
- (void)setupActionsForContacts:(id)a3;
- (void)showContact;
- (void)updateWithMenuItems:(id)a3;
@end

@implementation CNAvatarCardController

- (void)configurePreviewInteraction
{
  v3 = [(CNAvatarCardController *)self contextMenuInteraction];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
    [(CNAvatarCardController *)self setContextMenuInteraction:v4];
  }

  [(CNAvatarCardController *)self setPresentationResult:1];
  v5 = [(CNAvatarCardController *)self sourceView];
  v6 = [(CNAvatarCardController *)self contextMenuInteraction];
  [v5 addInteraction:v6];

  v7 = [(CNAvatarCardController *)self actionMenuHelper];

  if (!v7)
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

- (id)presentingViewControllerForActionsController:(id)a3
{
  v4 = [(CNAvatarCardController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAvatarCardController *)self delegate];
    v7 = [v6 presentingViewControllerForAvatarCardController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setupActionsControllerForContacts:(id)a3
{
  v4 = a3;
  v5 = [CNContactOrbActionsController alloc];
  v6 = [(CNAvatarCardController *)self actionCategories];
  v7 = [(CNContactOrbActionsController *)v5 initWithContacts:v4 actionCategories:v6 bypassActionValidation:[(CNAvatarCardController *)self bypassActionValidation]];

  [(CNAvatarCardController *)self setOrbActionsController:v7];
  v8 = [(CNAvatarCardController *)self orbActionsController];

  if (v8)
  {
    v9 = [(CNAvatarCardController *)self orbActionsController];
    [v9 setDelegate:self];
  }
}

- (void)retrieveActions
{
  v3 = *MEMORY[0x1E6996530];
  v7 = [(CNAvatarCardController *)self contacts];
  if (((*(v3 + 16))(v3) & 1) == 0)
  {
    v4 = [(CNAvatarCardController *)self orbActionsController];

    if (!v4)
    {
      return;
    }

    v5 = [(CNAvatarCardController *)self orbActionsController];
    [v5 reloadMenuItems];

    v7 = [(CNAvatarCardController *)self orbActionsController];
    v6 = [v7 currentAvailableMenuItems];
    [(CNAvatarCardController *)self updateWithMenuItems:v6];
  }
}

- (void)setupActionsForContacts:(id)a3
{
  v4 = a3;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    [(CNAvatarCardController *)self setupActionsControllerForContacts:v4];
  }
}

- (void)updateWithMenuItems:(id)a3
{
  v4 = a3;
  v6 = [(CNAvatarCardController *)self actionMenuHelper];
  v5 = [(CNAvatarCardController *)self contextMenuInteraction];
  [v6 updateWithMenuItems:v4 contextMenuInteraction:v5];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v5 = [(CNAvatarCardController *)self actionMenuHelper:a3];
  [v5 willDismissMenu];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v6 = a3;
  v7 = [(CNAvatarCardController *)self actionMenuHelper];
  [v7 willDisplayMenuWithContextMenuInteraction:v6];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(CNAvatarCardController *)self setPresentationResult:1];
  v7 = [(CNAvatarCardController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  v9 = [(CNAvatarCardController *)self delegate];
  v10 = v9;
  if (v8)
  {
    -[CNAvatarCardController setPresentationResult:](self, "setPresentationResult:", [v9 avatarCardController:self presentationResultForLocation:{x, y}]);

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
      v12 = [(CNAvatarCardController *)self delegate];
      v13 = [v12 avatarCardController:self shouldPresentForLocation:{x, y}];

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
  v14 = [(CNAvatarCardController *)self delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = [(CNAvatarCardController *)self delegate];
    [v16 avatarCardControllerWillBeginPreviewInteraction:self];
  }

  v17 = [(CNAvatarCardController *)self actionMenuHelper];
  v18 = [v17 configurationActionProviderWithActionBlock:&__block_literal_global_49_56536];

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
  v3 = [(CNAvatarCardController *)self highlightView];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(CNAvatarCardController *)self sourceView];
    if (!v4)
    {
LABEL_7:
      _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNAvatarCardController.m", 445, 3, @"Tried to initialize UITargetedPreview with a view that is not in a window: %@", v5, v6, v7, v8, v4);
      v11 = 0;
      goto LABEL_8;
    }
  }

  v9 = [v4 window];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [(CNAvatarCardController *)self actionMenuHelper];
  v11 = [v10 targetedPreviewForSourceView:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = MEMORY[0x1E69DC728];
    [v4 bounds];
    v13 = [v12 bezierPathWithOvalInRect:?];
    v14 = [v11 parameters];
    [v14 setVisiblePath:v13];
  }

LABEL_8:

  return v11;
}

- (void)dismissAnimated:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CNAvatarCardController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNAvatarCardController *)self delegate];
    [v9 avatarCardControllerWillDismiss:self];
  }

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __60__CNAvatarCardController_dismissAnimated_completionHandler___block_invoke;
  v17 = &unk_1E74E6DD0;
  v18 = self;
  v19 = v6;
  v10 = v6;
  v11 = _Block_copy(&v14);
  v12 = [(CNAvatarCardController *)self contextMenuInteraction:v14];

  if (v12)
  {
    v11[2](v11);
  }

  else
  {
    v13 = [(CNAvatarCardController *)self presentingViewController];
    [v13 dismissViewControllerAnimated:v4 completion:v11];
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
  v3 = [(CNAvatarCardController *)self delegate];
  v4 = [v3 presentingViewControllerForAvatarCardController:self];

  return v4;
}

- (void)showContact
{
  v3 = [(CNAvatarCardController *)self contacts];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [(CNAvatarCardController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) != 0 && (-[CNAvatarCardController delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 avatarCardController:self shouldShowContact:v4], v7, (v8 & 1) == 0))
    {

      v4 = 0;
    }

    else if ([v4 hasBeenPersisted])
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __37__CNAvatarCardController_showContact__block_invoke;
      v9[3] = &unk_1E74E6A88;
      v4 = v4;
      v10 = v4;
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
  v2 = [(CNAvatarCardController *)self headerView];
  v3 = [v2 message];

  return v3;
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardController *)self headerView];
  [v5 setMessage:v4];

  v6 = [(CNAvatarCardController *)self headerView];
  [v6 reloadData];
}

- (NSString)name
{
  v2 = [(CNAvatarCardController *)self headerView];
  v3 = [v2 alternateName];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardController *)self headerView];
  [v5 setAlternateName:v4];

  v6 = [(CNAvatarCardController *)self headerView];
  [v6 reloadData];
}

- (void)setSourceView:(id)a3
{
  v5 = a3;
  if (self->_sourceView != v5)
  {
    v11 = v5;
    v6 = [(CNAvatarCardController *)self sourceView];
    v7 = [(CNAvatarCardController *)self contextMenuInteraction];
    [v6 removeInteraction:v7];

    objc_storeStrong(&self->_sourceView, a3);
    v8 = [(UIView *)v11 traitCollection];
    v9 = [CNAvatarCardController avatarCardEnabledForTraitCollection:v8];

    v10 = [(CNAvatarCardController *)self sourceView];

    if (v10 && v9)
    {
      [(CNAvatarCardController *)self configurePreviewInteraction];
    }

    else
    {
      [(CNAvatarCardController *)self setContextMenuInteraction:0];
    }

    v5 = v11;
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
  v3 = [(CNAvatarCardController *)self overrideImageData];

  if (v3)
  {
    v4 = [MEMORY[0x1E695CF18] contactWithDisplayName:0 emailOrPhoneNumber:0];
    v5 = [(CNAvatarCardController *)self overrideImageData];
    [v4 setImageData:v5];

    v6 = [(CNAvatarCardController *)self headerView];
    v12[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v6 updateWithContacts:v7];

LABEL_5:
    goto LABEL_6;
  }

  v8 = [(CNAvatarCardController *)self contacts];
  v9 = [(CNAvatarCardController *)self headerView];
  v10 = [v9 contacts];

  if (v8 != v10)
  {
    v4 = [(CNAvatarCardController *)self headerView];
    v6 = [(CNAvatarCardController *)self contacts];
    [v4 updateWithContacts:v6];
    goto LABEL_5;
  }

LABEL_6:
  v11 = [(CNAvatarCardController *)self contacts];
  [(CNAvatarCardController *)self setupActionsForContacts:v11];
}

- (BOOL)hasActions
{
  v3 = [(CNAvatarCardController *)self contacts];
  v4 = [v3 firstObject];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CNAvatarCardController *)self contacts];
  v6 = [v5 firstObject];
  v7 = [CNQuickActionsManager hasActionsForContact:v6];

  return v7;
}

- (id)refetchContactsMatching:(id)a3 storeProvider:(id)a4
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = v6[2](v6);
    v8 = [objc_opt_class() descriptorForRequiredKeys];
    v39[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];

    v10 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v5;
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
            v17 = [v16 identifier];
            [v10 addObject:v17];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v13);
    }

    v18 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v10];
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
    v28 = v5;
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

- (BOOL)readyForContactsMatching:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 count];
  v6 = [(CNAvatarCardController *)self contacts];
  v7 = [v6 count];

  if (v5 == v7)
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [(CNAvatarCardController *)self contacts];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v20 + 1) + 8 * i) allLinkedIdentifiers];
          [v8 addObjectsFromArray:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__CNAvatarCardController_readyForContactsMatching___block_invoke;
    v18[3] = &unk_1E74E7880;
    v19 = v8;
    v15 = v8;
    v16 = [v4 _cn_all:v18];
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

- (void)prepareWithContacts:(id)a3 storeProvider:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(CNAvatarCardController *)self prepareWithOverrideImageData:0];
  if (![(CNAvatarCardController *)self readyForContactsMatching:v9])
  {
    v7 = [(CNAvatarCardController *)self refetchContactsMatching:v9 storeProvider:v6];
    contacts = self->_contacts;
    self->_contacts = v7;

    [(CNAvatarCardController *)self setActionsNeedRefresh:0];
  }
}

- (void)prepareWithContacts:(id)a3 store:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CNAvatarCardController_prepareWithContacts_store___block_invoke;
  v8[3] = &unk_1E74E6080;
  v9 = v6;
  v7 = v6;
  [(CNAvatarCardController *)self prepareWithContacts:a3 storeProvider:v8];
}

- (void)setContacts:(id)a3
{
  [(CNAvatarCardController *)self prepareWithContacts:a3 storeProvider:&__block_literal_global_56580];

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
  v2 = [(CNAvatarCardController *)self contacts];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setContact:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(CNAvatarCardController *)self setContacts:v6, v7, v8];
}

- (CNContactOrbHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [CNContactOrbHeaderViewController alloc];
    v5 = [(CNAvatarCardController *)self contacts];
    v6 = [(CNContactOrbHeaderViewController *)v4 initWithContacts:v5];
    [(CNAvatarCardController *)self setOrbHeaderViewController:v6];

    v7 = [(CNAvatarCardController *)self orbHeaderViewController];
    v8 = [v7 headerView];
    [(CNAvatarCardController *)self setHeaderView:v8];

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
    v5 = [(CNAvatarCardController *)self contacts];
    v6 = [(CNContactOrbHeaderViewController *)v4 initWithContacts:v5];
    [(CNAvatarCardController *)self setOrbHeaderViewController:v6];

    v7 = [(CNAvatarCardController *)self orbHeaderViewController];
    v8 = [v7 headerView];
    [(CNAvatarCardController *)self setHeaderView:v8];

    orbHeaderViewController = self->_orbHeaderViewController;
  }

  return orbHeaderViewController;
}

+ (id)previewHeaderViewControllerForContacts:(id)a3
{
  v3 = a3;
  v4 = [[CNContactOrbHeaderViewController alloc] initWithContacts:v3];

  return v4;
}

+ (id)descriptorForRequiredKeysIncludingAvatarViewDescriptors:(BOOL)a3
{
  v3 = a3;
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CD58];
  v5 = [MEMORY[0x1E695CD80] sharedFullNameFormatterWithFallBacks];
  v6 = [CNContactOrbHeaderView descriptorForRequiredKeysForContactFormatter:v5 includingAvatarViewDescriptors:v3];
  v12[0] = v6;
  v7 = +[CNContactOrbActionsController descriptorForRequiredKeys];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNAvatarCardController descriptorForRequiredKeysIncludingAvatarViewDescriptors:]"];
  v10 = [v4 descriptorWithKeyDescriptors:v8 description:v9];

  return v10;
}

+ (BOOL)avatarCardEnabledForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 userInterfaceIdiom] != 3 && objc_msgSend(v3, "userInterfaceIdiom") != 5;

  return v4;
}

@end