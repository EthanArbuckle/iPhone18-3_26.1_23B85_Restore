@interface SAStructuredDictationItem
- (id)ad_transcriptionResults;
@end

@implementation SAStructuredDictationItem

- (id)ad_transcriptionResults
{
  v3 = [NSMutableArray alloc];
  v4 = [(SAStructuredDictationItem *)self resultOptions];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(SAStructuredDictationItem *)self resultOptions];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v19;
    *&v8 = 136315394;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (!v10)
        {
          if ([*(*(&v18 + 1) + 8 * i) ad_transcriptionResultRequiresAddressBook])
          {
            v10 = objc_alloc_init(ADAddressBookManager);
          }

          else
          {
            v10 = 0;
          }
        }

        v14 = [v13 ad_transcriptionResultWithAddressBookManager:{v10, v17}];
        if (v14)
        {
          [v5 addObject:v14];
        }

        else
        {
          v15 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v23 = "[SAStructuredDictationItem(StructuredDictation) ad_transcriptionResults]";
            v24 = 2112;
            v25 = v13;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Don't know how to create a transcription result for %@", buf, 0x16u);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v5;
}

@end