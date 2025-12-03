@interface CNAvatarViewController_LegacyAvatarView
- (CNAvatarView)avatarView;
- (CNAvatarViewController_LegacyAvatarView)initWithSettings:(id)settings;
- (NSObject)delegate;
- (id)descriptorForRequiredKeys;
- (id)presentingViewControllerForAvatarView:(id)view;
- (void)didUpdateContentForAvatarView:(id)view;
- (void)loadView;
- (void)setAllowStaleRendering:(BOOL)rendering;
- (void)setContacts:(id)contacts;
- (void)setThreeDTouchEnabled:(BOOL)enabled;
- (void)updateViewWithGroupIdentity:(id)identity;
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
  imageRenderer = [(CNAvatarViewController_LegacyAvatarView *)self imageRenderer];
  isThreeDTouchEnabled = [(CNAvatarViewController_LegacyAvatarView *)self isThreeDTouchEnabled];
  contactStore = [(CNAvatarViewController_LegacyAvatarView *)self contactStore];
  style = [(CNAvatarViewController_LegacyAvatarView *)self style];
  schedulerProvider = [(CNAvatarViewController_LegacyAvatarView *)self schedulerProvider];
  v13 = [(CNAvatarView *)v3 initWithImageRenderer:imageRenderer threeDTouchEnabled:isThreeDTouchEnabled contactStore:contactStore style:style schedulerProvider:schedulerProvider backgroundStyle:0 personaId:self->_personaId];

  [(CNAvatarViewController_LegacyAvatarView *)self setView:v13];
  [(CNAvatarViewController_LegacyAvatarView *)self setAvatarView:v13];
  avatarView = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
  [avatarView setDelegate:self];

  contacts = [(CNAvatarViewController_LegacyAvatarView *)self contacts];

  if (contacts)
  {
    avatarView2 = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
    contacts2 = [(CNAvatarViewController_LegacyAvatarView *)self contacts];
    [avatarView2 setContacts:contacts2];
  }
}

- (NSObject)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didUpdateContentForAvatarView:(id)view
{
  delegate = [(CNAvatarViewController_LegacyAvatarView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNAvatarViewController_LegacyAvatarView *)self delegate];
    [delegate2 didUpdateContentForAvatarViewController:self];
  }
}

- (id)presentingViewControllerForAvatarView:(id)view
{
  objectViewControllerDelegate = [(CNAvatarViewController *)self objectViewControllerDelegate];
  selfCopy = [objectViewControllerDelegate hostingViewControllerForController:self];

  if (!selfCopy)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = [contactsCopy copy];
  contacts = self->_contacts;
  self->_contacts = v4;

  v7 = contactsCopy;
  if (contactsCopy)
  {
    isViewLoaded = [(CNAvatarViewController_LegacyAvatarView *)self isViewLoaded];
    v7 = contactsCopy;
    if (isViewLoaded)
    {
      avatarView = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
      [avatarView setContacts:contactsCopy];

      v7 = contactsCopy;
    }
  }

  MEMORY[0x1EEE66BB8](isViewLoaded, v7);
}

- (void)setAllowStaleRendering:(BOOL)rendering
{
  renderingCopy = rendering;
  avatarView = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
  [avatarView setAllowStaleRendering:renderingCopy];
}

- (void)updateViewWithGroupIdentity:(id)identity
{
  identityCopy = identity;
  avatarView = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
  v5 = [avatarView updateViewWithGroupIdentity:identityCopy];
}

- (void)setThreeDTouchEnabled:(BOOL)enabled
{
  if (self->_threeDTouchEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_threeDTouchEnabled = enabled;
    avatarView = [(CNAvatarViewController_LegacyAvatarView *)self avatarView];
    [avatarView setThreeDTouchEnabled:enabledCopy];
  }
}

- (CNAvatarViewController_LegacyAvatarView)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v13.receiver = self;
  v13.super_class = CNAvatarViewController_LegacyAvatarView;
  v5 = [(CNAvatarViewController *)&v13 initWithSettings:settingsCopy];
  if (v5)
  {
    likenessRenderer = [settingsCopy likenessRenderer];
    imageRenderer = v5->_imageRenderer;
    v5->_imageRenderer = likenessRenderer;

    v5->_threeDTouchEnabled = [settingsCopy threeDTouchEnabled];
    schedulerProvider = [settingsCopy schedulerProvider];
    schedulerProvider = v5->_schedulerProvider;
    v5->_schedulerProvider = schedulerProvider;

    v5->_personaId = [settingsCopy personaId];
    v5->_style = [settingsCopy style];
    contactStore = [settingsCopy contactStore];
    contactStore = v5->_contactStore;
    v5->_contactStore = contactStore;
  }

  return v5;
}

- (id)descriptorForRequiredKeys
{
  isThreeDTouchEnabled = [(CNAvatarViewController_LegacyAvatarView *)self isThreeDTouchEnabled];

  return [CNAvatarView descriptorForRequiredKeysWithThreeDTouchEnabled:isThreeDTouchEnabled];
}

@end