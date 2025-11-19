@interface SiriAlternativeParaphraseSuggestionViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForWidth:(double)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureReusableHeaderView:(id)a3;
- (void)createViewArray;
- (void)loadView;
- (void)setAceObject:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SiriAlternativeParaphraseSuggestionViewController

- (void)setAceObject:(id)a3
{
  v19.receiver = self;
  v19.super_class = SiriAlternativeParaphraseSuggestionViewController;
  v14 = a3;
  [(SiriAlternativeParaphraseSuggestionViewController *)&v19 setAceObject:?];
  objc_storeStrong(&self->_suggestedResultsPod, a3);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SAARParaphrasedSuggestedResultsPod *)self->_suggestedResultsPod suggestedResults];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v24 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = v10;
          v13 = [v11 displayText];
          *buf = 136315394;
          v21 = "[SiriAlternativeParaphraseSuggestionViewController setAceObject:]";
          v22 = 2112;
          v23 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%s Paraphrase suggestion: %@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v24 count:16];
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
  v5 = [(SAARParaphrasedSuggestedResultsPod *)self->_suggestedResultsPod suggestedResults];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [[SiriAlternativeParaphraseSuggestionResultView alloc] initWithAlternativeSuggestionResult:*(*(&v13 + 1) + 8 * v9)];
        [(NSMutableArray *)self->_viewArray addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionView];
  [v11 reloadData];

  v12 = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionViewLayout];
  [v12 invalidateLayout];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SiriAlternativeParaphraseSuggestionViewController;
  [(SiriAlternativeParaphraseSuggestionViewController *)&v6 loadView];
  [(SiriAlternativeParaphraseSuggestionViewController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v3 = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  [(SiriAlternativeParaphraseSuggestionViewController *)self createViewArray];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SiriAlternativeParaphraseSuggestionViewController;
  [(SiriAlternativeParaphraseSuggestionViewController *)&v3 viewWillAppear:a3];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (([(SiriAlternativeParaphraseSuggestionViewController *)self isViewLoaded]& 1) == 0)
  {
    [(SiriAlternativeParaphraseSuggestionViewController *)self loadView];
  }

  v4 = [(SiriAlternativeParaphraseSuggestionViewController *)self collectionViewLayout];
  [v4 collectionViewContentSize];
  v6 = v5;

  return v6;
}

- (void)configureReusableHeaderView:(id)a3
{
  suggestedResultsPod = self->_suggestedResultsPod;
  v5 = a3;
  v8 = [(SAARParaphrasedSuggestedResultsPod *)suggestedResultsPod title];
  v6 = [(SiriAlternativeParaphraseSuggestionViewController *)self _privateDelegate];
  v7 = [v6 localeForSiriViewController:self];
  [v5 configureWithText:v8 locale:v7];
}

- (double)desiredHeightForHeaderView
{
  v2 = objc_opt_class();

  [v2 defaultHeight];
  return result;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  [v9 setHasChevron:0];
  viewArray = self->_viewArray;
  v11 = [v6 item];

  v12 = [(NSMutableArray *)viewArray objectAtIndex:v11];
  [v12 edgeInsets];
  [v9 setCustomViewEdgeInsets:?];
  [v9 setCustomView:v12];
  v13 = [(NSMutableArray *)self->_viewArray lastObject];
  v14 = v12 != v13;

  [v9 setKeylineType:v14];

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  viewArray = self->_viewArray;
  v8 = [v6 row];

  v14 = [(NSMutableArray *)viewArray objectAtIndex:v8];
  v9 = [v14 responseText];
  if (v9)
  {
    v10 = objc_alloc_init(SAUIListItem);
    [v10 setSelectionText:v9];
    v11 = [(SiriAlternativeParaphraseSuggestionViewController *)self delegate];
    [v11 siriViewController:self addSelectionResponse:v10];
  }

  v12 = [(SiriAlternativeParaphraseSuggestionViewController *)self delegate];
  v13 = [v14 commands];
  [v12 siriViewController:self performAceCommands:v13];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(SiriAlternativeParaphraseSuggestionViewController *)self delegate];
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

@end