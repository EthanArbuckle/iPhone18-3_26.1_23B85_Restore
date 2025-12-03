@interface FPDocumentAlternateContents
- (FPDocumentAlternateContents)initWithAlternateContentsDictionary:(id)dictionary;
- (id)getAlternateContentsURLWrapperForItemID:(id)d;
- (void)dumpToDumper:(id)dumper;
- (void)removeAlternateContentsURLForDocumentWithItemID:(id)d;
- (void)setAlternateContentsURLWrapper:(id)wrapper forDocumentWithItemID:(id)d;
- (void)updateWithManagerAlternateContentsDictionary:(id)dictionary;
@end

@implementation FPDocumentAlternateContents

- (FPDocumentAlternateContents)initWithAlternateContentsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FPDocumentAlternateContents;
  v5 = [(FPDocumentAlternateContents *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    alternateContentsURLDictionary = v5->_alternateContentsURLDictionary;
    v5->_alternateContentsURLDictionary = v6;
  }

  return v5;
}

- (void)updateWithManagerAlternateContentsDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [dictionaryCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKeyedSubscript:{v10, v16}];
        v19 = 0;
        v12 = [FPSandboxingURLWrapper wrapperWithURL:v11 extensionClass:"com.apple.fileprovider.read-write" error:&v19];
        v13 = v19;
        if (v12)
        {
          [(FPDocumentAlternateContents *)self setAlternateContentsURLWrapper:v12 forDocumentWithItemID:v10];
        }

        else
        {
          v14 = fp_current_or_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            fp_shortDescription = [v11 fp_shortDescription];
            fp_prettyDescription = [v13 fp_prettyDescription];
            *buf = v16;
            v25 = fp_shortDescription;
            v26 = 2112;
            v27 = fp_prettyDescription;
            _os_log_error_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_ERROR, "[ERROR] couldn't create a URL wrapper for URL %@: %@ - this means iWork forgot to remove the alternate URL", buf, 0x16u);
          }
        }
      }

      v7 = [dictionaryCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setAlternateContentsURLWrapper:(id)wrapper forDocumentWithItemID:(id)d
{
  wrapperCopy = wrapper;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_alternateContentsURLDictionary setObject:wrapperCopy forKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);
}

- (id)getAlternateContentsURLWrapperForItemID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_alternateContentsURLDictionary objectForKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)removeAlternateContentsURLForDocumentWithItemID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_alternateContentsURLDictionary setObject:0 forKeyedSubscript:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)dumpToDumper:(id)dumper
{
  dumperCopy = dumper;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_alternateContentsURLDictionary copy];
  if ([v6 count])
  {
    [dumperCopy put:@" + alternate contents\n"];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__FPDocumentAlternateContents_dumpToDumper___block_invoke;
    v7[3] = &unk_1E793E860;
    v8 = dumperCopy;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }

  objc_sync_exit(selfCopy);
}

void __44__FPDocumentAlternateContents_dumpToDumper___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 put:@"     "];
  v7 = [v15 domainIdentifier];
  v8 = [v7 isEqualToString:@"NSFileProviderDomainDefaultIdentifier"];

  if ((v8 & 1) == 0)
  {
    v9 = *(a1 + 32);
    v10 = [v15 domainIdentifier];
    [v9 write:{@"%@", v10}];
  }

  v11 = *(a1 + 32);
  v12 = [v15 identifier];
  v13 = [v6 url];

  v14 = [v13 fp_shortDescription];
  [v11 write:{@"%@ - %@\n", v12, v14}];
}

@end