@interface CNMeCardSharingPickerViewController
+ (id)descriptorForRequiredKeys;
- (CNMeCardSharingPickerViewController)initWithContact:(id)a3;
- (CNMeCardSharingPickerViewController)initWithContactStore:(id)a3 contact:(id)a4 nameProvider:(id)a5 sharingEnabled:(BOOL)a6 selectedNameFormat:(unint64_t)a7 selectedSharingAudience:(unint64_t)a8 mode:(unint64_t)a9;
- (CNMeCardSharingPickerViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)meCardSharingStatus;
- (void)avatarViewControllerWasTapped:(id)a3;
- (void)didTapDoneButton:(id)a3;
- (void)didTapSetUpLaterButton:(id)a3;
- (void)loadView;
- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5;
- (void)photoPickerDidCancel:(id)a3;
- (void)saveDraftContact;
- (void)setMeCardSharingStatus:(unint64_t)a3;
- (void)sharingEnabledDataSource:(id)a3 didChangeEnabledState:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CNMeCardSharingPickerViewController

- (CNMeCardSharingPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sharingEnabledDataSource:(id)a3 didChangeEnabledState:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  self->_sharingEnabled = v4;
  if (self->_mode == 1 && self->_shouldSetMeContact)
  {
    [(CNMeCardSharingPickerViewController *)self saveDraftContact];
  }

  v6 = [(CNMeCardSharingPickerViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CNMeCardSharingPickerViewController *)self delegate];
    [v8 sharingPicker:self didChangeSharingState:self->_sharingEnabled];
  }

  if (v4)
  {
    if ([(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedSharingAudience])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  [(CNMeCardSharingPickerViewController *)self setMeCardSharingStatus:v9];
}

- (void)photoPicker:(id)a3 didUpdatePhotoForContact:(id)a4 withContactImage:(id)a5
{
  v16 = a4;
  v7 = a5;
  objc_storeStrong(&self->_draftContactImage, a5);
  if (v16)
  {
    v8 = [v16 imageData];
    [(CNMutableContact *)self->_draftContact setImageData:v8];

    v9 = [v16 imageType];
    [(CNMutableContact *)self->_draftContact setImageType:v9];

    v10 = [v16 imageHash];
    [(CNMutableContact *)self->_draftContact setImageHash:v10];

    [v16 cropRect];
    [(CNMutableContact *)self->_draftContact setCropRect:?];
    v11 = [v16 thumbnailImageData];
    [(CNMutableContact *)self->_draftContact setThumbnailImageData:v11];

    v12 = [v16 fullscreenImageData];
    [(CNMutableContact *)self->_draftContact setFullscreenImageData:v12];

    v13 = [v16 preferredLikenessSource];
    [(CNMutableContact *)self->_draftContact setPreferredLikenessSource:v13];

    if (self->_mode == 1)
    {
      [(CNMeCardSharingPickerViewController *)self saveDraftContact];
    }

    v14 = [(CNMeCardSharingPickerViewController *)self avatarViewController];
    [v14 reload];
  }

  v15 = [(CNMeCardSharingPickerViewController *)self presentedViewController];
  [v15 dismissViewControllerAnimated:1 completion:0];
}

- (void)photoPickerDidCancel:(id)a3
{
  v3 = [(CNMeCardSharingPickerViewController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)avatarViewControllerWasTapped:(id)a3
{
  v4 = [CNPhotoPickerViewController alloc];
  draftContact = self->_draftContact;
  v6 = +[CNContactStyle defaultStyle];
  v7 = +[CNPhotoPickerConfiguration contactsConfiguration];
  v8 = [v7 configurationBySettingAllowsPhotoCapture:1];
  v15 = [(CNPhotoPickerViewController *)v4 initWithContact:draftContact style:v6 configuration:v8];

  [(CNPhotoPickerViewController *)v15 setDelegate:self];
  v9 = CNContactsUIBundle();
  v10 = [v9 localizedStringForKey:@"SHARING_PHOTOPICKER_ASSIGN_TITLE_OVERRIDE" value:&stru_1F0CE7398 table:@"Localized"];
  [(CNVisualIdentityPickerViewController *)v15 setAssignActionTitleOverride:v10];

  [(CNMeCardSharingPickerViewController *)self setPhotoPicker:v15];
  v11 = [(CNMeCardSharingPickerViewController *)self view];
  v12 = [v11 window];
  [v12 endEditing:1];

  v13 = [(CNMeCardSharingPickerViewController *)self photoPicker];
  v14 = [CNPhotoPickerViewController navigationControllerForPicker:v13];

  [(CNMeCardSharingPickerViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)saveDraftContact
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v4 = [(CNMutableContact *)self->_draftContact hasBeenPersisted];
  draftContact = self->_draftContact;
  if (v4)
  {
    [v3 updateContact:draftContact];
  }

  else
  {
    [v3 addContact:draftContact toContainerWithIdentifier:0];
  }

  contactStore = self->_contactStore;
  v15 = 0;
  [(CNContactStore *)contactStore executeSaveRequest:v3 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v7)
  {
    NSLog(&cfstr_UnableToSaveCo.isa, v7);
  }

  else
  {
    if ([(CNMeCardSharingPickerViewController *)self shouldSetMeContact])
    {
      v9 = self->_contactStore;
      v10 = self->_draftContact;
      v14 = 0;
      [(CNContactStore *)v9 setMeContact:v10 error:&v14];
      v11 = v14;
      v12 = v11;
      if (v11)
      {
        NSLog(&cfstr_UnableToSetMeC.isa, v11);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, CNMeCardSharingPickerViewControllerDidSaveNotification, 0, 0, 0);
  }
}

- (void)didTapSetUpLaterButton:(id)a3
{
  v4 = [(CNMeCardSharingPickerViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNMeCardSharingPickerViewController *)self delegate];
    [v6 sharingPickerDidFinish:self];
  }
}

- (void)didTapDoneButton:(id)a3
{
  [(CNMeCardSharingPickerViewController *)self saveDraftContact];
  if (!self->_sharingEnabled)
  {
    self->_sharingEnabled = 1;
    v4 = [(CNMeCardSharingPickerViewController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(CNMeCardSharingPickerViewController *)self delegate];
      [v6 sharingPicker:self didChangeSharingState:self->_sharingEnabled];
    }
  }

  v7 = [(CNMeCardSharingPickerViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNMeCardSharingPickerViewController *)self delegate];
    [v9 sharingPickerDidFinish:self];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = -[NSArray objectAtIndexedSubscript:](self->_sectionDataSources, "objectAtIndexedSubscript:", [v6 section]);
  v8 = [(CNMeCardSharingAudienceDataSource *)v7 selectedIndex];
  -[CNMeCardSharingAudienceDataSource didSelectItemAtIndex:](v7, "didSelectItemAtIndex:", [v6 row]);
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:{objc_msgSend(v6, "section")}];
  if (v7 == self->_sharingAudienceDataSource)
  {
    v10 = [(CNMeCardSharingPickerViewController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(CNMeCardSharingPickerViewController *)self delegate];
      [v12 sharingPicker:self didSelectSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
    }

    if (self->_sharingEnabled)
    {
      if ([(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedSharingAudience])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 0;
    }

    [(CNMeCardSharingPickerViewController *)self setMeCardSharingStatus:v13];
    v14 = [(CNMeCardSharingPickerViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      sharingEnabled = self->_sharingEnabled;

      if (!sharingEnabled)
      {
        goto LABEL_13;
      }

      v14 = [(CNMeCardSharingPickerViewController *)self delegate];
      [v14 sharingPicker:self didSelectSharingStatus:v13];
    }
  }

LABEL_13:
  v16 = [v9 isEqual:v6];
  [v18 deselectRowAtIndexPath:v6 animated:0];
  if ((v16 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v6, "section")}];
    [v18 reloadSections:v17 withRowAnimation:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_sectionDataSources, "objectAtIndexedSubscript:", [v6 section]);
  v9 = [v6 row];

  v10 = [v8 itemForIndex:v9];
  v11 = [v10 label];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  [v7 setSelectionStyle:0];
  v13 = [v10 accessoryView];

  if (v13)
  {
    v14 = [v10 accessoryView];
    [v7 setAccessoryView:v14];
  }

  else
  {
    [v7 setAccessoryView:0];
  }

  if ([v10 isSelected])
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v7 setAccessoryType:v15];

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[NSArray objectAtIndexedSubscript:](self->_sectionDataSources, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [v6 selectedIndex];
  if (v7 == [v5 row])
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDataSources objectAtIndexedSubscript:a4];
  v5 = [v4 sectionFooterLabel];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDataSources objectAtIndexedSubscript:a4];
  v5 = [v4 sectionHeaderLabel];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sectionDataSources objectAtIndexedSubscript:a4];
  v5 = [v4 numberOfItems];

  return v5;
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CNMeCardSharingPickerViewController;
  [(CNMeCardSharingPickerViewController *)&v19 viewWillLayoutSubviews];
  v3 = [(CNMeCardSharingPickerViewController *)self view];
  [(OBBoldTrayButton *)self->_confirmButton intrinsicContentSize];
  v5 = v4;
  [v3 bounds];
  [(OBBoldTrayButton *)self->_confirmButton setFrame:20.0, 10.0, v6 + -40.0, v5];
  [(OBLinkTrayButton *)self->_laterButton intrinsicContentSize];
  v8 = v7;
  [(OBBoldTrayButton *)self->_confirmButton frame];
  v9 = CGRectGetMaxY(v20) + 10.0;
  [v3 bounds];
  [(OBLinkTrayButton *)self->_laterButton setFrame:20.0, v9, v10 + -40.0, v8];
  [v3 bounds];
  MaxY = CGRectGetMaxY(v21);
  v12 = [(CNMeCardSharingPickerViewController *)self view];
  [v12 safeAreaInsets];
  v14 = MaxY - (v13 + 130.0);
  [v3 bounds];
  Width = CGRectGetWidth(v22);
  v16 = [(CNMeCardSharingPickerViewController *)self view];
  [v16 safeAreaInsets];
  [(UIView *)self->_buttonTray setFrame:0.0, v14, Width, v17 + 130.0];

  v18 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(UIView *)self->_buttonTray setBackgroundColor:v18];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = CNMeCardSharingPickerViewController;
  [(CNMeCardSharingPickerViewController *)&v12 viewDidLoad];
  v3 = [(CNMeCardSharingHeaderViewController *)self->_headerViewController view];
  v4 = [(CNMeCardSharingPickerViewController *)self view];
  [v4 bounds];
  v6 = v5;
  [(CNMeCardSharingHeaderViewController *)self->_headerViewController desiredHeight];
  [v3 setFrame:{0.0, 0.0, v6, v7}];

  [v3 setAutoresizingMask:2];
  v8 = [(CNMeCardSharingPickerViewController *)self tableView];
  [v8 setTableHeaderView:v3];

  v9 = [(CNMeCardSharingPickerViewController *)self tableView];
  [v9 setDelegate:self];

  v10 = [(CNMeCardSharingPickerViewController *)self tableView];
  [v10 setDataSource:self];

  v11 = [(CNMeCardSharingPickerViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v34 = [v3 initWithFrame:?];

  v5 = objc_alloc(MEMORY[0x1E69DD020]);
  [v34 bounds];
  v6 = [v5 initWithFrame:1 style:?];
  [(CNMeCardSharingPickerViewController *)self setTableView:v6];

  if (!self->_mode)
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [v34 setBackgroundColor:v7];

    v8 = [MEMORY[0x1E69DC888] clearColor];
    v9 = [(CNMeCardSharingPickerViewController *)self tableView];
    [v9 setBackgroundColor:v8];

    v10 = [MEMORY[0x1E69B7CF8] boldButton];
    confirmButton = self->_confirmButton;
    self->_confirmButton = v10;

    v12 = self->_confirmButton;
    v13 = CNContactsUIBundle();
    v14 = [v13 localizedStringForKey:@"SHARING_DONE" value:&stru_1F0CE7398 table:@"Localized"];
    [(OBBoldTrayButton *)v12 setTitle:v14 forState:0];

    [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_didTapDoneButton_ forControlEvents:64];
    [(OBBoldTrayButton *)self->_confirmButton intrinsicContentSize];
    v16 = v15;
    [v34 bounds];
    [(OBBoldTrayButton *)self->_confirmButton setFrame:20.0, 10.0, v17 + -40.0, v16];
    [(OBBoldTrayButton *)self->_confirmButton setAutoresizingMask:2];
    v18 = [MEMORY[0x1E69B7D30] linkButton];
    laterButton = self->_laterButton;
    self->_laterButton = v18;

    v20 = self->_laterButton;
    v21 = CNContactsUIBundle();
    v22 = [v21 localizedStringForKey:@"SHARING_SET_UP_LATER" value:&stru_1F0CE7398 table:@"Localized"];
    [(OBLinkTrayButton *)v20 setTitle:v22 forState:0];

    [(OBLinkTrayButton *)self->_laterButton addTarget:self action:sel_didTapSetUpLaterButton_ forControlEvents:64];
    [(OBLinkTrayButton *)self->_laterButton intrinsicContentSize];
    v24 = v23;
    [(OBBoldTrayButton *)self->_confirmButton frame];
    v25 = CGRectGetMaxY(v36) + 10.0;
    [v34 bounds];
    [(OBLinkTrayButton *)self->_laterButton setFrame:20.0, v25, v26 + -40.0, v24];
    [(OBLinkTrayButton *)self->_laterButton setAutoresizingMask:2];
    v27 = objc_alloc(MEMORY[0x1E69DD250]);
    [v34 bounds];
    v28 = CGRectGetMaxY(v37) + -130.0;
    [v34 bounds];
    v29 = [v27 initWithFrame:{0.0, v28, CGRectGetWidth(v38), 130.0}];
    buttonTray = self->_buttonTray;
    self->_buttonTray = v29;

    v31 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)self->_buttonTray setBackgroundColor:v31];

    [(UIView *)self->_buttonTray addSubview:self->_confirmButton];
    [(UIView *)self->_buttonTray addSubview:self->_laterButton];
    [v34 addSubview:self->_buttonTray];
    [(UIView *)self->_buttonTray setAutoresizingMask:10];
  }

  v32 = [(CNMeCardSharingPickerViewController *)self tableView];
  [v32 setAutoresizingMask:18];

  v33 = [(CNMeCardSharingPickerViewController *)self tableView];
  [v34 addSubview:v33];

  if (self->_buttonTray)
  {
    [v34 addSubview:?];
  }

  [(CNMeCardSharingPickerViewController *)self setView:v34];
}

- (CNMeCardSharingPickerViewController)initWithContactStore:(id)a3 contact:(id)a4 nameProvider:(id)a5 sharingEnabled:(BOOL)a6 selectedNameFormat:(unint64_t)a7 selectedSharingAudience:(unint64_t)a8 mode:(unint64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v43.receiver = self;
  v43.super_class = CNMeCardSharingPickerViewController;
  v18 = [(CNMeCardSharingPickerViewController *)&v43 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_contactStore, a3);
    v19->_sharingEnabled = a6;
    v19->_mode = a9;
    if (v16)
    {
      v20 = [v16 mutableCopy];
      draftContact = v19->_draftContact;
      v19->_draftContact = v20;
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x1E695CF18]);
      v23 = v19->_draftContact;
      v19->_draftContact = v22;

      v24 = [v17 givenName];
      [(CNMutableContact *)v19->_draftContact setGivenName:v24];

      v25 = [v17 middleName];
      [(CNMutableContact *)v19->_draftContact setMiddleName:v25];

      v26 = [v17 familyName];
      [(CNMutableContact *)v19->_draftContact setFamilyName:v26];

      v19->_shouldSetMeContact = 1;
    }

    if (a9)
    {
      +[CNMeCardSharingPickerLayoutAttributes layoutAttributesForSettings];
    }

    else
    {
      +[CNMeCardSharingPickerLayoutAttributes layoutAttributesForBuddy];
    }
    v27 = ;
    objc_storeStrong(&v19->_layoutAttributes, v27);

    v28 = [[CNMeCardSharingContactAvatarProvider alloc] initWithContact:v19->_draftContact];
    avatarProvider = v19->_avatarProvider;
    v19->_avatarProvider = v28;

    v30 = [[CNMeCardSharingAvatarViewController alloc] initWithAvatarProvider:v19->_avatarProvider];
    avatarViewController = v19->_avatarViewController;
    v19->_avatarViewController = v30;

    [(CNMeCardSharingAvatarViewController *)v19->_avatarViewController setDelegate:v19];
    v32 = [MEMORY[0x1E695DF70] array];
    if (a9 == 1)
    {
      v33 = [[CNMeCardSharingEnabledDataSource alloc] initWithSharingEnabled:v19->_sharingEnabled];
      enabledDataSource = v19->_enabledDataSource;
      v19->_enabledDataSource = v33;

      [(CNMeCardSharingEnabledDataSource *)v19->_enabledDataSource setDelegate:v19];
      [v32 addObject:v19->_enabledDataSource];
    }

    v35 = [[CNMeCardSharingAudienceDataSource alloc] initWithSelectedSharingAudience:a8];
    sharingAudienceDataSource = v19->_sharingAudienceDataSource;
    v19->_sharingAudienceDataSource = v35;

    [v32 addObject:v19->_sharingAudienceDataSource];
    v37 = [[CNMeCardSharingHeaderViewController alloc] initWithAvatarViewController:v19->_avatarViewController name:&stru_1F0CE7398 layoutAttributes:v19->_layoutAttributes];
    headerViewController = v19->_headerViewController;
    v19->_headerViewController = v37;

    v39 = [v32 copy];
    sectionDataSources = v19->_sectionDataSources;
    v19->_sectionDataSources = v39;

    v41 = v19;
  }

  return v19;
}

- (CNMeCardSharingPickerViewController)initWithContact:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v5 = [objc_opt_class() descriptorForRequiredKeys];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:v6 error:0];

  v8 = [[CNMeCardSharingContactNameProvider alloc] initWithContact:v7];
  v9 = [(CNMeCardSharingPickerViewController *)self initWithContactStore:v4 contact:v7 nameProvider:v8 sharingEnabled:0 selectedNameFormat:2 selectedSharingAudience:0 mode:1];

  return v9;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_49900 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_49900, &__block_literal_global_49901);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_49902;

  return v3;
}

void __64__CNMeCardSharingPickerViewController_descriptorForRequiredKeys__block_invoke()
{
  v11[9] = *MEMORY[0x1E69E9840];
  v0 = +[CNMeCardSharingContactNameProvider descriptorForRequiredKeys];
  v1 = +[(CNVisualIdentityPickerViewController *)CNPhotoPickerViewController];
  v2 = *MEMORY[0x1E695C278];
  v11[1] = v1;
  v11[2] = v2;
  v3 = *MEMORY[0x1E695C238];
  v11[3] = *MEMORY[0x1E695C400];
  v11[4] = v3;
  v4 = *MEMORY[0x1E695C420];
  v11[5] = *MEMORY[0x1E695C270];
  v11[6] = v4;
  v11[7] = *MEMORY[0x1E695C438];
  v5 = +[CNSNaPSetupFlowManager descriptorForRequiredKeys];
  v11[8] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:9];

  v7 = MEMORY[0x1E695CD58];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNMeCardSharingPickerViewController descriptorForRequiredKeys]_block_invoke"];
  v9 = [v7 descriptorWithKeyDescriptors:v6 description:v8];

  v10 = descriptorForRequiredKeys_cn_once_object_1_49902;
  descriptorForRequiredKeys_cn_once_object_1_49902 = v9;
}

- (unint64_t)meCardSharingStatus
{
  if (!self->_sharingEnabled)
  {
    return 0;
  }

  if ([(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedSharingAudience:v2])
  {
    return 1;
  }

  return 2;
}

- (void)setMeCardSharingStatus:(unint64_t)a3
{
  if (a3)
  {
    if (a3 == 2)
    {
      v4 = 0;
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      v4 = 1;
LABEL_6:
      v5 = 1;
      [(CNMeCardSharingEnabledDataSource *)self->_enabledDataSource setSharingEnabled:1];
      self->_sharingEnabled = 1;
      goto LABEL_9;
    }

    v5 = 0;
    v4 = 0;
    self->_sharingEnabled = 0;
  }

  else
  {
    [(CNMeCardSharingEnabledDataSource *)self->_enabledDataSource setSharingEnabled:?];
    v5 = 0;
    v4 = 0;
    self->_sharingEnabled = 0;
  }

LABEL_9:
  [(CNMeCardSharingEnabledDataSource *)self->_enabledDataSource setSharingEnabled:v5];
  sharingAudienceDataSource = self->_sharingAudienceDataSource;

  [(CNMeCardSharingAudienceDataSource *)sharingAudienceDataSource setSelectedSharingAudience:v4];
}

@end