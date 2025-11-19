@interface MFSuggestionAnalysisOperation
+ (id)log;
- (EFScheduler)scheduler;
- (MFSuggestionAnalysisOperation)initWithDelegate:(id)a3 presenter:(id)a4 scheduler:(id)a5;
- (SGFoundInSuggestionPresenter)suggestionPresenter;
- (SGSuggestionDelegate)delegate;
- (id)_concatenatedStringFromContent:(id)a3;
- (id)_unsubscribeSuggestionForContentRepresentation:(id)a3;
- (id)_unsubscribeSuggestionForContentRepresentation:(id)a3 shouldShowICloudUnsubscribe:(BOOL)a4;
- (id)preparePresenter:(id)a3;
- (id)prepareUnsubscribeSuggestion:(id)a3;
- (void)cancel;
- (void)handleContentRepresentation:(id)a3 allowUnsubscribe:(BOOL)a4;
- (void)handleContentRepresentation:(id)a3 allowUnsubscribe:(BOOL)a4 shouldShowICloudUnsubscribe:(BOOL)a5;
@end

@implementation MFSuggestionAnalysisOperation

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100218E50;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD698 != -1)
  {
    dispatch_once(&qword_1006DD698, block);
  }

  v2 = qword_1006DD690;

  return v2;
}

- (MFSuggestionAnalysisOperation)initWithDelegate:(id)a3 presenter:(id)a4 scheduler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MFSuggestionAnalysisOperation;
  v11 = [(MFSuggestionAnalysisOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeWeak(&v12->_suggestionPresenter, v9);
    objc_storeWeak(&v12->_scheduler, v10);
  }

  return v12;
}

- (void)cancel
{
  v3 = [(MFSuggestionAnalysisOperation *)self isCancelled];
  [(MFSuggestionAnalysisOperation *)self setCancelled:1];
  if ((v3 & 1) == 0)
  {
    v4 = [(MFSuggestionAnalysisOperation *)self suggestionPresenter];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v4 suggestions];
    v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v6)
    {
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [v4 removeSuggestion:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)preparePresenter:(id)a3
{
  v4 = a3;
  v5 = [(MFSuggestionAnalysisOperation *)self suggestionPresenter];
  v6 = [v4 searchableItem];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 suggestions];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v5 removeSuggestion:*(*(&v14 + 1) + 8 * i)];
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if (v6 && +[MSSiriIntelligenceSettings canShowSiriSuggestions])
  {
    v11 = [v6 copy];
    v18 = v11;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    [v5 addSuggestionsFromSearchableItems:v12 options:0 filter:0];
  }

  return v5;
}

- (void)handleContentRepresentation:(id)a3 allowUnsubscribe:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(MFSuggestionAnalysisOperation *)self isCancelled];
  v7 = v11;
  if (v11)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = [(MFSuggestionAnalysisOperation *)self preparePresenter:?];
    if (v4)
    {
      v10 = [(MFSuggestionAnalysisOperation *)self _unsubscribeSuggestionForContentRepresentation:v11];
      if (v10)
      {
        [v9 addSuggestion:v10];
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = v11;
  }
}

- (id)_concatenatedStringFromContent:(id)a3
{
  v16 = a3;
  v17 = objc_alloc_init(MFStringAccumulator);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v16;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:{16, v16}];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = [v8 htmlData];
          if (v9)
          {
            v10 = [v8 preferredCharacterSet];
            v11 = MFEncodingForCharset();
            v12 = MFCreateStringWithData();
            if (v12)
            {
              v13 = 1;
            }

            else
            {
              v13 = v11 == -1;
            }

            if (!v13)
            {
              v12 = MFCreateStringWithData();
            }

            if (v12)
            {
              [v17 appendString:v12];
            }
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  v14 = [v17 string];

  return v14;
}

- (id)prepareUnsubscribeSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 unsubscribeCommand];
  if (v5)
  {
    v6 = objc_alloc_init(MFListUnsubscribeSuggestion_iOS);
    v7 = [(MFSuggestionAnalysisOperation *)self delegate];
    v8 = [(MFListUnsubscribeSuggestion_iOS *)v6 suggestion];
    [v8 setSuggestionDelegate:v7];

    [(MFListUnsubscribeSuggestion_iOS *)v6 setListUnsubscribeCommand:v5];
    v9 = [(MFSuggestionAnalysisOperation *)self suggestionPresenter];
    [(MFListUnsubscribeSuggestion_iOS *)v6 setSuggestionPresenter:v9];

    [(MFListUnsubscribeSuggestion_iOS *)v6 setContentRepresentation:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_unsubscribeSuggestionForContentRepresentation:(id)a3
{
  v3 = [(MFSuggestionAnalysisOperation *)self prepareUnsubscribeSuggestion:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 suggestion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleContentRepresentation:(id)a3 allowUnsubscribe:(BOOL)a4 shouldShowICloudUnsubscribe:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v13 = a3;
  v8 = [(MFSuggestionAnalysisOperation *)self isCancelled];
  v9 = v13;
  if (v13)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v11 = [(MFSuggestionAnalysisOperation *)self preparePresenter:?];
    if (v6)
    {
      v12 = [(MFSuggestionAnalysisOperation *)self _unsubscribeSuggestionForContentRepresentation:v13 shouldShowICloudUnsubscribe:v5];
      if (v12)
      {
        [v11 addSuggestion:v12];
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = v13;
  }
}

- (id)_unsubscribeSuggestionForContentRepresentation:(id)a3 shouldShowICloudUnsubscribe:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MFSuggestionAnalysisOperation *)self prepareUnsubscribeSuggestion:v6];
  if (!v7)
  {
    v18 = 0;
    goto LABEL_12;
  }

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 getiCloudMailCleanupService];

  v10 = [v7 listUnsubscribeCommand];
  v11 = [v10 sender];
  v12 = [v11 emailAddressValue];

  if (!v12)
  {
    [v7 setShouldShowICloudUnsubscribe:0];
    v19 = +[MFSuggestionAnalysisOperation log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v7 listUnsubscribeCommand];
      v21 = [v20 sender];
      v22 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v21];
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Invalid email address for sender: %@", &v24, 0xCu);
    }

    goto LABEL_10;
  }

  v13 = [v7 listUnsubscribeCommand];
  v14 = [v13 sender];
  v15 = [v14 emailAddressValue];
  v16 = [v15 simpleAddress];
  v17 = [v9 isSenderEmailAddressBlocked:v16];

  if (!(v4 & v17))
  {
    [v7 setShouldShowICloudUnsubscribe:v4];
LABEL_10:
    v18 = [v7 suggestion];
    goto LABEL_11;
  }

  v18 = 0;
LABEL_11:

LABEL_12:

  return v18;
}

- (SGSuggestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (EFScheduler)scheduler
{
  WeakRetained = objc_loadWeakRetained(&self->_scheduler);

  return WeakRetained;
}

- (SGFoundInSuggestionPresenter)suggestionPresenter
{
  WeakRetained = objc_loadWeakRetained(&self->_suggestionPresenter);

  return WeakRetained;
}

@end