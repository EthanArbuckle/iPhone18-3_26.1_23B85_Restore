@interface ICIndexRequestHandler
+ (BOOL)canIndexInExtension;
+ (void)initialize;
- (BOOL)isValidItemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier;
- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error;
- (id)fileURLForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier inPlace:(BOOL)place error:(id *)error;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation ICIndexRequestHandler

+ (void)initialize
{
  if (objc_opt_class() == self && qword_10000C5E0 != -1)
  {
    sub_100004450();
  }
}

+ (BOOL)canIndexInExtension
{
  if (qword_10000C5F0[0] != -1)
  {
    sub_100004464();
  }

  return byte_10000C5E8;
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  [ICIndexerStateHandler logMethodCall:1];
  v5 = +[ICIndexRequestHandler canIndexInExtension];
  v6 = os_log_create("com.apple.notes", "SearchIndexer");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      sub_1000044AC();
    }

    v8 = +[ICReindexer reindexer];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001B0C;
    v14[3] = &unk_100008400;
    v9 = &v15;
    v15 = handlerCopy;
    v10 = handlerCopy;
    [v8 reindexAllSearchableItemsWithCompletionHandler:v14];
  }

  else
  {
    if (v7)
    {
      sub_100004478();
    }

    [ICSettingsUtilities setObject:&__kCFBooleanTrue forKey:kICReindexOnLaunchKey];
    [ICIndexerStateHandler logMethodCall:0];
    v8 = +[ICReindexer reindexer];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100001BA4;
    v12[3] = &unk_100008400;
    v9 = &v13;
    v13 = handlerCopy;
    v11 = handlerCopy;
    [v8 deleteAllSearchableItemsWithCompletionHandler:v12];
  }
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  [ICIndexerStateHandler logMethodCall:2];
  v8 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100004630(identifiersCopy, v8);
  }

  v9 = +[ICReindexer reindexer];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100001D8C;
  v12[3] = &unk_100008428;
  v13 = identifiersCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = identifiersCopy;
  [v9 reindexSearchableItemsWithObjectIDURIs:v11 completionHandler:v12];
}

- (id)dataForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier error:(id *)error
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  v11 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = NSStringFromSelector(a2);
    v20 = 138412802;
    v21 = identifierCopy;
    v22 = 2112;
    v23 = typeIdentifierCopy;
    v24 = 2112;
    v25 = v18;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Asked for data for %@ with type %@ in %@", &v20, 0x20u);
  }

  if ([(ICIndexRequestHandler *)self isValidItemIdentifier:identifierCopy typeIdentifier:typeIdentifierCopy])
  {
    v12 = +[ICSearchIndexer sharedIndexer];
    newContextsForAllDataSources = [v12 newContextsForAllDataSources];
    v14 = [v12 objectForManagedObjectIDURI:identifierCopy inContexts:newContextsForAllDataSources];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 dataForTypeIdentifier:typeIdentifierCopy];
    }

    else
    {
      v15 = 0;
    }

    v16 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v19 = [v15 length];
      v20 = 134218498;
      v21 = v19;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = typeIdentifierCopy;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Returning %ld bytes for %@ with type %@", &v20, 0x20u);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)fileURLForSearchableIndex:(id)index itemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier inPlace:(BOOL)place error:(id *)error
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  v12 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v24 = NSStringFromSelector(a2);
    *buf = 138412802;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = typeIdentifierCopy;
    v34 = 2112;
    v35 = v24;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Asked for file URL for %@ with type %@ in %@", buf, 0x20u);
  }

  if ([(ICIndexRequestHandler *)self isValidItemIdentifier:identifierCopy typeIdentifier:typeIdentifierCopy])
  {
    v13 = +[ICSearchIndexer sharedIndexer];
    newContextsForAllDataSources = [v13 newContextsForAllDataSources];
    v15 = [v13 objectForManagedObjectIDURI:identifierCopy inContexts:newContextsForAllDataSources];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 fileURLForTypeIdentifier:typeIdentifierCopy];
    }

    else
    {
      v16 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = newContextsForAllDataSources;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v25 + 1) + 8 * i) reset];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v19);
    }

    v22 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v31 = v16;
      v32 = 2112;
      v33 = identifierCopy;
      v34 = 2112;
      v35 = typeIdentifierCopy;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Returning %@ for %@ with type %@", buf, 0x20u);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isValidItemIdentifier:(id)identifier typeIdentifier:(id)typeIdentifier
{
  identifierCopy = identifier;
  typeIdentifierCopy = typeIdentifier;
  if (identifierCopy && [identifierCopy length])
  {
    v7 = 1;
    if (typeIdentifierCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000047D8();
  }

  v7 = 0;
  if (!typeIdentifierCopy)
  {
LABEL_8:
    v9 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100004814();
    }

    v7 = 0;
  }

LABEL_11:

  return v7;
}

@end