@interface LSPlugInQueryWithURL
- (BOOL)isEqual:(id)equal;
- (LSPlugInQueryWithURL)initWithCoder:(id)coder;
- (id)_initWithURL:(id)l;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
@end

@implementation LSPlugInQueryWithURL

- (id)_initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = LSPlugInQueryWithURL;
  _init = [(LSPlugInQuery *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 2, l);
  }

  return v7;
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  connectionCopy = connection;
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3812000000;
  v18 = __Block_byref_object_copy__41;
  v19 = __Block_byref_object_dispose__41;
  v20 = 256;
  v21 = 0;
  v14 = 0;
  inited = _LSContextInitReturningError(&v21, &v14);
  v9 = v14;
  if (inited)
  {
    v10 = CFURLCopyFileSystemPath(self->_bundleURL, kCFURLPOSIXPathStyle);
    if (v10)
    {
      [(_LSDatabase *)v16[6] store];
      v11 = *([(_LSDatabase *)v16[6] schema]+ 1588);
      v12 = v10;
      v13 = blockCopy;
      _CSStoreEnumerateUnits();
    }

    _LSContextDestroy(v16 + 6);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, v9);
  }

  _Block_object_dispose(&v15, 8);
}

void __58__LSPlugInQueryWithURL__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(a3 + 4))
  {
    v9 = _LSContainerGet(*(*(*(a1 + 48) + 8) + 48));
    if (v9)
    {
      v15 = 0;
      v10 = !_LSContainerCheckState(*(*(*(a1 + 48) + 8) + 48), *(a3 + 4), v9, &v15, 0) && v15 == 1;
      if (v10 && _LSAliasMatchesPath_NoIO(*(*(*(a1 + 48) + 8) + 48), *a3, *(a1 + 32), 0))
      {
        v11 = [LSPlugInKitProxy plugInKitProxyForPlugin:a2 withContext:*(*(a1 + 48) + 8) + 48];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
          v14 = 0;
        }

        else
        {
          v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSPlugInQueryWithURL _enumerateWithXPCConnection:block:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryWithURL.m", 67);
        }

        (*(*(a1 + 40) + 16))();
        *a5 = 1;
      }
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryWithURL;
  if ([(LSPlugInQuery *)&v12 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bundleURL = self->_bundleURL;
    v6 = equalCopy;
    path = [(NSURL *)bundleURL path];
    _bundleURL = [v6 _bundleURL];

    path2 = [_bundleURL path];
    v10 = [path isEqualToString:path2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  path = [(NSURL *)self->_bundleURL path];
  v4 = [path hash];
  v7.receiver = self;
  v7.super_class = LSPlugInQueryWithURL;
  v5 = [(LSPlugInQuery *)&v7 hash];

  return v5 ^ v4;
}

- (LSPlugInQueryWithURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleURL"];

  v6 = [(LSPlugInQueryWithURL *)self _initWithURL:v5];
  return v6;
}

@end