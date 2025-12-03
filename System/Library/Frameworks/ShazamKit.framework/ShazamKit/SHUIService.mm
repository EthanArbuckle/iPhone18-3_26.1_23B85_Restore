@interface SHUIService
- (SHMediaItemPresenter)mediaItemPresenter;
- (SHMediaLibraryPresenter)mediaLibraryPresenter;
- (SHServiceDelegate)serviceDelegate;
- (id)initBundleIdentifier:(id)identifier;
- (id)santizeMediaItem:(id)item;
- (void)presentMediaItem:(id)item completionHandler:(id)handler;
- (void)presentMediaItem:(id)item presentationSettings:(id)settings completionHandler:(id)handler;
- (void)presentMediaLibraryWithCompletionHandler:(id)handler;
@end

@implementation SHUIService

- (id)initBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SHUIService;
  v6 = [(SHUIService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

- (void)presentMediaItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  mediaItemPresenter = [(SHUIService *)self mediaItemPresenter];
  v8 = [(SHUIService *)self santizeMediaItem:itemCopy];

  [mediaItemPresenter presentMediaItem:v8 completionHandler:handlerCopy];
}

- (id)santizeMediaItem:(id)item
{
  itemCopy = item;
  genres = [itemCopy genres];
  firstObject = [genres firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    properties = [itemCopy properties];
    v8 = [properties mutableCopy];

    [v8 setObject:0 forKeyedSubscript:SHMediaItemGenres];
    v9 = [v8 copy];
    v10 = [SHMediaItem mediaItemWithProperties:v9];
  }

  else
  {
    v10 = itemCopy;
  }

  return v10;
}

- (void)presentMediaItem:(id)item presentationSettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  itemCopy = item;
  mediaItemPresenter = [(SHUIService *)self mediaItemPresenter];
  [mediaItemPresenter presentMediaItem:itemCopy presentationSettings:settingsCopy completionHandler:handlerCopy];
}

- (void)presentMediaLibraryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mediaLibraryPresenter = [(SHUIService *)self mediaLibraryPresenter];
  [mediaLibraryPresenter presentMediaLibraryWithCompletionHandler:handlerCopy];
}

- (SHMediaItemPresenter)mediaItemPresenter
{
  mediaItemPresenter = self->_mediaItemPresenter;
  if (!mediaItemPresenter)
  {
    v4 = [SHMediaItemPresenter alloc];
    bundleIdentifier = [(SHUIService *)self bundleIdentifier];
    v6 = [(SHMediaItemPresenter *)v4 initBundleIdentifier:bundleIdentifier];
    v7 = self->_mediaItemPresenter;
    self->_mediaItemPresenter = v6;

    mediaItemPresenter = self->_mediaItemPresenter;
  }

  return mediaItemPresenter;
}

- (SHMediaLibraryPresenter)mediaLibraryPresenter
{
  mediaLibraryPresenter = self->_mediaLibraryPresenter;
  if (!mediaLibraryPresenter)
  {
    v4 = [SHMediaLibraryPresenter alloc];
    bundleIdentifier = [(SHUIService *)self bundleIdentifier];
    v6 = [(SHMediaLibraryPresenter *)v4 initWithBundleIdentifier:bundleIdentifier];
    v7 = self->_mediaLibraryPresenter;
    self->_mediaLibraryPresenter = v6;

    mediaLibraryPresenter = self->_mediaLibraryPresenter;
  }

  return mediaLibraryPresenter;
}

- (SHServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

@end