@interface CNAvatarViewController_LegacyAvatarView
- (CNAvatarView)avatarView;
- (CNAvatarViewController_LegacyAvatarView)initWithSettings:(id)a3;
- (NSObject)delegate;
- (id)descriptorForRequiredKeys;
- (id)presentingViewControllerForAvatarView:(id)a3;
- (void)didUpdateContentForAvatarView:(id)a3;
- (void)loadView;
- (void)setAllowStaleRendering:(BOOL)a3;
- (void)setContacts:(id)a3;
- (void)setThreeDTouchEnabled:(BOOL)a3;
- (void)updateViewWithGroupIdentity:(id)a3;
@end

@implementation CNAvatarViewController_LegacyAvatarView

- (CNAvatarView)avatarView
{
  WeakRetained = objc_loadWeakRetained(&self->_avatarView);

  return WeakRetained;
}

- (void)loadView
{
  v3 = [CNAvatarView alloc];
  v4 = [(CNAvatarViewController_LegacyAvatarView *)self imageRenderer];
  v5 = [(CNAvatarViewController_LegacyAvatarView *)self isThreeDTouchEnabled];
  v6 = [(CNAvatarViewController_LegacyAvatarView *)self contactStore];
  v7 = [(CNAvatarViewController_LegacyAvatarView *)self style];
  v8 = [(CNAvatarViewController_LegacyAvatarView *)self schedulerProvider];
  v13 = [(CNAvatarView *)v3 initWithImageRenderer:v4 threeDTouchEnabled:v5 contactStore:v6 style:v7 schedulerProvider:v8 backgroundStyle:0 personaId:self->_personaId];

  [(CNAvatarViewController_LegacyAvatarView *)self setView:v13];
  [(CNAvatarViewController_LegacyAvatarView *)self setAvatarView:v13];
  v9 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
  [v9 setDelegate:self];

  v10 = [(CNAvatarViewController_LegacyAvatarView *)self contacts];

  if (v10)
  {
    v11 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
    v12 = [(CNAvatarViewController_LegacyAvatarView *)self contacts];
    [v11 setContacts:v12];
  }
}

- (NSObject)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didUpdateContentForAvatarView:(id)a3
{
  v4 = [(CNAvatarViewController_LegacyAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNAvatarViewController_LegacyAvatarView *)self delegate];
    [v6 didUpdateContentForAvatarViewController:self];
  }
}

- (id)presentingViewControllerForAvatarView:(id)a3
{
  v4 = [(CNAvatarViewController *)self objectViewControllerDelegate];
  v5 = [v4 hostingViewControllerForController:self];

  if (!v5)
  {
    v5 = self;
  }

  return v5;
}

- (void)setContacts:(id)a3
{
  v9 = a3;
  v4 = [v9 copy];
  contacts = self->_contacts;
  self->_contacts = v4;

  v7 = v9;
  if (v9)
  {
    v6 = [(CNAvatarViewController_LegacyAvatarView *)self isViewLoaded];
    v7 = v9;
    if (v6)
    {
      v8 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
      [v8 setContacts:v9];

      v7 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (void)setAllowStaleRendering:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
  [v4 setAllowStaleRendering:v3];
}

- (void)updateViewWithGroupIdentity:(id)a3
{
  v6 = a3;
  v4 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
  v5 = [v4 updateViewWithGroupIdentity:v6];
}

- (void)setThreeDTouchEnabled:(BOOL)a3
{
  if (self->_threeDTouchEnabled != a3)
  {
    v4 = a3;
    self->_threeDTouchEnabled = a3;
    v5 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
    [v5 setThreeDTouchEnabled:v4];
  }
}

- (CNAvatarViewController_LegacyAvatarView)initWithSettings:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CNAvatarViewController_LegacyAvatarView;
  v5 = [(CNAvatarViewController *)&v13 initWithSettings:v4];
  if (v5)
  {
    v6 = [v4 likenessRenderer];
    imageRenderer = v5->_imageRenderer;
    v5->_imageRenderer = v6;

    v5->_threeDTouchEnabled = [v4 threeDTouchEnabled];
    v8 = [v4 schedulerProvider];
    schedulerProvider = v5->_schedulerProvider;
    v5->_schedulerProvider = v8;

    v5->_personaId = [v4 personaId];
    v5->_style = [v4 style];
    v10 = [v4 contactStore];
    contactStore = v5->_contactStore;
    v5->_contactStore = v10;
  }

  return v5;
}

- (id)descriptorForRequiredKeys
{
  v2 = [(CNAvatarViewController_LegacyAvatarView *)self isThreeDTouchEnabled];

  return [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:v2];
}

@end