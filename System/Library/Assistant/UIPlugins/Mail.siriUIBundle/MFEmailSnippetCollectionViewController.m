@interface MFEmailSnippetCollectionViewController
- (BOOL)search:(id)a3 didFindResults:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (MFEmailSnippetCollectionViewController)initWithAceObject:(id)a3;
- (double)desiredHeightForWidth:(double)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)headerPunchOut;
- (id)sashItem;
- (id)speakableNamespaceProviderForAceObject:(id)a3;
- (id)viewControllerForSnippet:(id)a3 error:(id *)a4;
- (void)_prepareSiriSnippetContents;
- (void)_prepareSiriSnippetViewController;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)composeView:(id)a3 wantsOpenURL:(id)a4;
- (void)loadView;
- (void)search:(id)a3 didFinishWithError:(id)a4;
- (void)wasAddedToTranscript;
@end

@implementation MFEmailSnippetCollectionViewController

- (MFEmailSnippetCollectionViewController)initWithAceObject:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MFEmailSnippetCollectionViewController;
  v5 = [(MFEmailSnippetCollectionViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(MFEmailSnippetCollectionViewController *)v5 setSnippet:v4];
    [(MFEmailSnippetCollectionViewController *)v6 setLoading:1];
    v7 = objc_alloc_init(NSMutableArray);
    emailURLs = v6->_emailURLs;
    v6->_emailURLs = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    emails = v6->_emails;
    v6->_emails = v9;

    [(MFEmailSnippetCollectionViewController *)v6 _prepareSiriSnippetViewController];
  }

  return v6;
}

- (void)_prepareSiriSnippetViewController
{
  v27 = [(MFEmailSnippetCollectionViewController *)self snippet];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [v27 emails];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v3)
  {
    v28 = 0;
    v4 = *v31;
LABEL_3:
    v5 = 0;
    v6 = v28 <= 0x19;
    v7 = 25 - v28;
    v28 += v3;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    while (1)
    {
      if (*v31 != v4)
      {
        objc_enumerationMutation(obj);
      }

      if (v8 == v5)
      {
        break;
      }

      v9 = *(*(&v30 + 1) + 8 * v5);
      emailURLs = self->_emailURLs;
      v11 = [v9 identifier];
      [(NSMutableArray *)emailURLs addObject:v11];

      v12 = [MFAssistantEmail alloc];
      v13 = [v9 dictionary];
      v14 = [(MFAssistantEmail *)v12 initWithDictionary:v13];

      emails = self->_emails;
      v16 = [v9 identifier];
      [(NSMutableDictionary *)emails setObject:v14 forKey:v16];

      if (v3 == ++v5)
      {
        v3 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v3)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (-[NSMutableArray count](self->_emailURLs, "count") == &dword_0 + 1 && (-[NSMutableArray lastObject](self->_emailURLs, "lastObject"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isAMOSIdentifier], v17, (v18 & 1) != 0))
  {
    if (-[NSMutableArray count](self->_emailURLs, "count") != &dword_0 + 1 || (-[NSMutableArray lastObject](self->_emailURLs, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 isAMOSIdentifier], v19, !v20))
    {
      self->_snippetType = 0;
      viewCell = self->_viewCell;
      self->_viewCell = 0;

      v24 = 0;
      goto LABEL_18;
    }

    self->_snippetType = 1;
    v21 = [[MFEmailSnippetComposeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v22 = off_18278;
  }

  else
  {
    self->_snippetType = 2;
    v21 = [[MFEmailSnippetSearchResultCellView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v22 = &off_18280;
  }

  v23 = self->_viewCell;
  self->_viewCell = v21;

  v24 = [(__objc2_class *)*v22 reuseIdentifier];
LABEL_18:
  viewCellReuseIdentifier = self->_viewCellReuseIdentifier;
  self->_viewCellReuseIdentifier = v24;

  [(MFEmailSnippetCollectionViewController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
}

- (void)_prepareSiriSnippetContents
{
  if (!self->_isSnippetContentsPrepared)
  {
    if (self->_snippetType != 2)
    {
      goto LABEL_9;
    }

    v3 = objc_alloc_init(EFPromise);
    emailContentPromise = self->_emailContentPromise;
    self->_emailContentPromise = v3;

    v5 = [MFAssistant loadEmailContentForEmails:self->_emailURLs delegate:self];
    v6 = [(EFPromise *)self->_emailContentPromise future];
    v14 = 0;
    v7 = [v6 resultWithTimeout:&v14 error:5.0];
    v8 = v14;

    if (!v7)
    {
      [v5 cancel];
      v9 = [NSString stringWithFormat:@"ERROR: Content did not load in time.  Returning bogus view: %p", pthread_self()];
      v16[0] = @"MFLocalizedDescriptionKey";
      v16[1] = NSUnderlyingErrorKey;
      v17[0] = v9;
      v17[1] = v8;
      v10 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v11 = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:v10];

      v8 = v11;
    }

    if (v8)
    {
      v12 = MFLogGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v8 ef_publicDescription];
        sub_B564(v13, buf, v12);
      }
    }

    else
    {
LABEL_9:
      self->_isSnippetContentsPrepared = 1;
    }
  }
}

- (double)desiredHeightForWidth:(double)a3
{
  if (([(MFEmailSnippetCollectionViewController *)self isViewLoaded]& 1) == 0)
  {
    [(MFEmailSnippetCollectionViewController *)self loadView];
  }

  v4 = [(MFEmailSnippetCollectionViewController *)self collectionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;

  result = v6 + 10.0;
  if (self->_snippetType != 2)
  {
    return v6;
  }

  return result;
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = MFEmailSnippetCollectionViewController;
  [(MFEmailSnippetCollectionViewController *)&v4 loadView];
  if (self->_viewCell)
  {
    v3 = [(MFEmailSnippetCollectionViewController *)self collectionView];
    [v3 registerClass:objc_opt_class() forCellWithReuseIdentifier:self->_viewCellReuseIdentifier];
  }

  [(MFEmailSnippetCollectionViewController *)self _prepareSiriSnippetContents];
}

- (void)wasAddedToTranscript
{
  v4.receiver = self;
  v4.super_class = MFEmailSnippetCollectionViewController;
  [(MFEmailSnippetCollectionViewController *)&v4 wasAddedToTranscript];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4728;
  block[3] = &unk_186D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)viewControllerForSnippet:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithAceObject:v5];
  v7 = v6;
  if (a4 && !v6)
  {
    *a4 = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
    v7 = [[SiriUIErrorSnippetViewController alloc] initWithError:*a4];
  }

  return v7;
}

- (id)speakableNamespaceProviderForAceObject:(id)a3
{
  v3 = a3;
  v4 = [[MFEmailSnippetMailProvider alloc] initWithAceObject:v3];

  return v4;
}

- (id)sashItem
{
  v2 = [[SiriUISashItem alloc] initWithApplicationBundleIdentifier:@"com.apple.mobilemail"];

  return v2;
}

- (id)headerPunchOut
{
  if (self->_snippetType == 1)
  {
    v3 = objc_alloc_init(SAUIAppPunchOut);
    v4 = [(SiriUIContentCollectionViewCell *)self->_viewCell draftURL];
    [v3 setPunchOutUri:v4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MFEmailSnippetCollectionViewController *)self collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:self->_viewCellReuseIdentifier forIndexPath:v5];

  v8 = [(NSMutableArray *)self->_emailURLs count];
  if (v8 > [v5 row])
  {
    emails = self->_emails;
    v10 = -[NSMutableArray objectAtIndex:](self->_emailURLs, "objectAtIndex:", [v5 row]);
    v11 = [(NSMutableDictionary *)emails objectForKey:v10];

    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_B5BC(v11, v12);
    }

    [v7 setEmail:v11];
    snippetType = self->_snippetType;
    if (snippetType == 1)
    {
      [v7 setComposeViewDelegate:self];
      v15 = 0;
    }

    else
    {
      if (snippetType != 2)
      {
LABEL_9:

        goto LABEL_10;
      }

      [v7 setHasChevron:0];
      v14 = [v5 row];
      v15 = v14 != [(NSMutableArray *)self->_emailURLs count]- 1;
    }

    [v7 setKeylineType:v15];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(NSMutableArray *)self->_emailURLs count];
  if (v7 <= [v6 row])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    viewCell = self->_viewCell;
    emails = self->_emails;
    v10 = -[NSMutableArray objectAtIndex:](self->_emailURLs, "objectAtIndex:", [v6 row]);
    v11 = [(NSMutableDictionary *)emails objectForKey:v10];
    [(SiriUIContentCollectionViewCell *)viewCell setEmail:v11];

    v12 = self->_viewCell;
    v13 = [(MFEmailSnippetCollectionViewController *)self delegate];
    [v13 siriViewControllerExpectedWidth:self];
    [(SiriUIContentCollectionViewCell *)v12 sizeThatFits:?];
    width = v14;
    height = v16;
  }

  v18 = width;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v10 = a4;
  v5 = [(NSMutableArray *)self->_emailURLs count];
  if (v5 > [v10 item])
  {
    snippetType = self->_snippetType;
    if (snippetType == 1)
    {
      v8 = [(MFEmailSnippetCollectionViewController *)self headerPunchOut];
      v7 = [v8 punchOutUri];

      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (snippetType != 2)
      {
        goto LABEL_8;
      }

      v7 = -[NSMutableArray objectAtIndex:](self->_emailURLs, "objectAtIndex:", [v10 row]);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    v9 = [(MFEmailSnippetCollectionViewController *)self delegate];
    [v9 siriViewController:self openURL:v7 completion:0];
  }

LABEL_8:
}

- (BOOL)search:(id)a3 didFindResults:(id)a4
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = a4;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    v7 = MSResultsKeyMessageReference;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKey:v7];
        v11 = [NSURL URLWithString:v10];

        v12 = [(NSMutableDictionary *)self->_emails objectForKey:v11];
        if (!v12)
        {
          v12 = objc_alloc_init(MFAssistantEmail);
          [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
        }

        [MFAssistant permuteEmail:v12 withResults:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return 1;
}

- (void)search:(id)a3 didFinishWithError:(id)a4
{
  v6 = a4;
  v5 = [(EFPromise *)self->_emailContentPromise errorOnlyCompletionHandlerAdapter];
  (v5)[2](v5, v6);
}

- (void)composeView:(id)a3 wantsOpenURL:(id)a4
{
  v6 = a4;
  v5 = [(MFEmailSnippetCollectionViewController *)self delegate];
  [v5 siriViewController:self openURL:v6 completion:0];
}

@end