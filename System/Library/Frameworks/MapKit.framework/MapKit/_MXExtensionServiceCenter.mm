@interface _MXExtensionServiceCenter
- (NSDictionary)containingAppProxies;
- (NSDictionary)extensions;
- (NSDictionary)mapsExtensions;
- (_MXExtensionProvider)extensionProvider;
- (_MXExtensionServiceCenter)initWithExtensionProvider:(id)a3;
- (id)_extensionWithIdentifier:(id)a3;
- (id)_siblingExtensionsWithContainingAppIdentifer:(id)a3;
- (id)allExtensions;
- (void)receivedExtensions:(id)a3 error:(id)a4;
- (void)setContainingAppProxies:(id)a3;
- (void)setExtensions:(id)a3;
- (void)setMapsExtensions:(id)a3;
@end

@implementation _MXExtensionServiceCenter

- (id)allExtensions
{
  v2 = [(_MXExtensionServiceCenter *)self mapsExtensions];
  v3 = [v2 allValues];

  return v3;
}

- (NSDictionary)mapsExtensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18536;
  v10 = __Block_byref_object_dispose__18537;
  v11 = 0;
  extlock = self->_extlock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43___MXExtensionServiceCenter_mapsExtensions__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(extlock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_MXExtensionProvider)extensionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionProvider);

  return WeakRetained;
}

- (NSDictionary)containingAppProxies
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18536;
  v10 = __Block_byref_object_dispose__18537;
  v11 = 0;
  extlock = self->_extlock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___MXExtensionServiceCenter_containingAppProxies__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(extlock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setContainingAppProxies:(id)a3
{
  v4 = [a3 copy];
  extlock = self->_extlock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___MXExtensionServiceCenter_setContainingAppProxies___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(extlock, v7);
}

- (void)setMapsExtensions:(id)a3
{
  v4 = [a3 copy];
  extlock = self->_extlock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47___MXExtensionServiceCenter_setMapsExtensions___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(extlock, v7);
}

- (NSDictionary)extensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__18536;
  v10 = __Block_byref_object_dispose__18537;
  v11 = 0;
  extlock = self->_extlock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39___MXExtensionServiceCenter_extensions__block_invoke;
  v5[3] = &unk_1E76CD7E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(extlock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setExtensions:(id)a3
{
  v4 = [a3 copy];
  extlock = self->_extlock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43___MXExtensionServiceCenter_setExtensions___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(extlock, v7);
}

- (id)_siblingExtensionsWithContainingAppIdentifer:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [(_MXExtensionServiceCenter *)self containingAppProxies];

    if (!v5)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = [(_MXExtensionServiceCenter *)self allExtensions];
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __74___MXExtensionServiceCenter__siblingExtensionsWithContainingAppIdentifer___block_invoke;
      v20 = &unk_1E76C8D60;
      v21 = v6;
      v8 = v6;
      [v7 enumerateObjectsUsingBlock:&v17];

      [(_MXExtensionServiceCenter *)self setContainingAppProxies:v8, v17, v18, v19, v20];
    }

    v9 = [(_MXExtensionServiceCenter *)self containingAppProxies];
    v10 = [v9 objectForKeyedSubscript:v4];

    if (v10)
    {
      v22[0] = @"kExtensionUI";
      v11 = [v10 extensionUIIdentifiers];
      v12 = [v11 copy];
      v22[1] = @"kExtensionNonUI";
      v23[0] = v12;
      v13 = [v10 extensionNonUIIdentifiers];
      v14 = [v13 copy];
      v23[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_extensionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_MXExtensionServiceCenter *)self extensions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)receivedExtensions:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = [(_MXExtensionServiceCenter *)self mapsExtensions];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __54___MXExtensionServiceCenter_receivedExtensions_error___block_invoke;
  v15 = &unk_1E76C8D38;
  v16 = v7;
  v17 = v6;
  v18 = self;
  v19 = v8;
  v9 = v8;
  v10 = v6;
  v11 = v7;
  [v5 enumerateObjectsUsingBlock:&v12];

  [(_MXExtensionServiceCenter *)self setExtensions:v11, v12, v13, v14, v15];
  [(_MXExtensionServiceCenter *)self setMapsExtensions:v9];
  [(_MXExtensionServiceCenter *)self setContainingAppProxies:0];
}

- (_MXExtensionServiceCenter)initWithExtensionProvider:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _MXExtensionServiceCenter;
  v5 = [(_MXExtensionServiceCenter *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_extensionProvider, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.maps._MXExtensionServiceCenter.extension", v7);
    extlock = v6->_extlock;
    v6->_extlock = v8;
  }

  return v6;
}

@end