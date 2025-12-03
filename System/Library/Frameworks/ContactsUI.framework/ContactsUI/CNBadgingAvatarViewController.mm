@interface CNBadgingAvatarViewController
- (CNBadgingAvatarViewController)init;
- (CNBadgingAvatarViewController)initWithSettings:(id)settings;
- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate;
- (NSArray)contacts;
- (UIView)view;
- (id)descriptorForRequiredKeys;
- (id)hostingViewControllerForController:(id)controller;
- (void)setBadgeImage:(id)image;
- (void)setBadgeStyleSettings:(id)settings;
- (void)setContacts:(id)contacts;
- (void)setupContainerViewIfNeeded;
@end

@implementation CNBadgingAvatarViewController

- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->objectViewControllerDelegate);

  return WeakRetained;
}

- (id)hostingViewControllerForController:(id)controller
{
  objectViewControllerDelegate = [(CNBadgingAvatarViewController *)self objectViewControllerDelegate];
  v5 = [objectViewControllerDelegate hostingViewControllerForController:self];

  return v5;
}

- (void)setBadgeStyleSettings:(id)settings
{
  objc_storeStrong(&self->_badgeStyleSettings, settings);
  settingsCopy = settings;
  badgingAvatarView = [(CNBadgingAvatarViewController *)self badgingAvatarView];
  [badgingAvatarView setBadgeStyleSettings:settingsCopy];
}

- (void)setBadgeImage:(id)image
{
  objc_storeStrong(&self->_badgeImage, image);
  imageCopy = image;
  badgingAvatarView = [(CNBadgingAvatarViewController *)self badgingAvatarView];
  [badgingAvatarView setBadgeImage:imageCopy];
}

- (void)setupContainerViewIfNeeded
{
  containerView = [(CNBadgingAvatarViewController *)self containerView];

  if (!containerView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNBadgingAvatarViewController *)self setContainerView:v5];

    containerView2 = [(CNBadgingAvatarViewController *)self containerView];
    badgingAvatarView = [(CNBadgingAvatarViewController *)self badgingAvatarView];
    [containerView2 addSubview:badgingAvatarView];

    containerView3 = [(CNBadgingAvatarViewController *)self containerView];
    [containerView3 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    badgingAvatarView2 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
    [badgingAvatarView2 setFrame:{v10, v12, v14, v16}];

    badgingAvatarView3 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
    [badgingAvatarView3 setAutoresizingMask:18];
  }
}

- (UIView)view
{
  [(CNBadgingAvatarViewController *)self setupContainerViewIfNeeded];

  return [(CNBadgingAvatarViewController *)self containerView];
}

- (NSArray)contacts
{
  avatarViewController = [(CNBadgingAvatarViewController *)self avatarViewController];
  contacts = [avatarViewController contacts];

  return contacts;
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  avatarViewController = [(CNBadgingAvatarViewController *)self avatarViewController];
  [avatarViewController setContacts:contactsCopy];
}

- (CNBadgingAvatarViewController)init
{
  v3 = +[CNAvatarViewControllerSettings defaultSettings];
  v4 = [(CNBadgingAvatarViewController *)self initWithSettings:v3];

  return v4;
}

- (CNBadgingAvatarViewController)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v12.receiver = self;
  v12.super_class = CNBadgingAvatarViewController;
  v5 = [(CNBadgingAvatarViewController *)&v12 init];
  if (v5)
  {
    v6 = [[CNAvatarViewController alloc] initWithSettings:settingsCopy];
    avatarViewController = v5->_avatarViewController;
    v5->_avatarViewController = v6;

    [(CNAvatarViewController *)v5->_avatarViewController setObjectViewControllerDelegate:v5];
    v8 = [[CNBadgingAvatarView alloc] initWithAvatarViewController:v5->_avatarViewController];
    badgingAvatarView = v5->_badgingAvatarView;
    v5->_badgingAvatarView = v8;

    v10 = v5;
  }

  return v5;
}

- (id)descriptorForRequiredKeys
{
  avatarViewController = [(CNBadgingAvatarViewController *)self avatarViewController];

  if (!avatarViewController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNBadgingAvatarViewController.m" lineNumber:336 description:@"CNBadgingAvatarViewController - Avatar View Controller required to get descriptorsForRequiredKeys"];
  }

  avatarViewController2 = [(CNBadgingAvatarViewController *)self avatarViewController];
  descriptorForRequiredKeys = [avatarViewController2 descriptorForRequiredKeys];

  return descriptorForRequiredKeys;
}

@end