@interface ACAssistantAlternateProviderController
- (ACAssistantAlternateProviderController)initWithAlternateProviderSnippet:(id)snippet;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (double)desiredHeightForWidth:(double)width;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)sashItem;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)loadView;
@end

@implementation ACAssistantAlternateProviderController

- (ACAssistantAlternateProviderController)initWithAlternateProviderSnippet:(id)snippet
{
  snippetCopy = snippet;
  v14.receiver = self;
  v14.super_class = ACAssistantAlternateProviderController;
  v6 = [(ACAssistantAlternateProviderController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(ACAssistantAlternateProviderController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    objc_storeStrong(&v7->_snippet, snippet);
    title = [snippetCopy title];
    snippetTitle = v7->_snippetTitle;
    v7->_snippetTitle = title;

    alternateProviderResults = [snippetCopy alternateProviderResults];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [alternateProviderResults count]);
    viewArray = v7->_viewArray;
    v7->_viewArray = v11;
  }

  return v7;
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = ACAssistantAlternateProviderController;
  [(ACAssistantAlternateProviderController *)&v21 loadView];
  collectionView = [(ACAssistantAlternateProviderController *)self collectionView];
  delegate = [(ACAssistantAlternateProviderController *)self delegate];
  v5 = [delegate persistentDataStoreForSiriViewController:self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  alternateProviderResults = [(SAUIAlternateProviderSnippet *)self->_snippet alternateProviderResults];
  v7 = [alternateProviderResults countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(alternateProviderResults);
        }

        v11 = [[ACAssistantAlternateProviderResultView alloc] initWithAlternateProviderResult:*(*(&v17 + 1) + 8 * v10) usingPersistentStore:v5];
        [(NSMutableArray *)self->_viewArray addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [alternateProviderResults countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  delegate2 = [(ACAssistantAlternateProviderController *)self delegate];
  [delegate2 siriViewControllerExpectedWidth:self];
  v14 = v13;

  [collectionView setFrame:{0.0, 0.0, v14, 0.0}];
  [collectionView setDataSource:self];
  [collectionView setDelegate:self];
  v15 = objc_opt_class();
  v16 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v15 forCellWithReuseIdentifier:v16];
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(ACAssistantAlternateProviderController *)self isViewLoaded]& 1) == 0)
  {
    [(ACAssistantAlternateProviderController *)self loadView];
  }

  collectionView = [(ACAssistantAlternateProviderController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v7 = v6;

  return v7;
}

- (id)sashItem
{
  v2 = [SiriUISashItem alloc];
  v3 = +[SiriUIUtilities defaultBrowserBundleIdentifier];
  v4 = [v2 initWithApplicationBundleIdentifier:v3];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 siriUILocalizedStringForKey:@"OTHER_SOURCES" table:0];
  [v4 setTitle:v6];

  return v4;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(ACAssistantAlternateProviderController *)self collectionView];
  v7 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v8 = [collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:pathCopy];

  [v8 setHasChevron:0];
  viewArray = self->_viewArray;
  item = [pathCopy item];

  v11 = [(NSMutableArray *)viewArray objectAtIndex:item];
  [v11 edgeInsets];
  [v8 setCustomViewEdgeInsets:?];
  [v8 setCustomView:v11];
  lastObject = [(NSMutableArray *)self->_viewArray lastObject];
  v13 = v11 != lastObject;

  [v8 setKeylineType:v13];

  return v8;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(ACAssistantAlternateProviderController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v9 = v8;

  viewArray = self->_viewArray;
  item = [pathCopy item];

  v12 = [(NSMutableArray *)viewArray objectAtIndex:item];
  [v12 sizeThatFits:{v9, 1.79769313e308}];
  v14 = v13;

  v15 = v9;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  viewArray = self->_viewArray;
  v8 = [pathCopy row];

  v11 = [(NSMutableArray *)viewArray objectAtIndex:v8];
  delegate = [(ACAssistantAlternateProviderController *)self delegate];
  commands = [v11 commands];
  [delegate siriViewController:self performAceCommands:commands];
}

@end