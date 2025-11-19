@interface _MKUserLocationViewImageProvider
- (_MKUserLocationViewImageProvider)init;
- (_MKUserLocationViewImageProvider)initWithUserLocationView:(id)a3;
- (id)_monogrammer;
- (void)_contactsChanged:(id)a3;
- (void)_updateContactImage;
- (void)_updateDefaultImage;
- (void)_updateImage;
@end

@implementation _MKUserLocationViewImageProvider

- (void)_updateImage
{
  v3 = [MEMORY[0x1E695CE18] _mapkit_isAuthorized];
  v4 = MKGetUserLocationViewLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Process is authorized for Contacts access", buf, 2u);
    }

    [(_MKUserLocationViewImageProvider *)self _updateContactImage];
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "Process is not authorized for Contacts access. Using default silhouette", v6, 2u);
    }

    [(_MKUserLocationViewImageProvider *)self _updateDefaultImage];
  }
}

- (void)_updateDefaultImage
{
  v3 = [(_MKUserLocationViewImageProvider *)self _monogrammer];
  v4 = [v3 silhouetteMonogram];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55___MKUserLocationViewImageProvider__updateDefaultImage__block_invoke;
  v6[3] = &unk_1E76CD810;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_updateContactImage
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!self->_contactStore)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
    contactStore = self->_contactStore;
    self->_contactStore = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__contactsChanged_ name:*MEMORY[0x1E695C3D8] object:self->_contactStore];
  }

  v6 = [getCNMonogrammerClass() descriptorForRequiredKeysIncludingImage:1];
  v7 = self->_contactStore;
  v21[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v9 = [(CNContactStore *)v7 _crossPlatformUnifiedMeContactWithKeysToFetch:v8 error:0];

  if (v9)
  {
    v18 = 0;
    v10 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_INFO, "Generating monogram for contact: %@", buf, 0xCu);
    }

    v11 = [(_MKUserLocationViewImageProvider *)self _monogrammer];
    v12 = [v11 monogramForContact:v9 isContactImage:&v18];

    if (v12)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55___MKUserLocationViewImageProvider__updateContactImage__block_invoke;
      block[3] = &unk_1E76CA618;
      block[4] = self;
      v16 = v12;
      v17 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v14 = MKGetUserLocationViewLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v14, OS_LOG_TYPE_INFO, "Fetching contact monogram returned nil. Using default silhouette", buf, 2u);
      }

      [(_MKUserLocationViewImageProvider *)self _updateDefaultImage];
    }
  }

  else
  {
    v13 = MKGetUserLocationViewLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_INFO, "Fetching 'Me' contact returned nil. Using default silhouette", buf, 2u);
    }

    [(_MKUserLocationViewImageProvider *)self _updateDefaultImage];
  }
}

- (id)_monogrammer
{
  monogrammer = self->_monogrammer;
  if (!monogrammer)
  {
    v4 = [objc_alloc(getCNMonogrammerClass()) initWithStyle:0 diameter:*&_MKBalloonCalloutInnerDiameter];
    v5 = self->_monogrammer;
    self->_monogrammer = v4;

    monogrammer = self->_monogrammer;
  }

  return monogrammer;
}

- (void)_contactsChanged:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___MKUserLocationViewImageProvider__contactsChanged___block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (_MKUserLocationViewImageProvider)initWithUserLocationView:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _MKUserLocationViewImageProvider;
  v5 = [(_MKUserLocationViewImageProvider *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
    v7 = geo_dispatch_queue_create_with_qos();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = v6->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61___MKUserLocationViewImageProvider_initWithUserLocationView___block_invoke;
    block[3] = &unk_1E76CDB38;
    v10 = v6;
    v14 = v10;
    dispatch_async(v9, block);
    v11 = v10;
  }

  return v6;
}

- (_MKUserLocationViewImageProvider)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end