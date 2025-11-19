@interface SHUIService
- (SHMediaItemPresenter)mediaItemPresenter;
- (SHMediaLibraryPresenter)mediaLibraryPresenter;
- (SHServiceDelegate)serviceDelegate;
- (id)initBundleIdentifier:(id)a3;
- (id)santizeMediaItem:(id)a3;
- (void)presentMediaItem:(id)a3 completionHandler:(id)a4;
- (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5;
- (void)presentMediaLibraryWithCompletionHandler:(id)a3;
@end

@implementation SHUIService

- (id)initBundleIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHUIService;
  v6 = [(SHUIService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
  }

  return v7;
}

- (void)presentMediaItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(SHUIService *)self mediaItemPresenter];
  v8 = [(SHUIService *)self santizeMediaItem:v7];

  [v9 presentMediaItem:v8 completionHandler:v6];
}

- (id)santizeMediaItem:(id)a3
{
  v3 = a3;
  v4 = [v3 genres];
  v5 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v3 properties];
    v8 = [v7 mutableCopy];

    [v8 setObject:0 forKeyedSubscript:SHMediaItemGenres];
    v9 = [v8 copy];
    v10 = [SHMediaItem mediaItemWithProperties:v9];
  }

  else
  {
    v10 = v3;
  }

  return v10;
}

- (void)presentMediaItem:(id)a3 presentationSettings:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SHUIService *)self mediaItemPresenter];
  [v11 presentMediaItem:v10 presentationSettings:v9 completionHandler:v8];
}

- (void)presentMediaLibraryWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SHUIService *)self mediaLibraryPresenter];
  [v5 presentMediaLibraryWithCompletionHandler:v4];
}

- (SHMediaItemPresenter)mediaItemPresenter
{
  mediaItemPresenter = self->_mediaItemPresenter;
  if (!mediaItemPresenter)
  {
    v4 = [SHMediaItemPresenter alloc];
    v5 = [(SHUIService *)self bundleIdentifier];
    v6 = [(SHMediaItemPresenter *)v4 initBundleIdentifier:v5];
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
    v5 = [(SHUIService *)self bundleIdentifier];
    v6 = [(SHMediaLibraryPresenter *)v4 initWithBundleIdentifier:v5];
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