@interface CNPosterEditOptionsViewController
- (CNPosterEditOptionsViewController)initWithContact:(id)a3 mode:(int64_t)a4;
- (CNPosterEditOptionsViewControllerDelegate)delegate;
- (id)finalizedCurrentAvatar:(id)a3 backedByRecents:(BOOL)a4;
- (id)finalizedPendingPoster;
- (id)finalizedPoster:(id)a3;
- (void)avatarPosterPairCollectionDidDeleteCurrentPosterPair;
- (void)avatarPosterPairCollectionDidDeletePosterPair;
- (void)avatarPosterPairCollectionDidEditPoster:(id)a3;
- (void)avatarPosterPairCollectionDidLoadCurrentPairWithAvatar:(id)a3 poster:(id)a4 backedByRecents:(BOOL)a5;
- (void)avatarPosterPairCollectionDidSelectAvatar:(id)a3 poster:(id)a4 selectionDidChange:(BOOL)a5 isShared:(BOOL)a6;
- (void)avatarPosterPairCollectionDidSelectCreateNew;
- (void)avatarPosterPairCollectionDidSelectEditAvatar:(id)a3;
- (void)posterEditOptionsDidCancel;
- (void)posterEditOptionsDidTapDone;
- (void)viewDidLoad;
@end

@implementation CNPosterEditOptionsViewController

- (CNPosterEditOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)finalizedPoster:(id)a3
{
  v4 = a3;
  if (v4 && (+[CNWallpaperConfigurationGenerator shared](_TtC10ContactsUI33CNWallpaperConfigurationGenerator, "shared"), v5 = objc_claimAutoreleasedReturnValue(), [v4 posterData], v6 = objc_claimAutoreleasedReturnValue(), -[CNPosterEditOptionsViewController contact](self, "contact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isCleanStatePosterData:contact:", v6, v7), v7, v6, v5, (v8 & 1) == 0))
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)finalizedCurrentAvatar:(id)a3 backedByRecents:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v5 imageData];
    v7 = [v6 copyWithNewImageData:v8];
  }

  return v7;
}

- (id)finalizedPendingPoster
{
  v3 = [(CNPosterEditOptionsViewController *)self pendingPoster];
  v4 = [(CNPosterEditOptionsViewController *)self finalizedPoster:v3];

  return v4;
}

- (void)posterEditOptionsDidTapDone
{
  v5 = [(CNPosterEditOptionsViewController *)self finalizedPendingPoster];
  v3 = [(CNPosterEditOptionsViewController *)self delegate];
  v4 = [(CNPosterEditOptionsViewController *)self pendingAvatar];
  [v3 posterEditOptionsViewController:self didSelectAvatar:v4 poster:v5];
}

- (void)posterEditOptionsDidCancel
{
  v3 = [(CNPosterEditOptionsViewController *)self delegate];
  [v3 posterEditOptionsViewControllerDidCancel:self];
}

- (void)avatarPosterPairCollectionDidSelectAvatar:(id)a3 poster:(id)a4 selectionDidChange:(BOOL)a5 isShared:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a4;
  [(CNPosterEditOptionsViewController *)self setPendingAvatar:a3];
  [(CNPosterEditOptionsViewController *)self setPendingPoster:v10];

  v11 = [(CNPosterEditOptionsViewController *)self navigationItem];
  v12 = [v11 rightBarButtonItem];
  [v12 setEnabled:v7];

  if (v6)
  {
    v13 = MEMORY[0x1E696AEC0];
    v20 = CNContactsUIBundle();
    v14 = [v20 localizedStringForKey:@"SNAP_PHOTO_BANNER_SUBTITLE_%@" value:&stru_1F0CE7398 table:@"Localized"];
    v15 = [(CNPosterEditOptionsViewController *)self contact];
    v16 = [v15 posterName];
    v17 = [v13 localizedStringWithFormat:v14, v16];
    v18 = [v17 capitalizedString];
    v19 = [(CNPosterEditOptionsViewController *)self navigationItem];
    [v19 setTitle:v18];
  }

  else
  {
    v20 = [(CNPosterEditOptionsViewController *)self navigationItem];
    [v20 setTitle:0];
  }
}

- (void)avatarPosterPairCollectionDidSelectCreateNew
{
  v3 = [(CNPosterEditOptionsViewController *)self delegate];
  [v3 posterEditOptionsViewControllerDidSelectCreateNew:self];
}

- (void)avatarPosterPairCollectionDidEditPoster:(id)a3
{
  v9 = a3;
  v4 = [(CNPosterEditOptionsViewController *)self pendingPoster];
  v5 = [(CNPosterEditOptionsViewController *)self pendingAvatar];
  v6 = [CNAvatarPosterCarouselEditingContext contextWithExistingPoster:v4 existingAvatar:v5];

  if (v9)
  {
    v7 = [CNAvatarPosterCarouselPendingPosterEdit pendingEditFromPosterConfiguration:v9];
    [v6 setPendingPosterEdit:v7];
  }

  v8 = [(CNPosterEditOptionsViewController *)self delegate];
  [v8 posterEditOptionsViewController:self didEditPosterWithContext:v6];
}

- (void)avatarPosterPairCollectionDidSelectEditAvatar:(id)a3
{
  v4 = a3;
  v5 = [(CNPosterEditOptionsViewController *)self pendingPoster];
  v7 = [CNAvatarPosterCarouselEditingContext contextWithExistingPoster:v5 existingAvatar:v4];

  v6 = [(CNPosterEditOptionsViewController *)self delegate];
  [v6 posterEditOptionsViewController:self didSelectEditAvatarWithContext:v7];
}

- (void)avatarPosterPairCollectionDidDeletePosterPair
{
  v3 = [(CNPosterEditOptionsViewController *)self delegate];
  [v3 posterEditOptionsViewControllerDidDeleteExistingPosterPair:self];
}

- (void)avatarPosterPairCollectionDidDeleteCurrentPosterPair
{
  v3 = [(CNPosterEditOptionsViewController *)self delegate];
  [v3 posterEditOptionsViewControllerDidDeleteCurrentPosterPair:self];
}

- (void)avatarPosterPairCollectionDidLoadCurrentPairWithAvatar:(id)a3 poster:(id)a4 backedByRecents:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v11 = [(CNPosterEditOptionsViewController *)self finalizedCurrentAvatar:a3 backedByRecents:v5];
  v9 = [(CNPosterEditOptionsViewController *)self finalizedCurrentPoster:v8];

  v10 = [(CNPosterEditOptionsViewController *)self delegate];
  [v10 posterEditOptionsViewController:self didLoadCurrentAvatar:v11 poster:v9 backedByRecents:v5];
}

- (void)viewDidLoad
{
  v46[4] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = CNPosterEditOptionsViewController;
  [(CNPosterEditOptionsViewController *)&v45 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v4 = [(CNPosterEditOptionsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper alloc];
  v6 = [(CNPosterEditOptionsViewController *)self configuration];
  v7 = [(CNPosterEditOptionsViewController *)self contact];
  v8 = [(CNPosterEditOptionsViewController *)self contactForSharedProfile];
  v9 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v5 initWithConfiguration:v6 contact:v7 contactForSharedProfile:v8 mode:[(CNPosterEditOptionsViewController *)self mode] delegate:self];

  v10 = v9;
  v11 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v9 viewController];
  v12 = [v11 view];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v10 viewController];
  [v13 willMoveToParentViewController:self];

  v44 = v10;
  v14 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v10 viewController];
  [(CNPosterEditOptionsViewController *)self addChildViewController:v14];

  v15 = [(CNPosterEditOptionsViewController *)self view];
  [v15 addSubview:v12];

  v16 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v10 viewController];
  [v16 didMoveToParentViewController:self];

  v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_posterEditOptionsDidCancel];
  v18 = [(CNPosterEditOptionsViewController *)self navigationItem];
  [v18 setLeftBarButtonItem:v17];

  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_posterEditOptionsDidTapDone];
  v20 = [(CNPosterEditOptionsViewController *)self navigationItem];
  [v20 setRightBarButtonItem:v19];

  v21 = [(CNPosterEditOptionsViewController *)self navigationItem];
  v22 = [v21 rightBarButtonItem];
  [v22 setEnabled:0];

  v23 = [(CNPosterEditOptionsViewController *)self navigationItem];
  [v23 _setBackgroundHidden:1];

  v35 = MEMORY[0x1E696ACD8];
  v24 = v12;
  v42 = [v12 leadingAnchor];
  v43 = [(CNPosterEditOptionsViewController *)self view];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v46[0] = v40;
  v38 = [v12 trailingAnchor];
  v39 = [(CNPosterEditOptionsViewController *)self view];
  v36 = [v39 trailingAnchor];
  v25 = [v38 constraintEqualToAnchor:v36];
  v46[1] = v25;
  v37 = v12;
  v26 = [v12 topAnchor];
  v27 = [(CNPosterEditOptionsViewController *)self view];
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];
  v46[2] = v29;
  v30 = [v24 bottomAnchor];
  v31 = [(CNPosterEditOptionsViewController *)self view];
  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v46[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
  [v35 activateConstraints:v34];
}

- (CNPosterEditOptionsViewController)initWithContact:(id)a3 mode:(int64_t)a4
{
  v7 = a3;
  v22.receiver = self;
  v22.super_class = CNPosterEditOptionsViewController;
  v8 = [(CNPosterEditOptionsViewController *)&v22 init];
  if (v8)
  {
    v9 = [_TtC10ContactsUI31CNPosterEditorViewConfiguration alloc];
    if (a4)
    {
      v10 = [v7 wallpaper];
      v11 = [v10 posterArchiveData];
      v12 = [v7 posterName];
      v13 = [(CNPosterEditorViewConfiguration *)v9 initWithPosterArchiveData:v11 displayName:v12];
      configuration = v8->_configuration;
      v8->_configuration = v13;
    }

    else
    {
      v10 = [v7 imageData];
      v11 = [v7 posterName];
      v15 = [(CNPosterEditorViewConfiguration *)v9 initWithImageData:v10 displayName:v11];
      v12 = v8->_configuration;
      v8->_configuration = v15;
    }

    objc_storeStrong(&v8->_contact, a3);
    v16 = [MEMORY[0x1E69966E8] currentEnvironment];
    v17 = [v16 nicknameProvider];
    v18 = [v17 nicknameAsContactForContact:v7];
    contactForSharedProfile = v8->_contactForSharedProfile;
    v8->_contactForSharedProfile = v18;

    v8->_mode = a4;
    v20 = v8;
  }

  return v8;
}

@end