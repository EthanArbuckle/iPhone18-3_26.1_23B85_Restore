@interface MFSuggestionAnalysisOperation
+ (id)log;
- (EFScheduler)scheduler;
- (MFSuggestionAnalysisOperation)initWithDelegate:(id)delegate presenter:(id)presenter scheduler:(id)scheduler;
- (SGFoundInSuggestionPresenter)suggestionPresenter;
- (SGSuggestionDelegate)delegate;
- (id)_concatenatedStringFromContent:(id)content;
- (id)_unsubscribeSuggestionForContentRepresentation:(id)representation;
- (id)_unsubscribeSuggestionForContentRepresentation:(id)representation shouldShowICloudUnsubscribe:(BOOL)unsubscribe;
- (id)preparePresenter:(id)presenter;
- (id)prepareUnsubscribeSuggestion:(id)suggestion;
- (void)cancel;
- (void)handleContentRepresentation:(id)representation allowUnsubscribe:(BOOL)unsubscribe;
- (void)handleContentRepresentation:(id)representation allowUnsubscribe:(BOOL)unsubscribe shouldShowICloudUnsubscribe:(BOOL)cloudUnsubscribe;
@end

@implementation MFSuggestionAnalysisOperation

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100218E50;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD698 != -1)
  {
    dispatch_once(&qword_1006DD698, block);
  }

  v2 = qword_1006DD690;

  return v2;
}

- (MFSuggestionAnalysisOperation)initWithDelegate:(id)delegate presenter:(id)presenter scheduler:(id)scheduler
{
  delegateCopy = delegate;
  presenterCopy = presenter;
  schedulerCopy = scheduler;
  v14.receiver = self;
  v14.super_class = MFSuggestionAnalysisOperation;
  v11 = [(MFSuggestionAnalysisOperation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeWeak(&v12->_suggestionPresenter, presenterCopy);
    objc_storeWeak(&v12->_scheduler, schedulerCopy);
  }

  return v12;
}

- (void)cancel
{
  isCancelled = [(MFSuggestionAnalysisOperation *)self isCancelled];
  [(MFSuggestionAnalysisOperation *)self setCancelled:1];
  if ((isCancelled & 1) == 0)
  {
    suggestionPresenter = [(MFSuggestionAnalysisOperation *)self suggestionPresenter];
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    suggestions = [suggestionPresenter suggestions];
    v6 = [suggestions countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(suggestions);
          }

          [suggestionPresenter removeSuggestion:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [suggestions countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (id)preparePresenter:(id)presenter
{
  presenterCopy = presenter;
  suggestionPresenter = [(MFSuggestionAnalysisOperation *)self suggestionPresenter];
  searchableItem = [presenterCopy searchableItem];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  suggestions = [suggestionPresenter suggestions];
  v8 = [suggestions countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(suggestions);
        }

        [suggestionPresenter removeSuggestion:*(*(&v14 + 1) + 8 * i)];
      }

      v8 = [suggestions countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  if (searchableItem && +[MSSiriIntelligenceSettings canShowSiriSuggestions])
  {
    v11 = [searchableItem copy];
    v18 = v11;
    v12 = [NSArray arrayWithObjects:&v18 count:1];
    [suggestionPresenter addSuggestionsFromSearchableItems:v12 options:0 filter:0];
  }

  return suggestionPresenter;
}

- (void)handleContentRepresentation:(id)representation allowUnsubscribe:(BOOL)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  representationCopy = representation;
  isCancelled = [(MFSuggestionAnalysisOperation *)self isCancelled];
  v7 = representationCopy;
  if (representationCopy)
  {
    v8 = isCancelled;
  }

  else
  {
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v9 = [(MFSuggestionAnalysisOperation *)self preparePresenter:?];
    if (unsubscribeCopy)
    {
      v10 = [(MFSuggestionAnalysisOperation *)self _unsubscribeSuggestionForContentRepresentation:representationCopy];
      if (v10)
      {
        [v9 addSuggestion:v10];
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = representationCopy;
  }
}

- (id)_concatenatedStringFromContent:(id)content
{
  contentCopy = content;
  v17 = objc_alloc_init(MFStringAccumulator);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = contentCopy;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:{16, contentCopy}];
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
          htmlData = [v8 htmlData];
          if (htmlData)
          {
            preferredCharacterSet = [v8 preferredCharacterSet];
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

  string = [v17 string];

  return string;
}

- (id)prepareUnsubscribeSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  unsubscribeCommand = [suggestionCopy unsubscribeCommand];
  if (unsubscribeCommand)
  {
    v6 = objc_alloc_init(MFListUnsubscribeSuggestion_iOS);
    delegate = [(MFSuggestionAnalysisOperation *)self delegate];
    suggestion = [(MFListUnsubscribeSuggestion_iOS *)v6 suggestion];
    [suggestion setSuggestionDelegate:delegate];

    [(MFListUnsubscribeSuggestion_iOS *)v6 setListUnsubscribeCommand:unsubscribeCommand];
    suggestionPresenter = [(MFSuggestionAnalysisOperation *)self suggestionPresenter];
    [(MFListUnsubscribeSuggestion_iOS *)v6 setSuggestionPresenter:suggestionPresenter];

    [(MFListUnsubscribeSuggestion_iOS *)v6 setContentRepresentation:suggestionCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_unsubscribeSuggestionForContentRepresentation:(id)representation
{
  v3 = [(MFSuggestionAnalysisOperation *)self prepareUnsubscribeSuggestion:representation];
  v4 = v3;
  if (v3)
  {
    suggestion = [v3 suggestion];
  }

  else
  {
    suggestion = 0;
  }

  return suggestion;
}

- (void)handleContentRepresentation:(id)representation allowUnsubscribe:(BOOL)unsubscribe shouldShowICloudUnsubscribe:(BOOL)cloudUnsubscribe
{
  cloudUnsubscribeCopy = cloudUnsubscribe;
  unsubscribeCopy = unsubscribe;
  representationCopy = representation;
  isCancelled = [(MFSuggestionAnalysisOperation *)self isCancelled];
  v9 = representationCopy;
  if (representationCopy)
  {
    v10 = isCancelled;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    v11 = [(MFSuggestionAnalysisOperation *)self preparePresenter:?];
    if (unsubscribeCopy)
    {
      v12 = [(MFSuggestionAnalysisOperation *)self _unsubscribeSuggestionForContentRepresentation:representationCopy shouldShowICloudUnsubscribe:cloudUnsubscribeCopy];
      if (v12)
      {
        [v11 addSuggestion:v12];
      }
    }

    else
    {
      v12 = 0;
    }

    v9 = representationCopy;
  }
}

- (id)_unsubscribeSuggestionForContentRepresentation:(id)representation shouldShowICloudUnsubscribe:(BOOL)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  representationCopy = representation;
  v7 = [(MFSuggestionAnalysisOperation *)self prepareUnsubscribeSuggestion:representationCopy];
  if (!v7)
  {
    suggestion = 0;
    goto LABEL_12;
  }

  v8 = +[UIApplication sharedApplication];
  getiCloudMailCleanupService = [v8 getiCloudMailCleanupService];

  listUnsubscribeCommand = [v7 listUnsubscribeCommand];
  sender = [listUnsubscribeCommand sender];
  emailAddressValue = [sender emailAddressValue];

  if (!emailAddressValue)
  {
    [v7 setShouldShowICloudUnsubscribe:0];
    v19 = +[MFSuggestionAnalysisOperation log];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      listUnsubscribeCommand2 = [v7 listUnsubscribeCommand];
      sender2 = [listUnsubscribeCommand2 sender];
      v22 = [EFPrivacy fullyOrPartiallyRedactedStringForString:sender2];
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Invalid email address for sender: %@", &v24, 0xCu);
    }

    goto LABEL_10;
  }

  listUnsubscribeCommand3 = [v7 listUnsubscribeCommand];
  sender3 = [listUnsubscribeCommand3 sender];
  emailAddressValue2 = [sender3 emailAddressValue];
  simpleAddress = [emailAddressValue2 simpleAddress];
  v17 = [getiCloudMailCleanupService isSenderEmailAddressBlocked:simpleAddress];

  if (!(unsubscribeCopy & v17))
  {
    [v7 setShouldShowICloudUnsubscribe:unsubscribeCopy];
LABEL_10:
    suggestion = [v7 suggestion];
    goto LABEL_11;
  }

  suggestion = 0;
LABEL_11:

LABEL_12:

  return suggestion;
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