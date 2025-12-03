@interface CDXRetrieveFirstIdentificationEntriesOperation
- (CDXRetrieveFirstIdentificationEntriesOperation)initWithPhoneNumbers:(id)numbers extensionsDataSource:(id)source store:(id)store;
- (CDXRetrieveFirstIdentificationEntriesOperation)initWithPhoneNumbers:(id)numbers store:(id)store;
- (id)_canonicalizedPhoneNumbersToPhoneNumbers:(id)numbers;
- (id)_storeIdentificationEntryToIdentificationEntriesForDictionary:(id)dictionary;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXRetrieveFirstIdentificationEntriesOperation

- (CDXRetrieveFirstIdentificationEntriesOperation)initWithPhoneNumbers:(id)numbers extensionsDataSource:(id)source store:(id)store
{
  numbersCopy = numbers;
  sourceCopy = source;
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = CDXRetrieveFirstIdentificationEntriesOperation;
  v11 = [(CDXRetrieveFirstIdentificationEntriesOperation *)&v19 init];
  if (v11)
  {
    v12 = dispatch_queue_create("com.apple.callkit.calldirectory.retrievefirstidentificationentriesoperation", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [numbersCopy copy];
    phoneNumbers = v11->_phoneNumbers;
    v11->_phoneNumbers = v14;

    objc_storeStrong(&v11->_extensionsDataSource, source);
    objc_storeStrong(&v11->_store, store);
    v16 = objc_alloc_init(CXCallDirectorySanitizer);
    sanitizer = v11->_sanitizer;
    v11->_sanitizer = v16;
  }

  return v11;
}

- (CDXRetrieveFirstIdentificationEntriesOperation)initWithPhoneNumbers:(id)numbers store:(id)store
{
  storeCopy = store;
  numbersCopy = numbers;
  v8 = objc_alloc_init(CDXRetrieveFirstIdentificationEntriesOperationExtensionsDataSource);
  v9 = [(CDXRetrieveFirstIdentificationEntriesOperation *)self initWithPhoneNumbers:numbersCopy extensionsDataSource:v8 store:storeCopy];

  return v9;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXRetrieveFirstIdentificationEntriesOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012BC4;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (id)_storeIdentificationEntryToIdentificationEntriesForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dictionaryCopy count]);
  v28 = +[NSMutableDictionary dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = dictionaryCopy;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v5)
  {
    v7 = v5;
    v27 = *v31;
    *&v6 = 138412546;
    v24 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v10 = [v4 objectForKeyedSubscript:{v9, v24}];
        extensionBundleIdentifier = [v10 extensionBundleIdentifier];
        v12 = [v28 objectForKeyedSubscript:extensionBundleIdentifier];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
LABEL_10:
          v16 = objc_alloc_init(CXCallDirectoryIdentificationEntry);
          identifier = [v13 identifier];
          [v16 setExtensionIdentifier:identifier];

          localizedName = [v13 localizedName];
          [v16 setLocalizedExtensionName:localizedName];

          localizedContainingAppName = [v13 localizedContainingAppName];
          [v16 setLocalizedExtensionContainingAppName:localizedContainingAppName];

          localizedLabel = [v10 localizedLabel];
          [v16 setLocalizedLabel:localizedLabel];

          [v26 setObject:v16 forKeyedSubscript:v9];
          goto LABEL_11;
        }

        extensionsDataSource = [(CDXRetrieveFirstIdentificationEntriesOperation *)self extensionsDataSource];
        v29 = 0;
        v13 = [extensionsDataSource installedExtensionWithIdentifier:extensionBundleIdentifier error:&v29];
        v14 = v29;

        if (v13)
        {
          [v28 setObject:v13 forKeyedSubscript:extensionBundleIdentifier];
          goto LABEL_10;
        }

        v13 = sub_100001C1C();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = v24;
          v35 = extensionBundleIdentifier;
          v36 = 2112;
          v37 = v14;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error retrieving extension with store identification entry extension bundle identifier %@: %@", buf, 0x16u);
        }

LABEL_11:

        v8 = v8 + 1;
      }

      while (v7 != v8);
      v21 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
      v7 = v21;
    }

    while (v21);
  }

  v22 = [v26 copy];

  return v22;
}

- (id)_canonicalizedPhoneNumbersToPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [numbersCopy count]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = numbersCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(CDXRetrieveFirstIdentificationEntriesOperation *)self sanitizer:v18];
        v14 = [v13 canonicalizedPhoneNumber:v12];

        if (v14)
        {
          [v5 setObject:v12 forKeyedSubscript:v14];
        }

        else
        {
          v15 = sub_100001C1C();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to canonicalize phone number '%@'", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = [v5 copy];

  return v16;
}

@end