@interface SiriAlternativeParaphraseSuggestionViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForWidth:(double)width;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureReusableHeaderView:(id)view;
- (void)createViewArray;
- (void)loadView;
- (void)setAceObject:(id)object;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SiriAlternativeParaphraseSuggestionViewController

- (void)setAceObject:(id)object
{
  v19.receiver = self;
  v19.super_class = SiriAlternativeParaphraseSuggestionViewController;
  objectCopy = object;
  [(SiriAlternativeParaphraseSuggestionViewController *)&v19 setAceObject:?];
  objc_storeStrong(&self->_suggestedResultsPod, object);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  suggestedResults = [(SAARParaphrasedSuggestedResultsPod *)self->_suggestedResultsPod suggestedResults];
  v6 = [suggestedResults countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(suggestedResults);
        }

        v10 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = v10;
          displayText = [v11 displayText];
          *buf = 136315394;
          v21 = "[SiriAlternativeParaphraseSuggestionViewController setAceObject:]";
          v22 = 2112;
          v23 = displayText;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%s Paraphrase suggestion: %@", buf, 0x16u);
        }
      }

      v7 = [suggestedResults countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)createViewArray
{
  v3 = +[NSMutableArray array];
  viewArray = self->_viewArray;
  self->_viewArray = v3;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  suggestedResults = [(SAARParaphrasedSuggestedResultsPod *)self->_suggestedResultsPod suggestedResults];
  v6 = [suggestedResults countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(suggestedResults);
        }

        v10 = [[SiriAlternativeParaphraseSuggestionResultView alloc] initWithAlternativeSuggestionResult:*(*(&v13 + 1) + 8 * v9)];
        [(NSMutableArray *)self->_viewArray addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [suggestedResults countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  collectionView = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionView];
  [collectionView reloadData];

  collectionViewLayout = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SiriAlternativeParaphraseSuggestionViewController;
  [(SiriAlternativeParaphraseSuggestionViewController *)&v6 loadView];
  [(SiriAlternativeParaphraseSuggestionViewController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  collectionView = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  [(SiriAlternativeParaphraseSuggestionViewController *)self createViewArray];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SiriAlternativeParaphraseSuggestionViewController;
  [(SiriAlternativeParaphraseSuggestionViewController *)&v3 viewWillAppear:appear];
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(SiriAlternativeParaphraseSuggestionViewController *)self isViewLoaded]& 1) == 0)
  {
    [(SiriAlternativeParaphraseSuggestionViewController *)self loadView];
  }

  collectionViewLayout = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;

  return v6;
}

- (void)configureReusableHeaderView:(id)view
{
  suggestedResultsPod = self->_suggestedResultsPod;
  viewCopy = view;
  title = [(SAARParaphrasedSuggestedResultsPod *)suggestedResultsPod title];
  _privateDelegate = [(SiriAlternativeParaphraseSuggestionViewController *)self _privateDelegate];
  v7 = [_privateDelegate localeForSiriViewController:self];
  [viewCopy configureWithText:title locale:v7];
}

- (double)desiredHeightForHeaderView
{
  v2 = objc_opt_class();

  [v2 defaultHeight];
  return result;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [v9 setHasChevron:0];
  viewArray = self->_viewArray;
  item = [pathCopy item];

  v12 = [(NSMutableArray *)viewArray objectAtIndex:item];
  [v12 edgeInsets];
  [v9 setCustomViewEdgeInsets:?];
  [v9 setCustomView:v12];
  lastObject = [(NSMutableArray *)self->_viewArray lastObject];
  v14 = v12 != lastObject;

  [v9 setKeylineType:v14];

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  viewArray = self->_viewArray;
  v8 = [pathCopy row];

  v14 = [(NSMutableArray *)viewArray objectAtIndex:v8];
  responseText = [v14 responseText];
  if (responseText)
  {
    v10 = objc_alloc_init(SAUIListItem);
    [v10 setSelectionText:responseText];
    delegate = [(SiriAlternativeParaphraseSuggestionViewController *)self delegate];
    [delegate siriViewController:self addSelectionResponse:v10];
  }

  delegate2 = [(SiriAlternativeParaphraseSuggestionViewController *)self delegate];
  commands = [v14 commands];
  [delegate2 siriViewController:self performAceCommands:commands];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SiriAlternativeParaphraseSuggestionViewController *)self delegate];
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

@end