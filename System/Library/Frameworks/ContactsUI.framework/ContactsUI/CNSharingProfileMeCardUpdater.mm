@interface CNSharingProfileMeCardUpdater
- (CNSharingProfileMeCardUpdater)initWithMeContact:(id)contact contactStore:(id)store;
- (CNSharingProfileMeCardUpdaterDelegate)delegate;
- (id)alertControllerForMeCardUpdateWithImageContact:(id)contact;
- (void)performSave;
- (void)updateMeContactWithImageContact:(id)contact;
@end

@implementation CNSharingProfileMeCardUpdater

- (CNSharingProfileMeCardUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)performSave
{
  v3 = objc_alloc(MEMORY[0x1E695CDB0]);
  meContact = [(CNSharingProfileMeCardUpdater *)self meContact];
  contactStore = [(CNSharingProfileMeCardUpdater *)self contactStore];
  v7 = [v3 initWithContact:meContact contactStore:contactStore];

  imageContact = [(CNSharingProfileMeCardUpdater *)self imageContact];
  [v7 updateImageWithImageContact:imageContact setAsMe:1];
}

- (void)updateMeContactWithImageContact:(id)contact
{
  objc_storeStrong(&self->_imageContact, contact);
  [(CNSharingProfileMeCardUpdater *)self performSave];
  delegate = [(CNSharingProfileMeCardUpdater *)self delegate];
  [delegate meCardUpdaterDidSetPhotoToMeCard:self];
}

- (id)alertControllerForMeCardUpdateWithImageContact:(id)contact
{
  contactCopy = contact;
  objc_storeStrong(&self->_imageContact, contact);
  v6 = MEMORY[0x1E69DC650];
  v7 = CNContactsUIBundle();
  v8 = [v7 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_MESSAGE" value:&stru_1F0CE7398 table:@"Localized"];
  v11 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

  v12 = MEMORY[0x1E69DC648];
  v13 = CNContactsUIBundle();
  v14 = [v13 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CONFIRM" value:&stru_1F0CE7398 table:@"Localized"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __80__CNSharingProfileMeCardUpdater_alertControllerForMeCardUpdateWithImageContact___block_invoke;
  v23[3] = &unk_1E74E7308;
  v23[4] = self;
  v24 = contactCopy;
  v15 = contactCopy;
  v16 = [v12 actionWithTitle:v14 style:0 handler:v23];
  [v11 addAction:v16];

  v17 = MEMORY[0x1E69DC648];
  v18 = CNContactsUIBundle();
  v19 = [v18 localizedStringForKey:@"SHARING_UPDATE_ME_CARD_PROMPT_CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __80__CNSharingProfileMeCardUpdater_alertControllerForMeCardUpdateWithImageContact___block_invoke_2;
  v22[3] = &unk_1E74E6C28;
  v22[4] = self;
  v20 = [v17 actionWithTitle:v19 style:1 handler:v22];
  [v11 addAction:v20];

  return v11;
}

void __80__CNSharingProfileMeCardUpdater_alertControllerForMeCardUpdateWithImageContact___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 meCardUpdaterDidDeclineSetPhotoToMeCard:*(a1 + 32)];
}

- (CNSharingProfileMeCardUpdater)initWithMeContact:(id)contact contactStore:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNSharingProfileMeCardUpdater;
  v9 = [(CNSharingProfileMeCardUpdater *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_meContact, contact);
    v11 = v10;
  }

  return v10;
}

@end