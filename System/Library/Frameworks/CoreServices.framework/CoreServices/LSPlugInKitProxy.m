@interface LSPlugInKitProxy
+ (id)containingBundleIdentifiersForPlugInBundleIdentifiers:(id)a3 error:(id *)a4;
+ (id)plugInKitProxyForUUID:(id)a3 bundleIdentifier:(id)a4 pluginIdentifier:(id)a5 effectiveIdentifier:(id)a6 version:(id)a7 bundleURL:(id)a8;
+ (id)pluginKitProxyForIdentifier:(id)a3;
+ (id)pluginKitProxyForURL:(id)a3;
+ (id)pluginKitProxyForUUID:(id)a3;
- (BOOL)_usesSystemPersona;
- (BOOL)pluginCanProvideIcon;
- (LSExtensionPoint)extensionPoint;
- (LSPlugInKitProxy)initWithCoder:(id)a3;
- (NSDictionary)infoPlist;
- (NSDictionary)pluginKitDictionary;
- (NSNumber)platform;
- (NSString)teamID;
- (id)_initWithUUID:(id)a3 bundleIdentifier:(id)a4 pluginIdentifier:(id)a5 effectiveIdentifier:(id)a6 version:(id)a7 bundleURL:(id)a8;
- (id)_localizedNameWithPreferredLocalizations:(id)a3 useShortNameOnly:(BOOL)a4;
- (id)_managedPersonas;
- (id)_stringLocalizerForTable:(id)a3;
- (id)boundIconsDictionary;
- (id)description;
- (id)objectForInfoDictionaryKey:(id)a3 ofClass:(Class)a4 inScope:(unint64_t)a5;
- (void)detach;
- (void)encodeWithCoder:(id)a3;
- (void)extensionPoint;
@end

@implementation LSPlugInKitProxy

- (NSString)teamID
{
  v2 = [(LSPlugInKitProxy *)self containingBundle];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 teamID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)pluginKitProxyForUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  v4 = [LSPlugInQuery pluginQueryWithUUID:v3];
  v5 = +[_LSQueryContext defaultContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__LSPlugInKitProxy_pluginKitProxyForUUID___block_invoke;
  v11[3] = &unk_1E6A18F00;
  v11[4] = &v12;
  [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v11];

  v6 = v13[5];
  if (!v6)
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Failed to find plugin with UUID %@", buf, 0xCu);
    }

    v6 = v13[5];
  }

  v8 = v6;

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __42__LSPlugInKitProxy_pluginKitProxyForUUID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v10)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v9);
}

+ (id)pluginKitProxyForIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__38;
  v28 = __Block_byref_object_dispose__38;
  v29 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v4 = [LSPlugInQuery pluginQueryWithIdentifier:v3];
  v5 = +[_LSQueryContext defaultContext];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __48__LSPlugInKitProxy_pluginKitProxyForIdentifier___block_invoke;
  v23[3] = &unk_1E6A18F00;
  v23[4] = &v24;
  [v5 enumerateResolvedResultsOfQuery:v4 withBlock:v23];

  v6 = [v25[5] count];
  v7 = v25[5];
  if (v6 == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else if ([v7 count] < 2)
  {
    v8 = 0;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v25[5];
    v8 = 0;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v10)
    {
      v11 = *v20;
LABEL_6:
      v12 = 0;
      v13 = v8;
      while (1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v8 = *(*(&v19 + 1) + 8 * v12);

        v14 = [v8 pluginIdentifier];
        v15 = [v8 originalIdentifier];
        v16 = [v14 isEqualToString:v15];

        if ((v16 & 1) == 0)
        {
          break;
        }

        ++v12;
        v13 = v8;
        if (v10 == v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:

      [v25[5] objectAtIndexedSubscript:0];
      v8 = v9 = v8;
    }
  }

  _Block_object_dispose(&v24, 8);
  v17 = *MEMORY[0x1E69E9840];

  return v8;
}

void __48__LSPlugInKitProxy_pluginKitProxyForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (v6)
  {
    v10 = v6;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
    v7 = [v10 pluginIdentifier];
    v8 = [v10 originalIdentifier];
    v9 = [v7 isEqualToString:v8];

    v6 = v10;
    if ((v9 & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

+ (id)pluginKitProxyForURL:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__38;
  v14 = __Block_byref_object_dispose__38;
  v15 = 0;
  v4 = _LSCreateResolvedURL(v3);
  v5 = [LSPlugInQuery pluginQueryWithURL:v4];
  v6 = +[_LSQueryContext defaultContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__LSPlugInKitProxy_pluginKitProxyForURL___block_invoke;
  v9[3] = &unk_1E6A18F00;
  v9[4] = &v10;
  [v6 enumerateResolvedResultsOfQuery:v5 withBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __41__LSPlugInKitProxy_pluginKitProxyForURL___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v14)
  {
    v10 = v14;
    v11 = *(*(a1 + 32) + 8);
    v13 = *(v11 + 40);
    v12 = (v11 + 40);
    if (!v13)
    {
      objc_storeStrong(v12, a2);
      *a4 = 1;
    }
  }

  objc_autoreleasePoolPop(v9);
}

+ (id)plugInKitProxyForUUID:(id)a3 bundleIdentifier:(id)a4 pluginIdentifier:(id)a5 effectiveIdentifier:(id)a6 version:(id)a7 bundleURL:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [[a1 alloc] _initWithUUID:v19 bundleIdentifier:v18 pluginIdentifier:v17 effectiveIdentifier:v16 version:v15 bundleURL:v14];

  return v20;
}

void __91__LSPlugInKitProxy__initWithPlugin_andContext_applicationExtensionRecord_resolveAndDetach___block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    [(_LSDatabase *)**(a1 + 48) store];
    v5 = _CSStringCopyCFString();
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
      if (v6)
      {
        v7 = *(*(*(a1 + 40) + 8) + 40);
        if (!v7)
        {
          v8 = [MEMORY[0x1E695DF70] array];
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v8;

          v7 = *(*(*(a1 + 40) + 8) + 40);
        }

        [v7 addObject:v6];
      }

      else
      {
        v11 = _LSDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v14 = 138412546;
          v15 = v12;
          v16 = 2112;
          v17 = v5;
          _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Launch Services: Failed to create a UUID for %@ from invalid string %@", &v14, 0x16u);
        }
      }
    }
  }

  else
  {
    *a4 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_initWithUUID:(id)a3 bundleIdentifier:(id)a4 pluginIdentifier:(id)a5 effectiveIdentifier:(id)a6 version:(id)a7 bundleURL:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = LSPlugInKitProxy;
  v18 = [(LSBundleProxy *)&v32 _initWithBundleUnit:0 context:0 bundleType:6 bundleID:a4 localizedName:0 bundleContainerURL:0 dataContainerURL:0 resourcesDirectoryURL:v17 iconsDictionary:0 iconFileNames:0 version:a7];
  if (v18)
  {
    v19 = v16 ? v16 : v15;
    v20 = [v19 copy];
    v21 = v18[23];
    v18[23] = v20;

    v22 = [v15 copy];
    v23 = v18[24];
    v18[24] = v22;

    v24 = [v14 copy];
    v25 = v18[26];
    v18[26] = v24;

    *(v18 + 176) = 1;
    if (v17)
    {
      v26 = [[FSNode alloc] initWithURL:v17 flags:0 error:0];
      v27 = v26;
      if (v26)
      {
        v28 = [(FSNode *)v26 volumeNodeWithFlags:0 error:0];
        if (v28)
        {
          v29 = +[FSNode rootVolumeNode];
          v30 = [v28 isEqual:v29];

          if (v30)
          {
            *(v18 + 176) = 1;
          }
        }
      }
    }
  }

  return v18;
}

- (LSPlugInKitProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = LSPlugInKitProxy;
  v5 = [(LSBundleProxy *)&v23 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"pluginIdentifier"];
    pluginIdentifier = v5->_pluginIdentifier;
    v5->_pluginIdentifier = v6;

    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"originalIdentifier"];
    originalIdentifier = v5->_originalIdentifier;
    v5->_originalIdentifier = v8;

    v10 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"protocol"];
    protocol = v5->_protocol;
    v5->_protocol = v10;

    v12 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"extensionPointID"];
    extensionPointID = v5->_extensionPointID;
    v5->_extensionPointID = v12;

    v5->_platform = [v4 decodeInt32ForKey:@"platform"];
    v14 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"pluginUUID"];
    pluginUUID = v5->_pluginUUID;
    v5->_pluginUUID = v14;

    v16 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"registrationDate"];
    registrationDate = v5->_registrationDate;
    v5->_registrationDate = v16;

    v18 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"containingBundle"];
    containingBundle = v5->_containingBundle;
    v5->_containingBundle = v18;

    v5->_onSystemPartition = [v4 decodeBoolForKey:@"isOnSystemPartition"];
    v20 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"appexRecord"];
    appexRecord = v5->_appexRecord;
    v5->_appexRecord = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = LSPlugInKitProxy;
  v4 = a3;
  [(LSBundleProxy *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_pluginIdentifier forKey:{@"pluginIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_originalIdentifier forKey:@"originalIdentifier"];
  [v4 encodeObject:self->_protocol forKey:@"protocol"];
  [v4 encodeObject:self->_extensionPointID forKey:@"extensionPointID"];
  [v4 encodeInt32:self->_platform forKey:@"platform"];
  [v4 encodeObject:self->_pluginUUID forKey:@"pluginUUID"];
  [v4 encodeObject:self->_registrationDate forKey:@"registrationDate"];
  [v4 encodeObject:self->_containingBundle forKey:@"containingBundle"];
  [v4 encodeBool:self->_onSystemPartition forKey:@"isOnSystemPartition"];
  [v4 encodeObject:self->_appexRecord forKey:@"appexRecord"];
}

- (id)objectForInfoDictionaryKey:(id)a3 ofClass:(Class)a4 inScope:(unint64_t)a5
{
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [(LSBundleProxy *)self _infoDictionary];
  v11 = 0;
  if (a5 == 2)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if (a5 != 1)
  {
    v12 = 0;
    v13 = 0;
    if (a5)
    {
      goto LABEL_13;
    }

    v12 = [v10 objectForKey:@"NSExtension" ofClass:objc_opt_class()];
    v11 = [v12 objectForKeyedSubscript:@"NSExtensionAttributes"];
    v13 = [v11 objectForKey:v8];
    if (v13)
    {
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_12:
    v13 = [v10 objectForKey:v8 ofClass:a4];
    goto LABEL_13;
  }

  v12 = [v10 objectForKey:@"NSExtension" ofClass:objc_opt_class()];
  v13 = [v12 objectForKey:v8];
  v11 = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
  }

LABEL_13:

  objc_autoreleasePoolPop(v9);

  return v13;
}

- (NSNumber)platform
{
  if (self->_platform)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDictionary)pluginKitDictionary
{
  v2 = [(LSBundleProxy *)self _infoDictionary];
  v3 = [v2 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

  return v3;
}

- (NSDictionary)infoPlist
{
  v2 = [(LSBundleProxy *)self _infoDictionary];
  v3 = [(_LSLazyPropertyList *)v2 propertyList];

  return v3;
}

- (BOOL)pluginCanProvideIcon
{
  v3 = [(LSPlugInKitProxy *)self protocol];
  v4 = [v3 isEqualToString:getIMMessagePayloadProviderExtensionPointName[0]()];

  if (v4)
  {
    return 1;
  }

  v5 = [(LSPlugInKitProxy *)self containingBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.share"];

  if (v7)
  {
    return 1;
  }

  v9 = [(LSPlugInKitProxy *)self containingBundle];
  v8 = v9 == 0;

  return v8;
}

- (LSExtensionPoint)extensionPoint
{
  extensionPointID = self->_extensionPointID;
  if (extensionPointID)
  {
    v4 = extensionPointID;
LABEL_4:
    v5 = [(LSPlugInKitProxy *)self platform];
    v6 = [v5 unsignedLongValue];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v8 = [LSExtensionPoint extensionPointForIdentifier:v4 platform:v7];

    goto LABEL_5;
  }

  v4 = [(LSPlugInKitProxy *)self protocol];
  if (v4)
  {
    goto LABEL_4;
  }

  v10 = _LSDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(LSPlugInKitProxy *)self extensionPoint];
  }

  v4 = 0;
  v8 = 0;
LABEL_5:

  return v8;
}

- (id)boundIconsDictionary
{
  v2 = [(LSBundleProxy *)self _infoDictionary];
  v3 = [v2 objectForKey:@"CFBundleIcons" ofClass:objc_opt_class()];

  return v3;
}

- (id)_stringLocalizerForTable:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  appexRecord = self->_appexRecord;
  v5 = a3;
  v6 = [(LSBundleRecord *)appexRecord platform];
  v7 = [(LSBundleRecord *)self->_appexRecord SDKVersion];
  _LSVersionNumberMakeWithString(v15, v7);
  DYLDVersion = _LSVersionNumberGetDYLDVersion(v15);

  v9 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:v6 sdkVersion:DYLDVersion];
  v10 = [_LSStringLocalizer alloc];
  v11 = [(LSBundleProxy *)self bundleURL];
  v12 = [(_LSStringLocalizer *)v10 initWithBundleURL:v11 stringsFile:v5 legacyLocalizationList:v9];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = LSPlugInKitProxy;
  v4 = [(LSPlugInKitProxy *)&v11 description];
  v5 = [(LSPlugInKitProxy *)self pluginIdentifier];
  v6 = [(LSPlugInKitProxy *)self pluginUUID];
  v7 = [v6 UUIDString];
  v8 = [(LSBundleProxy *)self bundleVersion];
  v9 = [v3 stringWithFormat:@"%@ pluginID=%@ UUID=%@ version=%@", v4, v5, v7, v8];

  return v9;
}

- (id)_managedPersonas
{
  v2 = [(LSPlugInKitProxy *)self containingBundle];
  v3 = [v2 _managedPersonas];

  return v3;
}

- (BOOL)_usesSystemPersona
{
  v2 = [(LSPlugInKitProxy *)self containingBundle];
  v3 = [v2 _usesSystemPersona];

  return v3;
}

- (void)detach
{
  [(LSRecord *)self->_appexRecord _resolveAllProperties];
  appexRecord = self->_appexRecord;

  [(LSRecord *)appexRecord detach];
}

- (id)_localizedNameWithPreferredLocalizations:(id)a3 useShortNameOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  appexRecord = self->_appexRecord;
  if (v4)
  {
    if (v6)
    {
      [(LSBundleRecord *)appexRecord localizedShortNameWithPreferredLocalizations:v6];
    }

    else
    {
      [(LSBundleRecord *)appexRecord localizedShortName];
    }
  }

  else if (v6)
  {
    [(LSBundleRecord *)appexRecord localizedNameWithPreferredLocalizations:v6];
  }

  else
  {
    [(LSBundleRecord *)appexRecord localizedName];
  }
  v8 = ;
  v9 = v8;

  return v9;
}

+ (id)containingBundleIdentifiersForPlugInBundleIdentifiers:(id)a3 error:(id *)a4
{
  v5 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__38;
  v22 = __Block_byref_object_dispose__38;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __108__LSPlugInKitProxy_ContainingBundleIdentifier__containingBundleIdentifiersForPlugInBundleIdentifiers_error___block_invoke;
  v11[3] = &unk_1E6A198D0;
  v11[4] = &v12;
  v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__LSPlugInKitProxy_ContainingBundleIdentifier__containingBundleIdentifiersForPlugInBundleIdentifiers_error___block_invoke_2;
  v10[3] = &unk_1E6A19B10;
  v10[4] = &v18;
  v10[5] = &v12;
  [v6 mapPlugInBundleIdentifiersToContainingBundleIdentifiers:v5 completionHandler:v10];
  v7 = v19[5];
  if (a4 && !v7)
  {
    *a4 = v13[5];
    v7 = v19[5];
  }

  v8 = v7;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);

  return v8;
}

void __108__LSPlugInKitProxy_ContainingBundleIdentifier__containingBundleIdentifiersForPlugInBundleIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)extensionPoint
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Failed to get the extension point ID of plugin %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end