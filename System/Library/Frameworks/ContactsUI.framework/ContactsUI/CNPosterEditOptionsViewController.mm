@interface CNPosterEditOptionsViewController
- (CNPosterEditOptionsViewController)initWithContact:(id)contact mode:(int64_t)mode;
- (CNPosterEditOptionsViewControllerDelegate)delegate;
- (id)finalizedCurrentAvatar:(id)avatar backedByRecents:(BOOL)recents;
- (id)finalizedPendingPoster;
- (id)finalizedPoster:(id)poster;
- (void)avatarPosterPairCollectionDidDeleteCurrentPosterPair;
- (void)avatarPosterPairCollectionDidDeletePosterPair;
- (void)avatarPosterPairCollectionDidEditPoster:(id)poster;
- (void)avatarPosterPairCollectionDidLoadCurrentPairWithAvatar:(id)avatar poster:(id)poster backedByRecents:(BOOL)recents;
- (void)avatarPosterPairCollectionDidSelectAvatar:(id)avatar poster:(id)poster selectionDidChange:(BOOL)change isShared:(BOOL)shared;
- (void)avatarPosterPairCollectionDidSelectCreateNew;
- (void)avatarPosterPairCollectionDidSelectEditAvatar:(id)avatar;
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

- (id)finalizedPoster:(id)poster
{
  posterCopy = poster;
  if (posterCopy && (+[CNWallpaperConfigurationGenerator shared](_TtC10ContactsUI33CNWallpaperConfigurationGenerator, "shared"), v5 = objc_claimAutoreleasedReturnValue(), [posterCopy posterData], v6 = objc_claimAutoreleasedReturnValue(), -[CNPosterEditOptionsViewController contact](self, "contact"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v5, "isCleanStatePosterData:contact:", v6, v7), v7, v6, v5, (v8 & 1) == 0))
  {
    v9 = posterCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)finalizedCurrentAvatar:(id)avatar backedByRecents:(BOOL)recents
{
  avatarCopy = avatar;
  v6 = avatarCopy;
  if (recents)
  {
    v7 = avatarCopy;
  }

  else
  {
    imageData = [avatarCopy imageData];
    v7 = [v6 copyWithNewImageData:imageData];
  }

  return v7;
}

- (id)finalizedPendingPoster
{
  pendingPoster = [(CNPosterEditOptionsViewController *)self pendingPoster];
  v4 = [(CNPosterEditOptionsViewController *)self finalizedPoster:pendingPoster];

  return v4;
}

- (void)posterEditOptionsDidTapDone
{
  finalizedPendingPoster = [(CNPosterEditOptionsViewController *)self finalizedPendingPoster];
  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  pendingAvatar = [(CNPosterEditOptionsViewController *)self pendingAvatar];
  [delegate posterEditOptionsViewController:self didSelectAvatar:pendingAvatar poster:finalizedPendingPoster];
}

- (void)posterEditOptionsDidCancel
{
  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewControllerDidCancel:self];
}

- (void)avatarPosterPairCollectionDidSelectAvatar:(id)avatar poster:(id)poster selectionDidChange:(BOOL)change isShared:(BOOL)shared
{
  sharedCopy = shared;
  changeCopy = change;
  posterCopy = poster;
  [(CNPosterEditOptionsViewController *)self setPendingAvatar:avatar];
  [(CNPosterEditOptionsViewController *)self setPendingPoster:posterCopy];

  navigationItem = [(CNPosterEditOptionsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:changeCopy];

  if (sharedCopy)
  {
    v13 = MEMORY[0x1E696AEC0];
    navigationItem3 = CNContactsUIBundle();
    v14 = [navigationItem3 localizedStringForKey:@"SNAP_PHOTO_BANNER_SUBTITLE_%@" value:&stru_1F0CE7398 table:@"Localized"];
    contact = [(CNPosterEditOptionsViewController *)self contact];
    posterName = [contact posterName];
    v17 = [v13 localizedStringWithFormat:v14, posterName];
    capitalizedString = [v17 capitalizedString];
    navigationItem2 = [(CNPosterEditOptionsViewController *)self navigationItem];
    [navigationItem2 setTitle:capitalizedString];
  }

  else
  {
    navigationItem3 = [(CNPosterEditOptionsViewController *)self navigationItem];
    [navigationItem3 setTitle:0];
  }
}

- (void)avatarPosterPairCollectionDidSelectCreateNew
{
  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewControllerDidSelectCreateNew:self];
}

- (void)avatarPosterPairCollectionDidEditPoster:(id)poster
{
  posterCopy = poster;
  pendingPoster = [(CNPosterEditOptionsViewController *)self pendingPoster];
  pendingAvatar = [(CNPosterEditOptionsViewController *)self pendingAvatar];
  v6 = [CNAvatarPosterCarouselEditingContext contextWithExistingPoster:pendingPoster existingAvatar:pendingAvatar];

  if (posterCopy)
  {
    v7 = [CNAvatarPosterCarouselPendingPosterEdit pendingEditFromPosterConfiguration:posterCopy];
    [v6 setPendingPosterEdit:v7];
  }

  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewController:self didEditPosterWithContext:v6];
}

- (void)avatarPosterPairCollectionDidSelectEditAvatar:(id)avatar
{
  avatarCopy = avatar;
  pendingPoster = [(CNPosterEditOptionsViewController *)self pendingPoster];
  v7 = [CNAvatarPosterCarouselEditingContext contextWithExistingPoster:pendingPoster existingAvatar:avatarCopy];

  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewController:self didSelectEditAvatarWithContext:v7];
}

- (void)avatarPosterPairCollectionDidDeletePosterPair
{
  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewControllerDidDeleteExistingPosterPair:self];
}

- (void)avatarPosterPairCollectionDidDeleteCurrentPosterPair
{
  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewControllerDidDeleteCurrentPosterPair:self];
}

- (void)avatarPosterPairCollectionDidLoadCurrentPairWithAvatar:(id)avatar poster:(id)poster backedByRecents:(BOOL)recents
{
  recentsCopy = recents;
  posterCopy = poster;
  v11 = [(CNPosterEditOptionsViewController *)self finalizedCurrentAvatar:avatar backedByRecents:recentsCopy];
  v9 = [(CNPosterEditOptionsViewController *)self finalizedCurrentPoster:posterCopy];

  delegate = [(CNPosterEditOptionsViewController *)self delegate];
  [delegate posterEditOptionsViewController:self didLoadCurrentAvatar:v11 poster:v9 backedByRecents:recentsCopy];
}

- (void)viewDidLoad
{
  v46[4] = *MEMORY[0x1E69E9840];
  v45.receiver = self;
  v45.super_class = CNPosterEditOptionsViewController;
  [(CNPosterEditOptionsViewController *)&v45 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  view = [(CNPosterEditOptionsViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [_TtC10ContactsUI49CNAvatarPosterPairCollectionViewControllerWrapper alloc];
  configuration = [(CNPosterEditOptionsViewController *)self configuration];
  contact = [(CNPosterEditOptionsViewController *)self contact];
  contactForSharedProfile = [(CNPosterEditOptionsViewController *)self contactForSharedProfile];
  v9 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v5 initWithConfiguration:configuration contact:contact contactForSharedProfile:contactForSharedProfile mode:[(CNPosterEditOptionsViewController *)self mode] delegate:self];

  v10 = v9;
  viewController = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v9 viewController];
  view2 = [viewController view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  viewController2 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v10 viewController];
  [viewController2 willMoveToParentViewController:self];

  v44 = v10;
  viewController3 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v10 viewController];
  [(CNPosterEditOptionsViewController *)self addChildViewController:viewController3];

  view3 = [(CNPosterEditOptionsViewController *)self view];
  [view3 addSubview:view2];

  viewController4 = [(CNAvatarPosterPairCollectionViewControllerWrapper *)v10 viewController];
  [viewController4 didMoveToParentViewController:self];

  v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_posterEditOptionsDidCancel];
  navigationItem = [(CNPosterEditOptionsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v17];

  v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_posterEditOptionsDidTapDone];
  navigationItem2 = [(CNPosterEditOptionsViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v19];

  navigationItem3 = [(CNPosterEditOptionsViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  navigationItem4 = [(CNPosterEditOptionsViewController *)self navigationItem];
  [navigationItem4 _setBackgroundHidden:1];

  v35 = MEMORY[0x1E696ACD8];
  v24 = view2;
  leadingAnchor = [view2 leadingAnchor];
  view4 = [(CNPosterEditOptionsViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v46[0] = v40;
  trailingAnchor = [view2 trailingAnchor];
  view5 = [(CNPosterEditOptionsViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v46[1] = v25;
  v37 = view2;
  topAnchor = [view2 topAnchor];
  view6 = [(CNPosterEditOptionsViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[2] = v29;
  bottomAnchor = [v24 bottomAnchor];
  view7 = [(CNPosterEditOptionsViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[3] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
  [v35 activateConstraints:v34];
}

- (CNPosterEditOptionsViewController)initWithContact:(id)contact mode:(int64_t)mode
{
  contactCopy = contact;
  v22.receiver = self;
  v22.super_class = CNPosterEditOptionsViewController;
  v8 = [(CNPosterEditOptionsViewController *)&v22 init];
  if (v8)
  {
    v9 = [_TtC10ContactsUI31CNPosterEditorViewConfiguration alloc];
    if (mode)
    {
      wallpaper = [contactCopy wallpaper];
      posterArchiveData = [wallpaper posterArchiveData];
      posterName = [contactCopy posterName];
      v13 = [(CNPosterEditorViewConfiguration *)v9 initWithPosterArchiveData:posterArchiveData displayName:posterName];
      configuration = v8->_configuration;
      v8->_configuration = v13;
    }

    else
    {
      wallpaper = [contactCopy imageData];
      posterArchiveData = [contactCopy posterName];
      v15 = [(CNPosterEditorViewConfiguration *)v9 initWithImageData:wallpaper displayName:posterArchiveData];
      posterName = v8->_configuration;
      v8->_configuration = v15;
    }

    objc_storeStrong(&v8->_contact, contact);
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment nicknameProvider];
    v18 = [nicknameProvider nicknameAsContactForContact:contactCopy];
    contactForSharedProfile = v8->_contactForSharedProfile;
    v8->_contactForSharedProfile = v18;

    v8->_mode = mode;
    v20 = v8;
  }

  return v8;
}

@end