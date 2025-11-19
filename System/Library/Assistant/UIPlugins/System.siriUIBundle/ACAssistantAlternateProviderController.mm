@interface ACAssistantAlternateProviderController
- (ACAssistantAlternateProviderController)initWithAlternateProviderSnippet:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (double)desiredHeightForWidth:(double)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)sashItem;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)loadView;
@end

@implementation ACAssistantAlternateProviderController

- (ACAssistantAlternateProviderController)initWithAlternateProviderSnippet:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ACAssistantAlternateProviderController;
  v6 = [(ACAssistantAlternateProviderController *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(ACAssistantAlternateProviderController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    objc_storeStrong(&v7->_snippet, a3);
    v8 = [v5 title];
    snippetTitle = v7->_snippetTitle;
    v7->_snippetTitle = v8;

    v10 = [v5 alternateProviderResults];
    v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);
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
  v3 = [(ACAssistantAlternateProviderController *)self collectionView];
  v4 = [(ACAssistantAlternateProviderController *)self delegate];
  v5 = [v4 persistentDataStoreForSiriViewController:self];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(SAUIAlternateProviderSnippet *)self->_snippet alternateProviderResults];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [[ACAssistantAlternateProviderResultView alloc] initWithAlternateProviderResult:*(*(&v17 + 1) + 8 * v10) usingPersistentStore:v5];
        [(NSMutableArray *)self->_viewArray addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(ACAssistantAlternateProviderController *)self delegate];
  [v12 siriViewControllerExpectedWidth:self];
  v14 = v13;

  [v3 setFrame:{0.0, 0.0, v14, 0.0}];
  [v3 setDataSource:self];
  [v3 setDelegate:self];
  v15 = objc_opt_class();
  v16 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [v3 registerClass:v15 forCellWithReuseIdentifier:v16];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (([(ACAssistantAlternateProviderController *)self isViewLoaded]& 1) == 0)
  {
    [(ACAssistantAlternateProviderController *)self loadView];
  }

  v4 = [(ACAssistantAlternateProviderController *)self collectionView];
  v5 = [v4 collectionViewLayout];
  [v5 collectionViewContentSize];
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

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ACAssistantAlternateProviderController *)self collectionView];
  v7 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v5];

  [v8 setHasChevron:0];
  viewArray = self->_viewArray;
  v10 = [v5 item];

  v11 = [(NSMutableArray *)viewArray objectAtIndex:v10];
  [v11 edgeInsets];
  [v8 setCustomViewEdgeInsets:?];
  [v8 setCustomView:v11];
  v12 = [(NSMutableArray *)self->_viewArray lastObject];
  v13 = v11 != v12;

  [v8 setKeylineType:v13];

  return v8;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(ACAssistantAlternateProviderController *)self delegate];
  [v7 siriViewControllerExpectedWidth:self];
  v9 = v8;

  viewArray = self->_viewArray;
  v11 = [v6 item];

  v12 = [(NSMutableArray *)viewArray objectAtIndex:v11];
  [v12 sizeThatFits:{v9, 1.79769313e308}];
  v14 = v13;

  v15 = v9;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  viewArray = self->_viewArray;
  v8 = [v6 row];

  v11 = [(NSMutableArray *)viewArray objectAtIndex:v8];
  v9 = [(ACAssistantAlternateProviderController *)self delegate];
  v10 = [v11 commands];
  [v9 siriViewController:self performAceCommands:v10];
}

@end