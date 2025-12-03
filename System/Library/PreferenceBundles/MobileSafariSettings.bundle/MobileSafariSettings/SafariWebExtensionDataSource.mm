@interface SafariWebExtensionDataSource
- (id)_defaultWebExtensionsController;
- (void)_addSize:(double)size forExtensionWithComposedIdentifier:(id)identifier;
- (void)_calculateTotalExtensionStorageWithCompletionHandler:(id)handler;
- (void)_deleteDataForWebExtensionWithComposedIdentifier:(id)identifier;
- (void)createSpecifiersWithCompletionHandler:(id)handler;
- (void)deleteDataForSpecifier:(id)specifier;
- (void)totalUsageWithCompletionHandler:(id)handler;
@end

@implementation SafariWebExtensionDataSource

- (id)_defaultWebExtensionsController
{
  v2 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v2 profileServerIDToWebExtensionsControllers];
  v4 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v4;
}

- (void)deleteDataForSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:WBSWebExtensionComposedIdentifierKey];
  [(SafariWebExtensionDataSource *)self _deleteDataForWebExtensionWithComposedIdentifier:v4];
}

- (void)_deleteDataForWebExtensionWithComposedIdentifier:(id)identifier
{
  selfCopy = self;
  identifierCopy = identifier;
  v3 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v3 profileServerIDToWebExtensionsControllers];
  allValues = [profileServerIDToWebExtensionsControllers allValues];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    v10 = WKWebExtensionDataTypeLocal;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        [v12 initializeWebKitControllerIfNeededFromSettings:{1, selfCopy}];
        webKitController = [v12 webKitController];
        v14 = objc_opt_respondsToSelector();

        if (v14)
        {
          webKitController2 = [v12 webKitController];
          v16 = [NSSet setWithObject:v10];
          v17 = [(NSMutableDictionary *)selfCopy->_composedIdentifierToDataRecordsMap objectForKeyedSubscript:identifierCopy];
          v25 = v17;
          v18 = [NSArray arrayWithObjects:&v25 count:1];
          [webKitController2 removeDataOfTypes:v16 fromDataRecords:v18 completionHandler:&__block_literal_global_6];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }
}

- (void)totalUsageWithCompletionHandler:(id)handler
{
  if (self->_composedIdentifierToExtensionTotalStorage)
  {
    (*(handler + 2))(handler, 1, self->_totalUsage);
  }

  else
  {
    [(SafariWebExtensionDataSource *)self _calculateTotalExtensionStorageWithCompletionHandler:handler];
  }
}

- (void)_calculateTotalExtensionStorageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  _defaultWebExtensionsController = [(SafariWebExtensionDataSource *)self _defaultWebExtensionsController];
  hasDiscoveredExtensions = [_defaultWebExtensionsController hasDiscoveredExtensions];

  if (hasDiscoveredExtensions)
  {
    v24 = handlerCopy;
    v7 = +[SafariSettingsController extensionsProfilesDataSource];
    profileServerIDToWebExtensionsControllers = [v7 profileServerIDToWebExtensionsControllers];
    allValues = [profileServerIDToWebExtensionsControllers allValues];

    v10 = dispatch_group_create();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = allValues;
    v27 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v27)
    {
      v26 = *v43;
      v30 = WKWebExtensionDataTypeLocal;
      do
      {
        v11 = 0;
        do
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v11;
          v12 = *(*(&v42 + 1) + 8 * v11);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          extensions = [v12 extensions];
          v13 = [extensions countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v39;
            do
            {
              v16 = 0;
              do
              {
                if (*v39 != v15)
                {
                  objc_enumerationMutation(extensions);
                }

                v17 = *(*(&v38 + 1) + 8 * v16);
                dispatch_group_enter(v10);
                v18 = [v12 webExtensionForExtension:v17];
                composedIdentifier = [v18 composedIdentifier];
                [v12 initializeWebKitControllerIfNeededFromSettings:1];
                webKitController = [v12 webKitController];
                v21 = [NSSet setWithObjects:v30, 0];
                webKitContext = [v18 webKitContext];
                v34[0] = _NSConcreteStackBlock;
                v34[1] = 3221225472;
                v34[2] = __85__SafariWebExtensionDataSource__calculateTotalExtensionStorageWithCompletionHandler___block_invoke;
                v34[3] = &unk_89FF0;
                v35 = v10;
                v36 = selfCopy;
                v37 = composedIdentifier;
                v23 = composedIdentifier;
                [webKitController fetchDataRecordOfTypes:v21 forExtensionContext:webKitContext completionHandler:v34];

                v16 = v16 + 1;
              }

              while (v14 != v16);
              v14 = [extensions countByEnumeratingWithState:&v38 objects:v46 count:16];
            }

            while (v14);
          }

          v11 = v28 + 1;
        }

        while ((v28 + 1) != v27);
        v27 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v27);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __85__SafariWebExtensionDataSource__calculateTotalExtensionStorageWithCompletionHandler___block_invoke_2;
    block[3] = &unk_8A018;
    handlerCopy = v24;
    block[4] = selfCopy;
    v33 = v24;
    dispatch_group_notify(v10, &_dispatch_main_q, block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0.0);
  }
}

void __85__SafariWebExtensionDataSource__calculateTotalExtensionStorageWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v9 totalSizeInBytes];
  }

  else
  {
    v3 = [v9 totalSize];
  }

  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 40) + 8);
    if (!v5)
    {
      v6 = +[NSMutableDictionary dictionary];
      v7 = *(a1 + 40);
      v8 = *(v7 + 8);
      *(v7 + 8) = v6;

      v5 = *(*(a1 + 40) + 8);
    }

    [v5 setObject:v9 forKeyedSubscript:*(a1 + 48)];
    [*(a1 + 40) _addSize:*(a1 + 48) forExtensionWithComposedIdentifier:v4];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)createSpecifiersWithCompletionHandler:(id)handler
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __70__SafariWebExtensionDataSource_createSpecifiersWithCompletionHandler___block_invoke;
  v11[3] = &unk_89960;
  v11[4] = self;
  handlerCopy = handler;
  v12 = handlerCopy;
  v5 = objc_retainBlock(v11);
  v6 = v5;
  if (self->_composedIdentifierToExtensionTotalStorage)
  {
    (v5[2])(v5);
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
    composedIdentifierToExtensionTotalStorage = self->_composedIdentifierToExtensionTotalStorage;
    self->_composedIdentifierToExtensionTotalStorage = v7;

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __70__SafariWebExtensionDataSource_createSpecifiersWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_8A040;
    v10 = v6;
    [(SafariWebExtensionDataSource *)self _calculateTotalExtensionStorageWithCompletionHandler:v9];
  }
}

void __70__SafariWebExtensionDataSource_createSpecifiersWithCompletionHandler___block_invoke(uint64_t a1)
{
  v16 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(*(a1 + 32) + 16) allKeys];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v15 = *v18;
    v14 = WBSWebExtensionComposedIdentifierKey;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v17 + 1) + 8 * i);
        v6 = [*(a1 + 32) _defaultWebExtensionsController];
        v7 = [v6 webExtensionForComposedIdentifier:v5];

        v23[0] = @"name";
        v8 = [v7 displayName];
        v24[0] = v8;
        v23[1] = @"userInfo";
        v21 = v14;
        v9 = [v7 composedIdentifier];
        v22 = v9;
        v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v24[1] = v10;
        v23[2] = @"usage";
        v11 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
        v24[2] = v11;
        v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

        [v16 addObject:v12];
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v3);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_addSize:(double)size forExtensionWithComposedIdentifier:(id)identifier
{
  composedIdentifierToExtensionTotalStorage = self->_composedIdentifierToExtensionTotalStorage;
  identifierCopy = identifier;
  v8 = [(NSMutableDictionary *)composedIdentifierToExtensionTotalStorage objectForKeyedSubscript:identifierCopy];
  sizeCopy = size;
  v12 = v8;
  if (v8)
  {
    [v8 doubleValue];
    sizeCopy = v10 + size;
  }

  v11 = [NSNumber numberWithDouble:sizeCopy];
  [(NSMutableDictionary *)self->_composedIdentifierToExtensionTotalStorage setObject:v11 forKeyedSubscript:identifierCopy];

  self->_totalUsage = self->_totalUsage + size;
}

@end