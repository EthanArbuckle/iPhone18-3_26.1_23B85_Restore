@interface MFEmailSnippetCollectionViewController
- (BOOL)search:(id)search didFindResults:(id)results;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (MFEmailSnippetCollectionViewController)initWithAceObject:(id)object;
- (double)desiredHeightForWidth:(double)width;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)headerPunchOut;
- (id)sashItem;
- (id)speakableNamespaceProviderForAceObject:(id)object;
- (id)viewControllerForSnippet:(id)snippet error:(id *)error;
- (void)_prepareSiriSnippetContents;
- (void)_prepareSiriSnippetViewController;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)composeView:(id)view wantsOpenURL:(id)l;
- (void)loadView;
- (void)search:(id)search didFinishWithError:(id)error;
- (void)wasAddedToTranscript;
@end

@implementation MFEmailSnippetCollectionViewController

- (MFEmailSnippetCollectionViewController)initWithAceObject:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = MFEmailSnippetCollectionViewController;
  v5 = [(MFEmailSnippetCollectionViewController *)&v12 init];
  v6 = v5;
  if (v5)
  {
    [(MFEmailSnippetCollectionViewController *)v5 setSnippet:objectCopy];
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
  snippet = [(MFEmailSnippetCollectionViewController *)self snippet];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [snippet emails];
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
      identifier = [v9 identifier];
      [(NSMutableArray *)emailURLs addObject:identifier];

      v12 = [MFAssistantEmail alloc];
      dictionary = [v9 dictionary];
      v14 = [(MFAssistantEmail *)v12 initWithDictionary:dictionary];

      emails = self->_emails;
      identifier2 = [v9 identifier];
      [(NSMutableDictionary *)emails setObject:v14 forKey:identifier2];

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

      reuseIdentifier = 0;
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

  reuseIdentifier = [(__objc2_class *)*v22 reuseIdentifier];
LABEL_18:
  viewCellReuseIdentifier = self->_viewCellReuseIdentifier;
  self->_viewCellReuseIdentifier = reuseIdentifier;

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
    future = [(EFPromise *)self->_emailContentPromise future];
    v14 = 0;
    v7 = [future resultWithTimeout:&v14 error:5.0];
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
        ef_publicDescription = [v8 ef_publicDescription];
        sub_B564(ef_publicDescription, buf, v12);
      }
    }

    else
    {
LABEL_9:
      self->_isSnippetContentsPrepared = 1;
    }
  }
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(MFEmailSnippetCollectionViewController *)self isViewLoaded]& 1) == 0)
  {
    [(MFEmailSnippetCollectionViewController *)self loadView];
  }

  collectionViewLayout = [(MFEmailSnippetCollectionViewController *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
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
    collectionView = [(MFEmailSnippetCollectionViewController *)self collectionView];
    [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:self->_viewCellReuseIdentifier];
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

- (id)viewControllerForSnippet:(id)snippet error:(id *)error
{
  snippetCopy = snippet;
  v6 = [objc_alloc(objc_opt_class()) initWithAceObject:snippetCopy];
  v7 = v6;
  if (error && !v6)
  {
    *error = [NSError errorWithDomain:SiriUISnippetPluginErrorDomain code:101 userInfo:0];
    v7 = [[SiriUIErrorSnippetViewController alloc] initWithError:*error];
  }

  return v7;
}

- (id)speakableNamespaceProviderForAceObject:(id)object
{
  objectCopy = object;
  v4 = [[MFEmailSnippetMailProvider alloc] initWithAceObject:objectCopy];

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
    draftURL = [(SiriUIContentCollectionViewCell *)self->_viewCell draftURL];
    [v3 setPunchOutUri:draftURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MFEmailSnippetCollectionViewController *)self collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:self->_viewCellReuseIdentifier forIndexPath:pathCopy];

  v8 = [(NSMutableArray *)self->_emailURLs count];
  if (v8 > [pathCopy row])
  {
    emails = self->_emails;
    v10 = -[NSMutableArray objectAtIndex:](self->_emailURLs, "objectAtIndex:", [pathCopy row]);
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
      v14 = [pathCopy row];
      v15 = v14 != [(NSMutableArray *)self->_emailURLs count]- 1;
    }

    [v7 setKeylineType:v15];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(NSMutableArray *)self->_emailURLs count];
  if (v7 <= [pathCopy row])
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    viewCell = self->_viewCell;
    emails = self->_emails;
    v10 = -[NSMutableArray objectAtIndex:](self->_emailURLs, "objectAtIndex:", [pathCopy row]);
    v11 = [(NSMutableDictionary *)emails objectForKey:v10];
    [(SiriUIContentCollectionViewCell *)viewCell setEmail:v11];

    v12 = self->_viewCell;
    delegate = [(MFEmailSnippetCollectionViewController *)self delegate];
    [delegate siriViewControllerExpectedWidth:self];
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableArray *)self->_emailURLs count];
  if (v5 > [pathCopy item])
  {
    snippetType = self->_snippetType;
    if (snippetType == 1)
    {
      headerPunchOut = [(MFEmailSnippetCollectionViewController *)self headerPunchOut];
      punchOutUri = [headerPunchOut punchOutUri];

      if (!punchOutUri)
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

      punchOutUri = -[NSMutableArray objectAtIndex:](self->_emailURLs, "objectAtIndex:", [pathCopy row]);
      if (!punchOutUri)
      {
        goto LABEL_8;
      }
    }

    delegate = [(MFEmailSnippetCollectionViewController *)self delegate];
    [delegate siriViewController:self openURL:punchOutUri completion:0];
  }

LABEL_8:
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = results;
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

- (void)search:(id)search didFinishWithError:(id)error
{
  errorCopy = error;
  errorOnlyCompletionHandlerAdapter = [(EFPromise *)self->_emailContentPromise errorOnlyCompletionHandlerAdapter];
  (errorOnlyCompletionHandlerAdapter)[2](errorOnlyCompletionHandlerAdapter, errorCopy);
}

- (void)composeView:(id)view wantsOpenURL:(id)l
{
  lCopy = l;
  delegate = [(MFEmailSnippetCollectionViewController *)self delegate];
  [delegate siriViewController:self openURL:lCopy completion:0];
}

@end