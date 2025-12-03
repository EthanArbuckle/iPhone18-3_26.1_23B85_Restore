@interface CNContactActionProvider
- (CNContactAction)shareWithFamilyAction;
- (CNContactActionProvider)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store;
- (CNContactActionProvider)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store propertyGroupsDataSource:(id)source actionsDataSource:(id)dataSource capabilities:(id)capabilities environment:(id)environment;
- (CNPropertyActionDelegate)actionDelegate;
- (id)_addCreateNewContactAction;
- (id)_addFavoriteActionWithConferencing:(BOOL)conferencing telephony:(BOOL)telephony;
- (id)_addLinkedCardAction;
- (id)_addToExistingContactAction;
- (id)_faceTimeAction;
- (id)_faceTimeAudioAction;
- (id)_linkedCardsAction;
- (id)_sendMessageActionAllowingEmailIDs:(BOOL)ds;
- (id)_shareContactAction;
- (id)appropriateLocationSharingActionWhenSharing:(BOOL)sharing;
- (void)buildAddContactActions;
- (void)buildCommunicationLimitsActions;
- (void)buildContainerSelectionAction;
- (void)buildLinkedContactActions;
- (void)buildSharingLocationActionsWithShareLocationController:(id)controller;
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
  contact = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v5 setDelegate:actionDelegate];

  return v5;
}

- (id)_linkedCardsAction
{
  v3 = [CNPropertyLinkedCardsAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  v5 = [(CNPropertyLinkedCardsAction *)v3 initWithContact:contact];

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v5 setDelegate:actionDelegate];

  return v5;
}

- (id)_shareContactAction
{
  contact = [(CNContactActionProvider *)self contact];
  isSuggested = [contact isSuggested];

  if (isSuggested)
  {
    v5 = 0;
  }

  else
  {
    contact2 = [(CNContactActionProvider *)self contact];
    mainStoreLinkedContacts = [contact2 mainStoreLinkedContacts];
    if ([contact2 isUnified])
    {
      linkedContacts = [contact2 linkedContacts];
      v9 = [linkedContacts isEqual:mainStoreLinkedContacts];

      if ((v9 & 1) == 0)
      {
        v10 = [MEMORY[0x1E695CD58] unifyContacts:mainStoreLinkedContacts];

        contact2 = v10;
      }
    }

    v5 = [(CNContactAction *)[CNContactShareContactAction alloc] initWithContact:contact2];
    actionDelegate = [(CNContactActionProvider *)self actionDelegate];
    [(CNContactAction *)v5 setDelegate:actionDelegate];
  }

  return v5;
}

- (id)_faceTimeAudioAction
{
  v12[2] = *MEMORY[0x1E69E9840];
  propertyGroupsDataSource = [(CNContactActionProvider *)self propertyGroupsDataSource];
  v4 = *MEMORY[0x1E695C208];
  v12[0] = *MEMORY[0x1E695C330];
  v12[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [propertyGroupsDataSource allDisplayPropertyItemsForPropertyKeys:v5];

  v7 = [CNPropertyFaceTimeAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  v9 = [(CNPropertyFaceTimeAction *)v7 initWithContact:contact propertyItems:v6];

  [(CNPropertyFaceTimeAction *)v9 setType:1];
  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v9 setDelegate:actionDelegate];

  return v9;
}

- (id)_faceTimeAction
{
  v12[2] = *MEMORY[0x1E69E9840];
  propertyGroupsDataSource = [(CNContactActionProvider *)self propertyGroupsDataSource];
  v4 = *MEMORY[0x1E695C208];
  v12[0] = *MEMORY[0x1E695C330];
  v12[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [propertyGroupsDataSource allDisplayPropertyItemsForPropertyKeys:v5];

  v7 = [CNPropertyFaceTimeAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  v9 = [(CNPropertyFaceTimeAction *)v7 initWithContact:contact propertyItems:v6];

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v9 setDelegate:actionDelegate];

  return v9;
}

- (id)_addFavoriteActionWithConferencing:(BOOL)conferencing telephony:(BOOL)telephony
{
  v17[4] = *MEMORY[0x1E69E9840];
  v5 = [(CNContactActionProvider *)self propertyGroupsDataSource:conferencing];
  v6 = *MEMORY[0x1E695C208];
  v17[0] = *MEMORY[0x1E695C330];
  v17[1] = v6;
  v7 = *MEMORY[0x1E695C2B0];
  v17[2] = *MEMORY[0x1E695C3D0];
  v17[3] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v9 = [v5 allDisplayPropertyItemsForPropertyKeys:v8];

  v10 = [CNContactAddFavoriteAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  environment = [(CNContactActionProvider *)self environment];
  inProcessFavorites = [environment inProcessFavorites];
  v14 = [(CNContactAddFavoriteAction *)v10 initWithContact:contact propertyItems:v9 favorites:inProcessFavorites];

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v14 setDelegate:actionDelegate];

  return v14;
}

- (id)_sendMessageActionAllowingEmailIDs:(BOOL)ds
{
  dsCopy = ds;
  v21 = *MEMORY[0x1E69E9840];
  propertyGroupsDataSource = [(CNContactActionProvider *)self propertyGroupsDataSource];
  if (dsCopy)
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
  v11 = [propertyGroupsDataSource allDisplayPropertyItemsForPropertyKeys:v10];

  v12 = [CNPropertySendMessageAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  actionsDataSource = [(CNContactActionProvider *)self actionsDataSource];
  v15 = [(CNPropertySendMessageAction *)v12 initWithContact:contact propertyItems:v11 actionDataSource:actionsDataSource];

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)v15 setDelegate:actionDelegate];

  return v15;
}

- (id)_addToExistingContactAction
{
  v3 = [CNContactAddToExistingContactAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  return v5;
}

- (id)_addCreateNewContactAction
{
  v3 = [CNContactCreateNewContactAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];

  return v5;
}

- (id)appropriateLocationSharingActionWhenSharing:(BOOL)sharing
{
  if (sharing)
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
  contact = [(CNContactActionProvider *)self contact];
  v5 = [(CNPropertyAction *)v3 initWithContact:contact];
  staticIdentityAction = self->_staticIdentityAction;
  self->_staticIdentityAction = v5;

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_staticIdentityAction setDelegate:actionDelegate];

  v8 = [CNContactAddStaticIdentityAction alloc];
  contact2 = [(CNContactActionProvider *)self contact];
  v10 = [(CNContactAction *)v8 initWithContact:contact2];
  addStaticIdentityAction = self->_addStaticIdentityAction;
  self->_addStaticIdentityAction = v10;

  actionDelegate2 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_addStaticIdentityAction setDelegate:actionDelegate2];
}

- (void)buildContainerSelectionAction
{
  v3 = objc_alloc_init(CNContactSelectContainersAction);
  containerSelectionAction = self->_containerSelectionAction;
  self->_containerSelectionAction = v3;

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_containerSelectionAction setDelegate:actionDelegate];
}

- (void)buildCommunicationLimitsActions
{
  v3 = [CNContactShareWithFamilyAction alloc];
  contact = [(CNContactActionProvider *)self contact];
  v5 = [(CNContactAction *)v3 initWithContact:contact];
  shareWithFamilyAction = self->_shareWithFamilyAction;
  self->_shareWithFamilyAction = v5;

  actionDelegate = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_shareWithFamilyAction setDelegate:actionDelegate];

  v8 = [CNContactStopSharingWithFamily alloc];
  contact2 = [(CNContactActionProvider *)self contact];
  v10 = [(CNContactAction *)v8 initWithContact:contact2];
  stopSharingWithFamilyAction = self->_stopSharingWithFamilyAction;
  self->_stopSharingWithFamilyAction = v10;

  actionDelegate2 = [(CNContactActionProvider *)self actionDelegate];
  [(CNContactAction *)self->_stopSharingWithFamilyAction setDelegate:actionDelegate2];

  v13 = [CNContactEnableGuardianRestrictionsAction alloc];
  contact3 = [(CNContactActionProvider *)self contact];
  container = [(CNContactActionProvider *)self container];
  contactStore = [(CNContactActionProvider *)self contactStore];
  v17 = [(CNContactEnableGuardianRestrictionsAction *)v13 initWithContact:contact3 inContainer:container contactStore:contactStore];
  enableGuardianRestrictionsAction = self->_enableGuardianRestrictionsAction;
  self->_enableGuardianRestrictionsAction = v17;

  v19 = [CNContactDisableGuardianRestrictionsAction alloc];
  contact4 = [(CNContactActionProvider *)self contact];
  container2 = [(CNContactActionProvider *)self container];
  contactStore2 = [(CNContactActionProvider *)self contactStore];
  v22 = [(CNContactDisableGuardianRestrictionsAction *)v19 initWithContact:contact4 inContainer:container2 contactStore:contactStore2];
  disableGuardianRestrictionsAction = self->_disableGuardianRestrictionsAction;
  self->_disableGuardianRestrictionsAction = v22;
}

- (void)buildAddContactActions
{
  contact = [(CNContactActionProvider *)self contact];
  isUnknown = [contact isUnknown];

  if (isUnknown)
  {
    _addCreateNewContactAction = [(CNContactActionProvider *)self _addCreateNewContactAction];
    createNewContactAction = self->_createNewContactAction;
    self->_createNewContactAction = _addCreateNewContactAction;

    _addToExistingContactAction = [(CNContactActionProvider *)self _addToExistingContactAction];
    addToExistingContactAction = self->_addToExistingContactAction;
    self->_addToExistingContactAction = _addToExistingContactAction;

    MEMORY[0x1EEE66BB8](_addToExistingContactAction, addToExistingContactAction);
  }
}

- (void)buildLinkedContactActions
{
  _linkedCardsAction = [(CNContactActionProvider *)self _linkedCardsAction];
  linkedCardsAction = self->_linkedCardsAction;
  self->_linkedCardsAction = _linkedCardsAction;

  _addLinkedCardAction = [(CNContactActionProvider *)self _addLinkedCardAction];
  addLinkedCardAction = self->_addLinkedCardAction;
  self->_addLinkedCardAction = _addLinkedCardAction;

  MEMORY[0x1EEE66BB8](_addLinkedCardAction, addLinkedCardAction);
}

- (void)buildSharingLocationActionsWithShareLocationController:(id)controller
{
  controllerCopy = controller;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CNContactActionProvider_buildSharingLocationActionsWithShareLocationController___block_invoke;
  v6[3] = &unk_1E74E4D98;
  objc_copyWeak(&v8, &location);
  v5 = controllerCopy;
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
  propertyGroupsDataSource = [(CNContactActionProvider *)self propertyGroupsDataSource];

  if (!propertyGroupsDataSource)
  {
    return;
  }

  actionsDataSource = [(CNContactActionProvider *)self actionsDataSource];

  if (!actionsDataSource)
  {
    return;
  }

  capabilities = [(CNContactActionProvider *)self capabilities];

  if (!capabilities)
  {
    return;
  }

  capabilities2 = [(CNContactActionProvider *)self capabilities];
  hasCellularTelephonyCapability = [capabilities2 hasCellularTelephonyCapability];
  areFavoritesAvailable = [capabilities2 areFavoritesAvailable];
  isMMSConfigured = [capabilities2 isMMSConfigured];
  isMadridConfigured = [capabilities2 isMadridConfigured];
  isConferencingAvailable = [capabilities2 isConferencingAvailable];
  isFaceTimeAudioAvailable = [capabilities2 isFaceTimeAudioAvailable];
  isMessagesAppAvailable = [capabilities2 isMessagesAppAvailable];
  isPhoneAppAvailable = [capabilities2 isPhoneAppAvailable];
  isFaceTimeAppAvailable = [capabilities2 isFaceTimeAppAvailable];
  contact = [(CNContactActionProvider *)self contact];
  phoneNumbers = [contact phoneNumbers];
  v13 = [phoneNumbers count];

  contact2 = [(CNContactActionProvider *)self contact];
  emailAddresses = [contact2 emailAddresses];
  v16 = [emailAddresses count];

  contact3 = [(CNContactActionProvider *)self contact];
  socialProfiles = [contact3 socialProfiles];
  *(&v32 + 1) = [socialProfiles count];

  contact4 = [(CNContactActionProvider *)self contact];
  instantMessageAddresses = [contact4 instantMessageAddresses];
  *&v32 = [instantMessageAddresses count];

  if (([MEMORY[0x1E695CD58] quickActionsEnabled] & 1) == 0 && isMessagesAppAvailable && (((v13 != 0) & (hasCellularTelephonyCapability | isMadridConfigured)) != 0 || ((v16 != 0) & (isMMSConfigured | isMadridConfigured)) != 0))
  {
    v21 = [(CNContactActionProvider *)self _sendMessageActionAllowingEmailIDs:(isMMSConfigured | isMadridConfigured) & 1];
    sendMessageAction = self->_sendMessageAction;
    self->_sendMessageAction = v21;
  }

  if (((self->_faceTimeAction == 0) & isConferencingAvailable) == 1 && v13 | v16 && ((isFaceTimeAppAvailable ^ 1) & 1) == 0)
  {
    _faceTimeAction = [(CNContactActionProvider *)self _faceTimeAction];
    faceTimeAction = self->_faceTimeAction;
    self->_faceTimeAction = _faceTimeAction;
  }

  if (((self->_faceTimeAudioAction == 0) & isConferencingAvailable) == 1 && v13 | v16 && ((isFaceTimeAppAvailable ^ 1) & 1) == 0 && ((isFaceTimeAudioAvailable ^ 1) & 1) == 0)
  {
    _faceTimeAudioAction = [(CNContactActionProvider *)self _faceTimeAudioAction];
    faceTimeAudioAction = self->_faceTimeAudioAction;
    self->_faceTimeAudioAction = _faceTimeAudioAction;
  }

  _shareContactAction = [(CNContactActionProvider *)self _shareContactAction];
  shareContactAction = self->_shareContactAction;
  self->_shareContactAction = _shareContactAction;

  if (areFavoritesAvailable)
  {
    addFavoriteAction = [(CNContactActionProvider *)self contact];
    if (([addFavoriteAction isUnknown] & 1) == 0)
    {
      if (isPhoneAppAvailable && v13 || (v13 | v16 ? (v30 = isFaceTimeAppAvailable) : (v30 = 0), v30 == 1))
      {
      }

      else
      {

        if (v32 == 0)
        {
          goto LABEL_29;
        }
      }

      v31 = [(CNContactActionProvider *)self _addFavoriteActionWithConferencing:isFaceTimeAppAvailable & isConferencingAvailable telephony:isPhoneAppAvailable & hasCellularTelephonyCapability];
      addFavoriteAction = self->_addFavoriteAction;
      self->_addFavoriteAction = v31;
    }
  }

LABEL_29:
}

- (CNContactActionProvider)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store propertyGroupsDataSource:(id)source actionsDataSource:(id)dataSource capabilities:(id)capabilities environment:(id)environment
{
  contactCopy = contact;
  containerCopy = container;
  storeCopy = store;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  capabilitiesCopy = capabilities;
  environmentCopy = environment;
  v27.receiver = self;
  v27.super_class = CNContactActionProvider;
  v18 = [(CNContactActionProvider *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contact, contact);
    objc_storeStrong(&v19->_container, container);
    objc_storeStrong(&v19->_contactStore, store);
    objc_storeStrong(&v19->_propertyGroupsDataSource, source);
    objc_storeStrong(&v19->_actionsDataSource, dataSource);
    objc_storeStrong(&v19->_capabilities, capabilities);
    objc_storeStrong(&v19->_environment, environment);
    v20 = v19;
  }

  return v19;
}

- (CNContactActionProvider)initWithContact:(id)contact inContainer:(id)container contactStore:(id)store
{
  storeCopy = store;
  containerCopy = container;
  contactCopy = contact;
  v11 = +[CNUIContactsEnvironment currentEnvironment];
  v12 = [(CNContactActionProvider *)self initWithContact:contactCopy inContainer:containerCopy contactStore:storeCopy propertyGroupsDataSource:0 actionsDataSource:0 capabilities:0 environment:v11];

  return v12;
}

@end