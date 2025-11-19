@interface CNBadgingAvatarViewController
- (CNBadgingAvatarViewController)init;
- (CNBadgingAvatarViewController)initWithSettings:(id)a3;
- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate;
- (NSArray)contacts;
- (UIView)view;
- (id)descriptorForRequiredKeys;
- (id)hostingViewControllerForController:(id)a3;
- (void)setBadgeImage:(id)a3;
- (void)setBadgeStyleSettings:(id)a3;
- (void)setContacts:(id)a3;
- (void)setupContainerViewIfNeeded;
@end

@implementation CNBadgingAvatarViewController

- (CNUIObjectViewControllerDelegate)objectViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->objectViewControllerDelegate);

  return WeakRetained;
}

- (id)hostingViewControllerForController:(id)a3
{
  v4 = [(CNBadgingAvatarViewController *)self objectViewControllerDelegate];
  v5 = [v4 hostingViewControllerForController:self];

  return v5;
}

- (void)setBadgeStyleSettings:(id)a3
{
  objc_storeStrong(&self->_badgeStyleSettings, a3);
  v5 = a3;
  v6 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
  [v6 setBadgeStyleSettings:v5];
}

- (void)setBadgeImage:(id)a3
{
  objc_storeStrong(&self->_badgeImage, a3);
  v5 = a3;
  v6 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
  [v6 setBadgeImage:v5];
}

- (void)setupContainerViewIfNeeded
{
  v3 = [(CNBadgingAvatarViewController *)self containerView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNBadgingAvatarViewController *)self setContainerView:v5];

    v6 = [(CNBadgingAvatarViewController *)self containerView];
    v7 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
    [v6 addSubview:v7];

    v8 = [(CNBadgingAvatarViewController *)self containerView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
    [v17 setFrame:{v10, v12, v14, v16}];

    v18 = [(CNBadgingAvatarViewController *)self badgingAvatarView];
    [v18 setAutoresizingMask:18];
  }
}

- (UIView)view
{
  [(CNBadgingAvatarViewController *)self setupContainerViewIfNeeded];

  return [(CNBadgingAvatarViewController *)self containerView];
}

- (NSArray)contacts
{
  v2 = [(CNBadgingAvatarViewController *)self avatarViewController];
  v3 = [v2 contacts];

  return v3;
}

- (void)setContacts:(id)a3
{
  v4 = a3;
  v5 = [(CNBadgingAvatarViewController *)self avatarViewController];
  [v5 setContacts:v4];
}

- (CNBadgingAvatarViewController)init
{
  v3 = +[CNAvatarViewControllerSettings defaultSettings];
  v4 = [(CNBadgingAvatarViewController *)self initWithSettings:v3];

  return v4;
}

- (CNBadgingAvatarViewController)initWithSettings:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNBadgingAvatarViewController;
  v5 = [(CNBadgingAvatarViewController *)&v12 init];
  if (v5)
  {
    v6 = [[CNAvatarViewController alloc] initWithSettings:v4];
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
  v4 = [(CNBadgingAvatarViewController *)self avatarViewController];

  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"CNBadgingAvatarViewController.m" lineNumber:336 description:@"CNBadgingAvatarViewController - Avatar View Controller required to get descriptorsForRequiredKeys"];
  }

  v5 = [(CNBadgingAvatarViewController *)self avatarViewController];
  v6 = [v5 descriptorForRequiredKeys];

  return v6;
}

@end