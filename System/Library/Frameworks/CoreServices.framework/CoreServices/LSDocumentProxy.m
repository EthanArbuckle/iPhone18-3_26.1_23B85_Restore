@interface LSDocumentProxy
+ (id)documentProxyForName:(id)a3 type:(id)a4 MIMEType:(id)a5;
+ (id)documentProxyForName:(id)a3 type:(id)a4 MIMEType:(id)a5 managedSourceAuditToken:(id *)a6;
+ (id)documentProxyForURL:(id)a3;
+ (id)documentProxyForURL:(id)a3 managedSourceAuditToken:(id *)a4;
- (BOOL)isImageOrVideo;
- (BindingEvaluator)bindingEvaluatorForIconInfo;
- (LSDocumentProxy)initWithCoder:(id)a3;
- (LSDocumentProxy)initWithURL:(id)a3 name:(id)a4 type:(id)a5 MIMEType:(id)a6 isContentManaged:(BOOL)a7 sourceAuditToken:(id *)a8;
- (id)_boundIconInfo;
- (id)applicationsAvailableForOpeningWithHandlerRanks:(id)a3 error:(id *)a4;
- (id)debugDescription;
- (id)description;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSDocumentProxy

+ (id)documentProxyForURL:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 path];
  v7 = [v6 lastPathComponent];
  v8 = [v5 initWithURL:v4 name:v7 type:0 MIMEType:0 isContentManaged:0 sourceAuditToken:0];

  return v8;
}

+ (id)documentProxyForName:(id)a3 type:(id)a4 MIMEType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithURL:0 name:v8 type:v9 MIMEType:v10 isContentManaged:0 sourceAuditToken:0];

  return v11;
}

- (LSDocumentProxy)initWithURL:(id)a3 name:(id)a4 type:(id)a5 MIMEType:(id)a6 isContentManaged:(BOOL)a7 sourceAuditToken:(id *)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = @"untitled";
  }

  v30.receiver = self;
  v30.super_class = LSDocumentProxy;
  v20 = [(LSResourceProxy *)&v30 _initWithLocalizedName:v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(v20 + 9, a3);
    v22 = [(__CFString *)v19 copy];
    v23 = v21[10];
    v21[10] = v22;

    v24 = [v17 copy];
    v25 = v21[11];
    v21[11] = v24;

    v26 = [v18 copy];
    v27 = v21[12];
    v21[12] = v26;

    *(v21 + 64) = a7;
    if (!a8)
    {
      a8 = _LSGetAuditTokenForSelf();
    }

    v28 = *&a8->var0[4];
    *(v21 + 2) = *a8->var0;
    *(v21 + 3) = v28;
  }

  return v21;
}

- (BOOL)isImageOrVideo
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(LSDocumentProxy *)self name];
  v3 = [v2 pathExtension];

  if (v3)
  {
    v4 = [UTTypeRecord typeRecordsWithTag:v3 ofClass:@"public.filename-extension"];
    if ([LSDocumentProxy isImageOrVideo]::once != -1)
    {
      [LSDocumentProxy isImageOrVideo];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) pedigree];
          v10 = [v9 intersectsSet:-[LSDocumentProxy isImageOrVideo]::imageAndVideoTypes];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

void __33__LSDocumentProxy_isImageOrVideo__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"public.image", @"public.video", @"public.movie", 0}];
  v1 = [LSDocumentProxy isImageOrVideo]::imageAndVideoTypes;
  [LSDocumentProxy isImageOrVideo]::imageAndVideoTypes = v0;
}

- (id)applicationsAvailableForOpeningWithHandlerRanks:(id)a3 error:(id *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!v6)
  {
    v6 = _LSCopyAllHandlerRankStrings();
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
  v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [[_LSDocumentProxyBindingQuery alloc] initWithDocumentProxy:self style:0 handlerRank:*(*(&v28 + 1) + 8 * i)];
        if (v13)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v10);
  }

  v14 = +[_LSQueryContext defaultContext];
  v27 = 0;
  v15 = [v14 resolveQueries:v8 error:&v27];
  v16 = v27;

  if (v15)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __73__LSDocumentProxy_applicationsAvailableForOpeningWithHandlerRanks_error___block_invoke;
    v25[3] = &unk_1E6A1C788;
    v18 = v17;
    v26 = v18;
    [v15 enumerateKeysAndObjectsUsingBlock:v25];
    v19 = v26;
  }

  else
  {
    v19 = _LSDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(__CFSet *)v9 allObjects];
      v21 = [v20 componentsJoinedByString:{@", "}];
      *buf = 138412802;
      v33 = self;
      v34 = 2112;
      v35 = v21;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Could not find apps for %@ (ranks %@): %@.", buf, 0x20u);
    }

    v18 = 0;
  }

  objc_autoreleasePoolPop(v7);
  if (a4 && !v18)
  {
    v22 = v16;
    *a4 = v16;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v18;
}

void __73__LSDocumentProxy_applicationsAvailableForOpeningWithHandlerRanks_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 _handlerRank];
  if (v6 && v5)
  {
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }
}

- (LSDocumentProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = LSDocumentProxy;
  v5 = [(LSResourceProxy *)&v20 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v10;

    v12 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"MIMEType"];
    MIMEType = v5->_MIMEType;
    v5->_MIMEType = v12;

    v5->_isContentManaged = [v4 decodeBoolForKey:@"contentManaged"];
    v14 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"sourceAuditToken"];
    v15 = v14;
    if (v14)
    {
      if ([v14 length] == 32)
      {
        v16 = [v15 bytes];
        v17 = v16[1];
        *v5->_sourceAuditToken.val = *v16;
        *&v5->_sourceAuditToken.val[4] = v17;
      }

      else
      {
        v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[LSDocumentProxy initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSDocumentProxy.mm", 271);
        [v4 failWithError:v18];
      }
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = LSDocumentProxy;
  [(LSResourceProxy *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_URL forKey:@"URL"];
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeObject:self->_typeIdentifier forKey:@"typeIdentifier"];
  [v4 encodeObject:self->_MIMEType forKey:@"MIMEType"];
  [v4 encodeBool:self->_isContentManaged forKey:@"contentManaged"];
  v5 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_sourceAuditToken length:32];
  [v4 encodeObject:v5 forKey:@"sourceAuditToken"];
}

- (id)uniqueIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v4 = [(LSDocumentProxy *)self name];

  if (v4)
  {
    v5 = [(LSDocumentProxy *)self name];
    v6 = [v5 dataUsingEncoding:4];
    [v3 appendData:v6];
  }

  v7 = [(LSDocumentProxy *)self typeIdentifier];

  if (v7)
  {
    v8 = [(LSDocumentProxy *)self typeIdentifier];
    v9 = [v8 dataUsingEncoding:4];
    [v3 appendData:v9];
  }

  v10 = [(LSDocumentProxy *)self MIMEType];

  if (v10)
  {
    v11 = [(LSDocumentProxy *)self MIMEType];
    v12 = [v11 dataUsingEncoding:4];
    [v3 appendData:v12];
  }

  v15 = [(LSDocumentProxy *)self isContentManaged];
  [v3 appendBytes:&v15 length:1];
  v13 = [MEMORY[0x1E696AFB0] _LS_UUIDWithData:v3 digestType:2];

  return v13;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(LSResourceProxy *)self localizedName];
  v5 = [(LSDocumentProxy *)self typeIdentifier];
  v6 = [(LSDocumentProxy *)self MIMEType];
  v7 = [v3 initWithFormat:@"LSDocumentProxy: Name=%@ UTI=%@ MIMEType=%@", v4, v5, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = [(LSDocumentProxy *)self isContentManaged];
  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:-[LSDocumentProxy sourceAuditToken](self length:{"sourceAuditToken"), 32}];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = objc_opt_class();
  v7 = [(LSDocumentProxy *)self URL];
  v8 = [(LSDocumentProxy *)self name];
  v9 = [(LSDocumentProxy *)self typeIdentifier];
  v10 = [(LSDocumentProxy *)self MIMEType];
  v11 = [v4 description];
  v12 = v11;
  v13 = "no";
  if (v3)
  {
    v13 = "yes";
  }

  v14 = [v5 initWithFormat:@"<%@ %p> { URL: %@, Name: %@, UTI: %@, MIMEType: %@, isContentManaged: %s, sourceAuditToken: %@ }", v6, self, v7, v8, v9, v10, v13, v11];

  return v14;
}

+ (id)documentProxyForURL:(id)a3 managedSourceAuditToken:(id *)a4
{
  v4 = [a1 documentProxyForURL:a3 isContentManaged:a4 != 0 sourceAuditToken:a4];

  return v4;
}

+ (id)documentProxyForName:(id)a3 type:(id)a4 MIMEType:(id)a5 managedSourceAuditToken:(id *)a6
{
  v6 = [a1 documentProxyForName:a3 type:a4 MIMEType:a5 isContentManaged:a6 != 0 sourceAuditToken:a6];

  return v6;
}

void __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v4 = (a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  v5 = +[LSApplicationRestrictionsManager sharedInstance];
  v6 = [(LSApplicationRestrictionsManager *)v5 isOpenInRestrictionInEffect];

  if (v6)
  {
    v7 = _LSCopyBundleIdentifierForAuditToken(v4, 1);
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138478083;
      v26 = v9;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "open in restriction in effect, binding %{private}@ source is %@", buf, 0x16u);
    }

    if (v7)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_142;
      v23[3] = &unk_1E6A1C7B0;
      v11 = v10;
      v24 = v11;
      (*(*a2 + 8))(a2, v23);
      v12 = +[LSApplicationRestrictionsManager sharedInstance];
      v13 = [(LSApplicationRestrictionsManager *)v12 allowedOpenInAppBundleIDsAfterApplyingFilterToAppBundleIDs:v11 originatingAppBundleID:v7 originatingAccountIsManaged:*(a1 + 76)];

      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 count];
        v16 = [v13 count];
        v17 = *(a1 + 76);
        *buf = 134219266;
        v26 = v15;
        v27 = 2048;
        v28 = v16;
        v29 = 2112;
        v30 = v7;
        v31 = 1024;
        v32 = v17;
        v33 = 2112;
        v34 = v11;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Filtered %zu original bundle IDs to %zu for %@ (managed? %d) (%@) -> (%@)", buf, 0x3Au);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_144;
      v21[3] = &unk_1E6A1C7B0;
      v22 = v13;
      v18 = *(*a2 + 8);
      v19 = v13;
      v18(a2, v21);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_142(uint64_t a1, id *a2, uint64_t a3)
{
  v4 = *(*(a3 + 8) + 12);
  [(_LSDatabase *)*a2 store];
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

uint64_t __107__LSDocumentProxy_Binding___bindingEvaluatorResultFilterForBindingStyle_contentIsManaged_sourceAuditToken___block_invoke_144(uint64_t a1, id *a2, uint64_t a3)
{
  v4 = *(*(a3 + 8) + 12);
  [(_LSDatabase *)*a2 store];
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    v6 = [*(a1 + 32) containsObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BindingEvaluator)bindingEvaluatorForIconInfo
{
  v4 = [[LSClaimBindingConfiguration alloc] initWithDocumentProxy:self bindingStyle:0];
  v6 = v4;
  if (v4)
  {
    [(LSClaimBindingConfiguration *)v4 bindingEvaluatorForAuditToken:0];
  }

  else
  {
    *&retstr->var15 = 0u;
    *&retstr->var17 = 0u;
    *&retstr->var13.var0 = 0u;
    *&retstr->var13.var2 = 0u;
    *&retstr->var7 = 0u;
    *&retstr->var10 = 0u;
    *retstr->var6._opaque = 0u;
    *&retstr->var6._opaque[16] = 0u;
    *&retstr->var2 = 0u;
    *&retstr->var4 = 0u;
    *&retstr->var0 = 0u;
  }

  return result;
}

- (id)_boundIconInfo
{
  v55 = *MEMORY[0x1E69E9840];
  if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__25;
    v39 = __Block_byref_object_dispose__25;
    v40 = 0;
    v3 = self;
    objc_sync_enter(v3);
    v34.receiver = v3;
    v34.super_class = LSDocumentProxy;
    v4 = [(LSResourceProxy *)&v34 _boundIconInfo];
    v5 = [v4 applicationIdentifier];
    v6 = v5 == 0;

    if (v6)
    {
      if (_LSCurrentProcessMayMapDatabase())
      {
        v33 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        if (!LaunchServices::Database::Context::status(&v30))
        {
          v7 = +[_LSDServiceDomain defaultServiceDomain];
          v8 = LaunchServices::Database::Context::_get(&v30, v7, 0);

          [(_LSBoundIconInfo *)v4 setDocumentAllowOverride:?];
          [(_LSBoundIconInfo *)v4 setPrerendered:?];
          [(LSDocumentProxy *)v3 bindingEvaluatorForIconInfo];
          LaunchServices::BindingEvaluator::BindingEvaluator(v53, &v47);
          v54 = 1;
          LaunchServices::BindingEvaluator::~BindingEvaluator(&v47);
          if (v54 == 1)
          {
            LaunchServices::BindingEvaluator::setLimit(v53, 1uLL);
            v9 = LaunchServices::BindingEvaluator::getCalculatedUTI(v53, v8);
            if (v9)
            {
              v29 = 0;
              active = _UTGetActiveTypeForCFStringIdentifier(v8->db, v9, &v29);
              v11 = active;
              if (!active || (*(active + 9) & 2) != 0)
              {
                [(_LSBoundIconInfo *)v4 setFileNames:?];
                [(_LSBoundIconInfo *)v4 setIconsDictionary:?];
                [v4 setApplicationIdentifier:@"com.apple.mobilecoretypes"];
                [(_LSBoundIconInfo *)v4 setContainerURL:?];
                v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" isDirectory:1];
                [v4 setResourcesDirectoryURL:v21];

                [(_LSBoundIconInfo *)v4 setDocumentAllowOverride:?];
              }

              else
              {
                v47 = 0;
                v48 = &v47;
                v49 = 0x3032000000;
                v50 = __Block_byref_object_copy__25;
                v51 = __Block_byref_object_dispose__25;
                v52 = 0;
                v27[0] = 0;
                v27[1] = v27;
                v27[2] = 0x3032000000;
                v27[3] = __Block_byref_object_copy__25;
                v27[4] = __Block_byref_object_dispose__25;
                v28 = 0;
                v41[0] = MEMORY[0x1E69E9820];
                v41[1] = 3321888768;
                v41[2] = __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke;
                v41[3] = &unk_1EEF63008;
                v44 = &v47;
                v45 = v8;
                v43 = v27;
                v12 = v4;
                v42 = v12;
                std::__optional_copy_base<LaunchServices::BindingEvaluator,false>::__optional_copy_base[abi:nn200100](v46, v53);
                v13 = MEMORY[0x1865D71B0](v41);
                if ((v13[2](v13, v11) & 1) != 0 || (v14 = _UTGetActiveTypeWithIconForNSStringIdentifier(v8->db, v9, &v29), v13[2](v13, v14)))
                {
                  v15 = [v48[5] bundleIdentifier];
                  [v12 setApplicationIdentifier:v15];

                  v16 = [v48[5] containerURL];
                  [(_LSBoundIconInfo *)v12 setContainerURL:v16];

                  v17 = [v48[5] _boundIconInfo];
                  v18 = [v17 resourcesDirectoryURL];
                  [v12 setResourcesDirectoryURL:v18];

                  [(_LSBoundIconInfo *)v12 setBadge:?];
                }

                if (v46[176] == 1)
                {
                  LaunchServices::BindingEvaluator::~BindingEvaluator(v46);
                }

                _Block_object_dispose(v27, 8);
                _Block_object_dispose(&v47, 8);
              }
            }

            objc_storeStrong(v36 + 5, v4);
            if (v54)
            {
              LaunchServices::BindingEvaluator::~BindingEvaluator(v53);
            }
          }
        }

        if (v30 && v32 == 1)
        {
          _LSContextDestroy(v30);
        }

        v22 = v31;
        v30 = 0;
        v31 = 0;

        v32 = 0;
        v23 = v33;
        v33 = 0;
      }

      else
      {
        v20 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke_161;
        v26[3] = &unk_1E6A1C7F8;
        v26[4] = v3;
        v26[5] = &v35;
        [v20 getBoundIconInfoForDocumentProxy:v3 completionHandler:v26];
      }
    }

    else
    {
      objc_storeStrong(v36 + 5, v4);
    }

    objc_sync_exit(v3);
    v19 = v36[5];
    _Block_object_dispose(&v35, 8);
  }

  else
  {
    v19 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v19;
}

uint64_t __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_23;
  }

  v3 = a2;
  if (_UTTypeHasIcon(a2))
  {
    goto LABEL_3;
  }

  v7 = *(v3 + 12);
  [(_LSDatabase *)**(a1 + 56) store];
  v8 = _CSStringCopyCFString();
  v36 = 0;
  active = _UTGetActiveTypeWithIconForNSStringIdentifier(**(a1 + 56), v8, &v36);
  v3 = active;
  if (!active)
  {

LABEL_23:
    v21 = 0;
LABEL_24:
    v22 = *(a1 + 56);
    LaunchServices::BindingEvaluator::getBestBinding((a1 + 64));
    if (v41 == 1)
    {
      v23 = [LSApplicationRecord alloc];
      v24 = [(LSApplicationRecord *)v23 _initWithContext:*(a1 + 56) bundleID:v36 bundleData:v37 error:0];
      v25 = *(*(a1 + 40) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      v27 = [*(*(*(a1 + 40) + 8) + 40) compatibilityObject];
      v28 = *(*(a1 + 48) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      if (v38 && (*(v38 + 28) || *(v38 + 60)))
      {
        v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (*(v38 + 60))
        {
          [(_LSDatabase *)**(a1 + 56) store];
          v31 = _CSStringCopyCFString();
          [v30 addObject:v31];
        }

        else
        {
          for (i = 28; i != 60; i += 4)
          {
            if (!*(v38 + i))
            {
              break;
            }

            [(_LSDatabase *)**(a1 + 56) store];
            v34 = _CSStringCopyCFString();
            [v30 addObject:v34];
          }
        }

        v32 = [v30 copy];
        [(_LSBoundIconInfo *)*(a1 + 32) setFileNames:v32];
      }

      else
      {
        v30 = [*(*(*(a1 + 48) + 8) + 40) _boundIconInfo];
        v32 = [(_LSBoundIconInfo *)v30 iconsDictionary];
        [(_LSBoundIconInfo *)*(a1 + 32) setIconsDictionary:v32];
      }

      v21 = 1;
    }

    if (v41 == 1)
    {
    }

    return v21;
  }

  v10 = *(active + 8);

  if ((v10 & 0x200) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((*(v3 + 9) & 0x20) != 0)
  {
    v6 = [[LSApplicationExtensionRecord alloc] _initWithContext:*(a1 + 56) pluginID:*(v3 + 20) pluginData:0 error:0];
    v11 = [v6 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
    }
  }

  else
  {
    v4 = [[LSApplicationRecord alloc] _initWithContext:*(a1 + 56) bundleID:*(v3 + 20) bundleData:0 error:0];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  v12 = [*(*(*(a1 + 40) + 8) + 40) compatibilityObject];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = _UTTypeGetIconNames(**(a1 + 56), v3);
  if ((*(v3 + 8) & 0x20) != 0)
  {
    [(_LSBoundIconInfo *)*(a1 + 32) setDocumentAllowOverride:?];
  }

  [(_LSBoundIconInfo *)*(a1 + 32) setFileNames:v15];
  v16 = _UTTypeGetIconName(**(a1 + 56), v3);
  v17 = _UTTypeGetGlyphName(**(a1 + 56), v3);
  if (v16 | v17)
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = v18;
    if (v16)
    {
      [v18 setObject:v16 forKeyedSubscript:@"UTTypeIconName"];
    }

    if (v17)
    {
      [v19 setObject:v16 forKeyedSubscript:@"UTTypeGlyphName"];
    }

    v20 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v19];
    [(_LSBoundIconInfo *)*(a1 + 32) setIconsDictionary:v20];
  }

  else
  {
    [(_LSBoundIconInfo *)*(a1 + 32) setIconsDictionary:?];
  }

  v21 = 1;
  if ([(_LSBoundIconInfo *)*(a1 + 32) documentAllowOverride])
  {
    goto LABEL_24;
  }

  return v21;
}

void __42__LSDocumentProxy_Binding___boundIconInfo__block_invoke_161(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = *(*(a1 + 40) + 8);
    objc_storeStrong((v5 + 40), a2);
    v6 = *(v5 + 40);
    v7.receiver = *(a1 + 32);
    v7.super_class = LSDocumentProxy;
    objc_msgSendSuper2(&v7, sel__setBoundIconInfo_, v6);
  }
}

@end