@interface _MessageSearchAggregationContext
- (NSOrderedSet)allFoundRanges;
- (void)dealloc;
- (void)foundRange:(id)a3 forSearchString:(id)a4 inDocument:(id)a5;
- (void)invalidate;
- (void)invalidateFoundRange:(id)a3 inDocument:(id)a4;
- (void)webProcessDidBlockLoadingResourceWithURL:(id)a3;
- (void)webProcessDidFailLoadingResourceWithURL:(id)a3;
- (void)webProcessDidFinishDocumentLoadForURL:(id)a3 andRequestedRemoteURLs:(id)a4;
- (void)webProcessDidFinishLoadForURL:(id)a3;
- (void)webProcessFailedToLoadResourceWithProxyForURL:(id)a3 failureReason:(int64_t)a4;
@end

@implementation _MessageSearchAggregationContext

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(EFManualCancelationToken *)self->_token cancel];
  v3.receiver = self;
  v3.super_class = _MessageSearchAggregationContext;
  [(_MessageSearchAggregationContext *)&v3 dealloc];
}

- (void)webProcessDidBlockLoadingResourceWithURL:(id)a3
{
  v4 = a3;
  v5 = sub_100053E68();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      itemID = self->_itemID;
    }

    else
    {
      itemID = 0;
    }

    v7 = itemID;
    v8 = [v4 absoluteString];
    v9 = [EFPrivacy fullyRedactedStringForString:v8];
    v10 = 136315650;
    v11 = "[_MessageSearchAggregationContext webProcessDidBlockLoadingResourceWithURL:]";
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: itemID:%{public}@, url:%{public}@", &v10, 0x20u);
  }
}

- (void)webProcessDidFailLoadingResourceWithURL:(id)a3
{
  v4 = a3;
  v5 = sub_100053E68();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      itemID = self->_itemID;
    }

    else
    {
      itemID = 0;
    }

    v7 = itemID;
    v8 = [v4 absoluteString];
    v9 = [EFPrivacy fullyRedactedStringForString:v8];
    v10 = 136315650;
    v11 = "[_MessageSearchAggregationContext webProcessDidFailLoadingResourceWithURL:]";
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v9;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s: itemID:%{public}@, url:%{public}@", &v10, 0x20u);
  }
}

- (void)webProcessDidFinishDocumentLoadForURL:(id)a3 andRequestedRemoteURLs:(id)a4
{
  v5 = a3;
  v6 = sub_100053E68();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      itemID = self->_itemID;
    }

    else
    {
      itemID = 0;
    }

    v8 = itemID;
    v9 = [v5 absoluteString];
    v10 = [EFPrivacy fullyRedactedStringForString:v9];
    v11 = 136315650;
    v12 = "[_MessageSearchAggregationContext webProcessDidFinishDocumentLoadForURL:andRequestedRemoteURLs:]";
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: itemID:%{public}@, url:%{public}@", &v11, 0x20u);
  }
}

- (void)webProcessFailedToLoadResourceWithProxyForURL:(id)a3 failureReason:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100053E68();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      itemID = self->_itemID;
    }

    else
    {
      itemID = 0;
    }

    v9 = itemID;
    v10 = [v6 absoluteString];
    v11 = [EFPrivacy fullyRedactedStringForString:v10];
    v12 = 136315906;
    v13 = "[_MessageSearchAggregationContext webProcessFailedToLoadResourceWithProxyForURL:failureReason:]";
    v14 = 2114;
    v15 = v9;
    v16 = 2048;
    v17 = a4;
    v18 = 2112;
    v19 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s: itemID:%{public}@ reason:%ld  %@", &v12, 0x2Au);
  }
}

- (void)foundRange:(id)a3 forSearchString:(id)a4 inDocument:(id)a5
{
  v11 = a3;
  if (self)
  {
    token = self->_token;
  }

  else
  {
    token = 0;
  }

  if (([(EFManualCancelationToken *)token isCanceled]& 1) == 0)
  {
    if (self)
    {
      v7 = self->_foundRanges;
      itemID = self->_itemID;
    }

    else
    {
      v7 = 0;
      itemID = 0;
    }

    v9 = itemID;
    v10 = sub_10005649C(ConversationSearchTextRange, v11, v9);
    [(NSMutableOrderedSet *)v7 addObject:v10];
  }
}

- (void)invalidateFoundRange:(id)a3 inDocument:(id)a4
{
  v10 = a3;
  if (self)
  {
    token = self->_token;
  }

  else
  {
    token = 0;
  }

  if (([(EFManualCancelationToken *)token isCanceled]& 1) == 0)
  {
    if (self)
    {
      v6 = self->_foundRanges;
      itemID = self->_itemID;
    }

    else
    {
      v6 = 0;
      itemID = 0;
    }

    v8 = itemID;
    v9 = sub_10005649C(ConversationSearchTextRange, v10, v8);
    [(NSMutableOrderedSet *)v6 removeObject:v9];
  }
}

- (void)invalidate
{
  v2 = self;
  if (self)
  {
    self = self->_token;
  }

  if (([(_MessageSearchAggregationContext *)self isCanceled]& 1) == 0)
  {
    if (v2)
    {
      foundRanges = v2->_foundRanges;
    }

    else
    {
      foundRanges = 0;
    }

    [(NSMutableOrderedSet *)foundRanges removeAllObjects];
  }
}

- (NSOrderedSet)allFoundRanges
{
  if (self)
  {
    self = self->_foundRanges;
  }

  return self;
}

- (void)webProcessDidFinishLoadForURL:(id)a3
{
  v4 = a3;
  if (self)
  {
    token = self->_token;
  }

  else
  {
    token = 0;
  }

  if (([(EFManualCancelationToken *)token isCanceled]& 1) == 0)
  {
    if (self)
    {
      loadingController = self->_loadingController;
    }

    else
    {
      loadingController = 0;
    }

    v7 = loadingController;
    v8 = [(MFWebViewLoadingController *)v7 webView];

    v9 = sub_100053E68();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        itemID = self->_itemID;
      }

      else
      {
        itemID = 0;
      }

      v11 = itemID;
      v12 = [v4 absoluteString];
      v13 = [EFPrivacy fullyRedactedStringForString:v12];
      *v18 = 136315906;
      sub_100007E94();
      *&v18[7] = v11;
      v18[11] = v14;
      v19 = v15;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: itemID:%{public}@, url:%{public}@, webview: %@", v18, 0x2Au);
    }

    if (self)
    {
      v16 = self->_searchString;
      searchOptions = self->_searchOptions;
    }

    else
    {
      v16 = 0;
      searchOptions = 0;
    }

    [v8 performTextSearchWithQueryString:v16 usingOptions:searchOptions resultAggregator:{self, *v18}];
  }
}

@end