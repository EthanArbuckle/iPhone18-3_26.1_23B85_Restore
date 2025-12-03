@interface BCExternalURLOpenPrompter
- (BCExternalURLOpenPrompter)init;
- (BCExternalURLOpenPrompter)initWithContext:(id)context;
- (BCExternalURLOpenPrompterDelegate)delegate;
- (BOOL)_shouldShowPromptForURL:(id)l;
- (BOOL)cacheResponses;
- (BOOL)maybePromptUserBeforeOpeningExternalURL:(id)l shouldThrottle:(BOOL)throttle promptContext:(id)context completion:(id)completion;
- (BUBlockCallThrottler)throttler;
- (id)_formattedMessageStringForURL:(id)l;
- (id)dummyCacheValue;
- (id)responseCache;
- (void)_askUserIfShouldOpenURL:(id)l promptContext:(id)context completion:(id)completion;
- (void)setCacheResponses:(BOOL)responses;
@end

@implementation BCExternalURLOpenPrompter

- (BOOL)_shouldShowPromptForURL:(id)l
{
  lCopy = l;
  v4 = UIITunesStoreResolvedURLForHTTPURL();
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    if (!lowercaseString || (+[NSURL supportediBooksInternalURLSchemes](NSURL, "supportediBooksInternalURLSchemes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:lowercaseString], v8, +[NSURL supportediBooksStoreURLSchemes](NSURL, "supportediBooksStoreURLSchemes"), v5 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v5, "containsObject:", lowercaseString), v5, v11 = objc_msgSend(lowercaseString, "isEqualToString:", @"prefs"), LOBYTE(v5) = 0, (v9 & 1) == 0) && (v10 & 1) == 0 && (v11 & 1) == 0)
    {
      LODWORD(v5) = [lCopy isStoreURL] ^ 1;
    }
  }

  return v5;
}

- (id)_formattedMessageStringForURL:(id)l
{
  lCopy = l;
  v4 = [NSMutableAttributedString alloc];
  absoluteString = [lCopy absoluteString];

  v6 = [v4 initWithString:absoluteString];
  v7 = +[UIColor grayColor];
  [v6 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

- (void)_askUserIfShouldOpenURL:(id)l promptContext:(id)context completion:(id)completion
{
  lCopy = l;
  contextCopy = context;
  completionCopy = completion;
  delegate = [(BCExternalURLOpenPrompter *)self delegate];
  v12 = delegate;
  if (completionCopy && delegate)
  {
    promptTitle = [(BCExternalURLOpenPrompter *)self promptTitle];
    v14 = [UIAlertController alertControllerWithTitle:promptTitle message:0 preferredStyle:1];

    [v14 setModalPresentationStyle:6];
    promptMessage = [(BCExternalURLOpenPrompter *)self promptMessage];
    v16 = [promptMessage length];

    if (v16)
    {
      promptMessage2 = [(BCExternalURLOpenPrompter *)self promptMessage];
      [v14 setMessage:promptMessage2];
    }

    else
    {
      promptMessage2 = [(BCExternalURLOpenPrompter *)self _formattedMessageStringForURL:lCopy];
      [v14 _setAttributedMessage:promptMessage2];
    }

    cancelButtonTitle = [(BCExternalURLOpenPrompter *)self cancelButtonTitle];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_E13D8;
    v25[3] = &unk_2CD090;
    v19 = completionCopy;
    v26 = v19;
    v20 = [UIAlertAction actionWithTitle:cancelButtonTitle style:1 handler:v25];
    [v14 addAction:v20];

    okButtonTitle = [(BCExternalURLOpenPrompter *)self okButtonTitle];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_E13EC;
    v23[3] = &unk_2CD090;
    v24 = v19;
    v22 = [UIAlertAction actionWithTitle:okButtonTitle style:0 handler:v23];
    [v14 addAction:v22];

    [v12 presentAlertController:v14 promptContext:contextCopy];
  }
}

- (BCExternalURLOpenPrompter)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = BCExternalURLOpenPrompter;
  v6 = [(BCExternalURLOpenPrompter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (BCExternalURLOpenPrompter)init
{
  v3 = objc_alloc_init(BCExternalURLOpenPrompterContext);
  v4 = [(BCExternalURLOpenPrompter *)self initWithContext:v3];

  return v4;
}

- (BUBlockCallThrottler)throttler
{
  throttler = self->_throttler;
  if (!throttler)
  {
    v4 = objc_alloc_init(BUBlockCallThrottler);
    v5 = self->_throttler;
    self->_throttler = v4;

    throttler = self->_throttler;
  }

  return throttler;
}

- (id)responseCache
{
  context = [(BCExternalURLOpenPrompter *)self context];
  responseCache = [context responseCache];

  return responseCache;
}

- (id)dummyCacheValue
{
  context = [(BCExternalURLOpenPrompter *)self context];
  dummyCacheValue = [context dummyCacheValue];

  return dummyCacheValue;
}

- (BOOL)maybePromptUserBeforeOpeningExternalURL:(id)l shouldThrottle:(BOOL)throttle promptContext:(id)context completion:(id)completion
{
  throttleCopy = throttle;
  lCopy = l;
  contextCopy = context;
  completionCopy = completion;
  if ([(BCExternalURLOpenPrompter *)self _shouldShowPromptForURL:lCopy])
  {
    responseCache = [(BCExternalURLOpenPrompter *)self responseCache];
    v14 = [responseCache objectForKey:lCopy];

    if (!v14)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_12CFA0;
      v23[3] = &unk_2CDA88;
      v23[4] = self;
      v24 = lCopy;
      v25 = contextCopy;
      v26 = responseCache;
      v27 = completionCopy;
      v19 = responseCache;
      v20 = objc_retainBlock(v23);
      throttler = [(BCExternalURLOpenPrompter *)self throttler];
      v22 = throttler;
      if (throttleCopy)
      {
        [throttler runBlockThrottled:v20];
      }

      else
      {
        [throttler runBlock:v20];
      }

      v17 = 0;
      goto LABEL_7;
    }
  }

  v15 = objc_retainBlock(completionCopy);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, 1);
  }

  v17 = 1;
LABEL_7:

  return v17;
}

- (BOOL)cacheResponses
{
  context = [(BCExternalURLOpenPrompter *)self context];
  cacheResponses = [context cacheResponses];

  return cacheResponses;
}

- (void)setCacheResponses:(BOOL)responses
{
  responsesCopy = responses;
  context = [(BCExternalURLOpenPrompter *)self context];
  [context setCacheResponses:responsesCopy];
}

- (BCExternalURLOpenPrompterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end