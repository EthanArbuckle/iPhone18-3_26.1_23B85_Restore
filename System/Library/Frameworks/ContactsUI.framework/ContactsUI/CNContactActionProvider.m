@interface CNContactActionProvider
- (CNContactAction)shareWithFamilyAction;
- (CNContactActionProvider)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5;
- (CNContactActionProvider)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5 propertyGroupsDataSource:(id)a6 actionsDataSource:(id)a7 capabilities:(id)a8 environment:(id)a9;
- (CNPropertyActionDelegate)actionDelegate;
- (id)_addCreateNewContactAction;
- (id)_addFavoriteActionWithConferencing:(BOOL)a3 telephony:(BOOL)a4;
- (id)_addLinkedCardAction;
- (id)_addToExistingContactAction;
- (id)_faceTimeAction;
- (id)_faceTimeAudioAction;
- (id)_linkedCardsAction;
- (id)_sendMessageActionAllowingEmailIDs:(BOOL)a3;
- (id)_shareContactAction;
- (id)appropriateLocationSharingActionWhenSharing:(BOOL)a3;
- (void)buildAddContactActions;
- (void)buildCommunicationLimitsActions;
- (void)buildContainerSelectionAction;
- (void)buildLinkedContactActions;
- (void)buildSharingLocationActionsWithShareLocationController:(id)a3;
- (void)buildStandardActions;
- (void)buildStaticIdentityActions;
@end

@implementation CNContactActionProvider

- (CNPropertyActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (CNContactAction)shareWithFamilyAction
{
  if ([MEMORY[0x1E695CD58] downtimeWhitelistUIEnabled])
  {
    v3 = self->_shareWithFamilyAction;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_addLinkedCardAction
{
  v3 = [CNContactAddLinkedCardAction alloc];
  v4 = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  v6 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v5 setDelegate:v6];

  return v5;
}

- (id)_linkedCardsAction
{
  v3 = [CNPropertyLinkedCardsAction alloc];
  v4 = [(CNContactActionProvider *)self contact];
  v5 = [(CNPropertyLinkedCardsAction *)v3 initWithContact:v4];

  v6 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v5 setDelegate:v6];

  return v5;
}

- (id)_shareContactAction
{
  v3 = [(CNContactActionProvider *)self contact];
  v4 = [v3 isSuggested];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CNContactActionProvider *)self contact];
    v7 = [v6 mainStoreLinkedContacts];
    if ([v6 isUnified])
    {
      v8 = [v6 linkedContacts];
      v9 = [v8 isEqual:v7];

      if ((v9 & 1) == 0)
      {
        v10 = [MEMORY[0x1E695CD58] unifyContacts:v7];

        v6 = v10;
      }
    }

    v5 = [(CNContactAction *)[CNContactShareContactAction alloc] initWithContact:v6];
    v11 = [(CNContactActionProvider *)self actionDelegate];
    [(CNContactAction *)v5 setDelegate:v11];
  }

  return v5;
}

- (id)_faceTimeAudioAction
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactActionProvider *)self propertyGroupsDataSource];
  v4 = *MEMORY[0x1E695C208];
  v12[0] = *MEMORY[0x1E695C330];
  v12[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [v3 allDisplayPropertyItemsForPropertyKeys:v5];

  v7 = [CNPropertyFaceTimeAction alloc];
  v8 = [(CNContactActionProvider *)self contact];
  v9 = [(CNPropertyFaceTimeAction *)v7 initWithContact:v8 propertyItems:v6];

  [(CNPropertyFaceTimeAction *)v9 setType:1];
  v10 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v9 setDelegate:v10];

  return v9;
}

- (id)_faceTimeAction
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNContactActionProvider *)self propertyGroupsDataSource];
  v4 = *MEMORY[0x1E695C208];
  v12[0] = *MEMORY[0x1E695C330];
  v12[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [v3 allDisplayPropertyItemsForPropertyKeys:v5];

  v7 = [CNPropertyFaceTimeAction alloc];
  v8 = [(CNContactActionProvider *)self contact];
  v9 = [(CNPropertyFaceTimeAction *)v7 initWithContact:v8 propertyItems:v6];

  v10 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v9 setDelegate:v10];

  return v9;
}

- (id)_addFavoriteActionWithConferencing:(BOOL)a3 telephony:(BOOL)a4
{
  v17[4] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactActionProvider *)self propertyGroupsDataSource:a3];
  v6 = *MEMORY[0x1E695C208];
  v17[0] = *MEMORY[0x1E695C330];
  v17[1] = v6;
  v7 = *MEMORY[0x1E695C2B0];
  v17[2] = *MEMORY[0x1E695C3D0];
  v17[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v9 = [v5 allDisplayPropertyItemsForPropertyKeys:v8];

  v10 = [CNContactAddFavoriteAction alloc];
  v11 = [(CNContactActionProvider *)self contact];
  v12 = [(CNContactActionProvider *)self environment];
  v13 = [v12 inProcessFavorites];
  v14 = [(CNContactAddFavoriteAction *)v10 initWithContact:v11 propertyItems:v9 favorites:v13];

  v15 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v14 setDelegate:v15];

  return v14;
}

- (id)_sendMessageActionAllowingEmailIDs:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = [(CNContactActionProvider *)self propertyGroupsDataSource];
  if (v3)
  {
    v6 = *MEMORY[0x1E695C208];
    v19 = *MEMORY[0x1E695C330];
    v20 = v6;
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v19;
    v9 = 2;
  }

  else
  {
    v18 = *MEMORY[0x1E695C330];
    v7 = MEMORY[0x1E695DEC8];
    v8 = &v18;
    v9 = 1;
  }

  v10 = [v7 arrayWithObjects:v8 count:{v9, v18, v19, v20}];
  v11 = [v5 allDisplayPropertyItemsForPropertyKeys:v10];

  v12 = [CNPropertySendMessageAction alloc];
  v13 = [(CNContactActionProvider *)self contact];
  v14 = [(CNContactActionProvider *)self actionsDataSource];
  v15 = [(CNPropertySendMessageAction *)v12 initWithContact:v13 propertyItems:v11 actionDataSource:v14];

  v16 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v15 setDelegate:v16];

  return v15;
}

- (id)_addToExistingContactAction
{
  v3 = [CNContactAddToExistingContactAction alloc];
  v4 = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  return v5;
}

- (id)_addCreateNewContactAction
{
  v3 = [CNContactCreateNewContactAction alloc];
  v4 = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];

  return v5;
}

- (id)appropriateLocationSharingActionWhenSharing:(BOOL)a3
{
  if (a3)
  {
    [(CNContactActionProvider *)self stopSharingLocationAction];
  }

  else
  {
    [(CNContactActionProvider *)self shareLocationAction];
  }
  v3 = ;

  return v3;
}

- (void)buildStaticIdentityActions
{
  v3 = [CNPropertyStaticIdentityAction alloc];
  v4 = [(CNContactActionProvider *)self contact];
  v5 = [(CNPropertyAction *)v3 initWithContact:v4];
  staticIdentityAction = self->_staticIdentityAction;
  self->_staticIdentityAction = v5;

  v7 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_staticIdentityAction setDelegate:v7];

  v8 = [CNContactAddStaticIdentityAction alloc];
  v9 = [(CNContactActionProvider *)self contact];
  v10 = [(CNContactAction *)v8 initWithContact:v9];
  addStaticIdentityAction = self->_addStaticIdentityAction;
  self->_addStaticIdentityAction = v10;

  v12 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_addStaticIdentityAction setDelegate:v12];
}

- (void)buildContainerSelectionAction
{
  v3 = objc_alloc_init(CNContactSelectContainersAction);
  containerSelectionAction = self->_containerSelectionAction;
  self->_containerSelectionAction = v3;

  v5 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_containerSelectionAction setDelegate:v5];
}

- (void)buildCommunicationLimitsActions
{
  v3 = [CNContactShareWithFamilyAction alloc];
  v4 = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:v4];
  shareWithFamilyAction = self->_shareWithFamilyAction;
  self->_shareWithFamilyAction = v5;

  v7 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_shareWithFamilyAction setDelegate:v7];

  v8 = [CNContactStopSharingWithFamily alloc];
  v9 = [(CNContactActionProvider *)self contact];
  v10 = [(CNContactAction *)v8 initWithContact:v9];
  stopSharingWithFamilyAction = self->_stopSharingWithFamilyAction;
  self->_stopSharingWithFamilyAction = v10;

  v12 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_stopSharingWithFamilyAction setDelegate:v12];

  v13 = [CNContactEnableGuardianRestrictionsAction alloc];
  v14 = [(CNContactActionProvider *)self contact];
  v15 = [(CNContactActionProvider *)self container];
  v16 = [(CNContactActionProvider *)self contactStore];
  v17 = [(CNContactEnableGuardianRestrictionsAction *)v13 initWithContact:v14 inContainer:v15 contactStore:v16];
  enableGuardianRestrictionsAction = self->_enableGuardianRestrictionsAction;
  self->_enableGuardianRestrictionsAction = v17;

  v19 = [CNContactDisableGuardianRestrictionsAction alloc];
  v24 = [(CNContactActionProvider *)self contact];
  v20 = [(CNContactActionProvider *)self container];
  v21 = [(CNContactActionProvider *)self contactStore];
  v22 = [(CNContactDisableGuardianRestrictionsAction *)v19 initWithContact:v24 inContainer:v20 contactStore:v21];
  disableGuardianRestrictionsAction = self->_disableGuardianRestrictionsAction;
  self->_disableGuardianRestrictionsAction = v22;
}

- (void)buildAddContactActions
{
  v3 = [(CNContactActionProvider *)self contact];
  v4 = [v3 isUnknown];

  if (v4)
  {
    v5 = [(CNContactActionProvider *)self _addCreateNewContactAction];
    createNewContactAction = self->_createNewContactAction;
    self->_createNewContactAction = v5;

    v7 = [(CNContactActionProvider *)self _addToExistingContactAction];
    addToExistingContactAction = self->_addToExistingContactAction;
    self->_addToExistingContactAction = v7;

    MEMORY[0x1EEE66BB8](v7, addToExistingContactAction);
  }
}

- (void)buildLinkedContactActions
{
  v3 = [(CNContactActionProvider *)self _linkedCardsAction];
  linkedCardsAction = self->_linkedCardsAction;
  self->_linkedCardsAction = v3;

  v5 = [(CNContactActionProvider *)self _addLinkedCardAction];
  addLinkedCardAction = self->_addLinkedCardAction;
  self->_addLinkedCardAction = v5;

  MEMORY[0x1EEE66BB8](v5, addLinkedCardAction);
}

- (void)buildSharingLocationActionsWithShareLocationController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CNContactActionProvider_buildSharingLocationActionsWithShareLocationController___block_invoke;
  v6[3] = &unk_1E74E4D98;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [v5 canShareWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __82__CNContactActionProvider_buildSharingLocationActionsWithShareLocationController___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && a2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82__CNContactActionProvider_buildSharingLocationActionsWithShareLocationController___block_invoke_2;
    v6[3] = &unk_1E74E77C0;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __82__CNContactActionProvider_buildSharingLocationActionsWithShareLocationController___block_invoke_2(uint64_t a1)
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARE_LOCATION_STOP_SHARING_LABEL_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
  v4 = [CNContactAction contactActionWithTitle:v3 target:*(a1 + 40) selector:sel_perform_ destructive:1];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  v11 = CNContactsUIBundle();
  v7 = [v11 localizedStringForKey:@"SHARE_LOCATION_LABEL_TEXT" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [CNContactAction contactActionWithTitle:v7 target:*(a1 + 40) selector:sel_perform_ destructive:0];
  v9 = *(a1 + 32);
  v10 = *(v9 + 72);
  *(v9 + 72) = v8;
}

- (void)buildStandardActions
{
  v3 = [(CNContactActionProvider *)self propertyGroupsDataSource];

  if (!v3)
  {
    return;
  }

  v4 = [(CNContactActionProvider *)self actionsDataSource];

  if (!v4)
  {
    return;
  }

  v5 = [(CNContactActionProvider *)self capabilities];

  if (!v5)
  {
    return;
  }

  v37 = [(CNContactActionProvider *)self capabilities];
  v35 = [v37 hasCellularTelephonyCapability];
  v36 = [v37 areFavoritesAvailable];
  v6 = [v37 isMMSConfigured];
  v7 = [v37 isMadridConfigured];
  v8 = [v37 isConferencingAvailable];
  v33 = [v37 isFaceTimeAudioAvailable];
  v9 = [v37 isMessagesAppAvailable];
  v34 = [v37 isPhoneAppAvailable];
  v10 = [v37 isFaceTimeAppAvailable];
  v11 = [(CNContactActionProvider *)self contact];
  v12 = [v11 phoneNumbers];
  v13 = [v12 count];

  v14 = [(CNContactActionProvider *)self contact];
  v15 = [v14 emailAddresses];
  v16 = [v15 count];

  v17 = [(CNContactActionProvider *)self contact];
  v18 = [v17 socialProfiles];
  *(&v32 + 1) = [v18 count];

  v19 = [(CNContactActionProvider *)self contact];
  v20 = [v19 instantMessageAddresses];
  *&v32 = [v20 count];

  if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0 && v9 && (((v13 != 0) & (v35 | v7)) != 0 || ((v16 != 0) & (v6 | v7)) != 0))
  {
    v21 = [(CNContactActionProvider *)self _sendMessageActionAllowingEmailIDs:(v6 | v7) & 1];
    sendMessageAction = self->_sendMessageAction;
    self->_sendMessageAction = v21;
  }

  if (((self->_faceTimeAction == 0) & v8) == 1 && v13 | v16 && ((v10 ^ 1) & 1) == 0)
  {
    v23 = [(CNContactActionProvider *)self _faceTimeAction];
    faceTimeAction = self->_faceTimeAction;
    self->_faceTimeAction = v23;
  }

  if (((self->_faceTimeAudioAction == 0) & v8) == 1 && v13 | v16 && ((v10 ^ 1) & 1) == 0 && ((v33 ^ 1) & 1) == 0)
  {
    v25 = [(CNContactActionProvider *)self _faceTimeAudioAction];
    faceTimeAudioAction = self->_faceTimeAudioAction;
    self->_faceTimeAudioAction = v25;
  }

  v27 = [(CNContactActionProvider *)self _shareContactAction];
  shareContactAction = self->_shareContactAction;
  self->_shareContactAction = v27;

  if (v36)
  {
    addFavoriteAction = [(CNContactActionProvider *)self contact];
    if (([addFavoriteAction isUnknown] & 1) == 0)
    {
      if (v34 && v13 || (v13 | v16 ? (v30 = v10) : (v30 = 0), v30 == 1))
      {
      }

      else
      {

        if (v32 == 0)
        {
          goto LABEL_29;
        }
      }

      v31 = [(CNContactActionProvider *)self _addFavoriteActionWithConferencing:v10 & v8 telephony:v34 & v35];
      addFavoriteAction = self->_addFavoriteAction;
      self->_addFavoriteAction = v31;
    }
  }

LABEL_29:
}

- (CNContactActionProvider)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5 propertyGroupsDataSource:(id)a6 actionsDataSource:(id)a7 capabilities:(id)a8 environment:(id)a9
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = CNContactActionProvider;
  v18 = [(CNContactActionProvider *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contact, a3);
    objc_storeStrong(&v19->_container, a4);
    objc_storeStrong(&v19->_contactStore, a5);
    objc_storeStrong(&v19->_propertyGroupsDataSource, a6);
    objc_storeStrong(&v19->_actionsDataSource, a7);
    objc_storeStrong(&v19->_capabilities, a8);
    objc_storeStrong(&v19->_environment, a9);
    v20 = v19;
  }

  return v19;
}

- (CNContactActionProvider)initWithContact:(id)a3 inContainer:(id)a4 contactStore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CNUIContactsEnvironment currentEnvironment];
  v12 = [(CNContactActionProvider *)self initWithContact:v10 inContainer:v9 contactStore:v8 propertyGroupsDataSource:0 actionsDataSource:0 capabilities:0 environment:v11];

  return v12;
}

@end