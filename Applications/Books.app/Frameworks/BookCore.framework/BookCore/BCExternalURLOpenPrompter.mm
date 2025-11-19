@interface BCExternalURLOpenPrompter
- (BCExternalURLOpenPrompter)init;
- (BCExternalURLOpenPrompter)initWithContext:(id)a3;
- (BCExternalURLOpenPrompterDelegate)delegate;
- (BOOL)_shouldShowPromptForURL:(id)a3;
- (BOOL)cacheResponses;
- (BOOL)maybePromptUserBeforeOpeningExternalURL:(id)a3 shouldThrottle:(BOOL)a4 promptContext:(id)a5 completion:(id)a6;
- (BUBlockCallThrottler)throttler;
- (id)_formattedMessageStringForURL:(id)a3;
- (id)dummyCacheValue;
- (id)responseCache;
- (void)_askUserIfShouldOpenURL:(id)a3 promptContext:(id)a4 completion:(id)a5;
- (void)setCacheResponses:(BOOL)a3;
@end

@implementation BCExternalURLOpenPrompter

- (BOOL)_shouldShowPromptForURL:(id)a3
{
  v3 = a3;
  v4 = UIITunesStoreResolvedURLForHTTPURL();
  if (v4)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [v3 scheme];
    v7 = [v6 lowercaseString];

    if (!v7 || (+[NSURL supportediBooksInternalURLSchemes](NSURL, "supportediBooksInternalURLSchemes"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, +[NSURL supportediBooksStoreURLSchemes](NSURL, "supportediBooksStoreURLSchemes"), v5 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v5, "containsObject:", v7), v5, v11 = objc_msgSend(v7, "isEqualToString:", @"prefs"), LOBYTE(v5) = 0, (v9 & 1) == 0) && (v10 & 1) == 0 && (v11 & 1) == 0)
    {
      LODWORD(v5) = [v3 isStoreURL] ^ 1;
    }
  }

  return v5;
}

- (id)_formattedMessageStringForURL:(id)a3
{
  v3 = a3;
  v4 = [NSMutableAttributedString alloc];
  v5 = [v3 absoluteString];

  v6 = [v4 initWithString:v5];
  v7 = +[UIColor grayColor];
  [v6 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

- (void)_askUserIfShouldOpenURL:(id)a3 promptContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BCExternalURLOpenPrompter *)self delegate];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [(BCExternalURLOpenPrompter *)self promptTitle];
    v14 = [UIAlertController alertControllerWithTitle:v13 message:0 preferredStyle:1];

    [v14 setModalPresentationStyle:6];
    v15 = [(BCExternalURLOpenPrompter *)self promptMessage];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [(BCExternalURLOpenPrompter *)self promptMessage];
      [v14 setMessage:v17];
    }

    else
    {
      v17 = [(BCExternalURLOpenPrompter *)self _formattedMessageStringForURL:v8];
      [v14 _setAttributedMessage:v17];
    }

    v18 = [(BCExternalURLOpenPrompter *)self cancelButtonTitle];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_E13D8;
    v25[3] = &unk_2CD090;
    v19 = v10;
    v26 = v19;
    v20 = [UIAlertAction actionWithTitle:v18 style:1 handler:v25];
    [v14 addAction:v20];

    v21 = [(BCExternalURLOpenPrompter *)self okButtonTitle];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_E13EC;
    v23[3] = &unk_2CD090;
    v24 = v19;
    v22 = [UIAlertAction actionWithTitle:v21 style:0 handler:v23];
    [v14 addAction:v22];

    [v12 presentAlertController:v14 promptContext:v9];
  }
}

- (BCExternalURLOpenPrompter)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BCExternalURLOpenPrompter;
  v6 = [(BCExternalURLOpenPrompter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
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
  v2 = [(BCExternalURLOpenPrompter *)self context];
  v3 = [v2 responseCache];

  return v3;
}

- (id)dummyCacheValue
{
  v2 = [(BCExternalURLOpenPrompter *)self context];
  v3 = [v2 dummyCacheValue];

  return v3;
}

- (BOOL)maybePromptUserBeforeOpeningExternalURL:(id)a3 shouldThrottle:(BOOL)a4 promptContext:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(BCExternalURLOpenPrompter *)self _shouldShowPromptForURL:v10])
  {
    v13 = [(BCExternalURLOpenPrompter *)self responseCache];
    v14 = [v13 objectForKey:v10];

    if (!v14)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_12CFA0;
      v23[3] = &unk_2CDA88;
      v23[4] = self;
      v24 = v10;
      v25 = v11;
      v26 = v13;
      v27 = v12;
      v19 = v13;
      v20 = objc_retainBlock(v23);
      v21 = [(BCExternalURLOpenPrompter *)self throttler];
      v22 = v21;
      if (v8)
      {
        [v21 runBlockThrottled:v20];
      }

      else
      {
        [v21 runBlock:v20];
      }

      v17 = 0;
      goto LABEL_7;
    }
  }

  v15 = objc_retainBlock(v12);
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
  v2 = [(BCExternalURLOpenPrompter *)self context];
  v3 = [v2 cacheResponses];

  return v3;
}

- (void)setCacheResponses:(BOOL)a3
{
  v3 = a3;
  v4 = [(BCExternalURLOpenPrompter *)self context];
  [v4 setCacheResponses:v3];
}

- (BCExternalURLOpenPrompterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end