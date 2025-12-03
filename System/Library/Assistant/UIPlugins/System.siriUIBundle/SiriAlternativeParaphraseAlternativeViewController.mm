@interface SiriAlternativeParaphraseAlternativeViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (double)desiredHeightForHeaderView;
- (double)desiredHeightForWidth:(double)width;
- (double)viewControllerExpectedWidth;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)configureReusableHeaderView:(id)view;
- (void)createViewArray;
- (void)loadView;
- (void)performAceCommands:(id)commands userUtterance:(id)utterance;
- (void)setAceObject:(id)object;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SiriAlternativeParaphraseAlternativeViewController

- (void)setAceObject:(id)object
{
  objectCopy = object;
  v6.receiver = self;
  v6.super_class = SiriAlternativeParaphraseAlternativeViewController;
  [(SiriAlternativeParaphraseAlternativeViewController *)&v6 setAceObject:objectCopy];
  resultsPod = self->_resultsPod;
  self->_resultsPod = objectCopy;
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
  alternativeResultViews = [(SAARParaphrasedAlternativeResultsPod *)self->_resultsPod alternativeResultViews];
  v6 = [alternativeResultViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(alternativeResultViews);
        }

        v10 = [[SiriAlternativeParaphraseAlternativeMultiResultsView alloc] initWithAlternativeResult:*(*(&v13 + 1) + 8 * v9)];
        [(SiriAlternativeParaphraseAlternativeMultiResultsView *)v10 setDelegate:self];
        [(NSMutableArray *)self->_viewArray addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [alternativeResultViews countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  collectionView = [(SiriAlternativeParaphraseAlternativeViewController *)self collectionView];
  [collectionView reloadData];

  collectionViewLayout = [(SiriAlternativeParaphraseAlternativeViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SiriAlternativeParaphraseAlternativeViewController;
  [(SiriAlternativeParaphraseAlternativeViewController *)&v6 loadView];
  [(SiriAlternativeParaphraseAlternativeViewController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  collectionView = [(SiriAlternativeParaphraseAlternativeViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  [(SiriAlternativeParaphraseAlternativeViewController *)self createViewArray];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = SiriAlternativeParaphraseAlternativeViewController;
  [(SiriAlternativeParaphraseAlternativeViewController *)&v3 viewWillAppear:appear];
}

- (double)desiredHeightForWidth:(double)width
{
  if (([(SiriAlternativeParaphraseAlternativeViewController *)self isViewLoaded]& 1) == 0)
  {
    [(SiriAlternativeParaphraseAlternativeViewController *)self loadView];
  }

  collectionViewLayout = [(SiriAlternativeParaphraseAlternativeViewController *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v6 = v5;

  return v6;
}

- (void)configureReusableHeaderView:(id)view
{
  resultsPod = self->_resultsPod;
  viewCopy = view;
  title = [(SAARParaphrasedAlternativeResultsPod *)resultsPod title];
  _privateDelegate = [(SiriAlternativeParaphraseAlternativeViewController *)self _privateDelegate];
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
  [v9 setCustomView:v12];
  lastObject = [(NSMutableArray *)self->_viewArray lastObject];
  v14 = v12 != lastObject;

  [v9 setKeylineType:v14];

  return v9;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(SiriAlternativeParaphraseAlternativeViewController *)self delegate];
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

- (void)performAceCommands:(id)commands userUtterance:(id)utterance
{
  commandsCopy = commands;
  if (utterance)
  {
    utteranceCopy = utterance;
    v7 = objc_alloc_init(SAUIListItem);
    [v7 setSelectionText:utteranceCopy];

    delegate = [(SiriAlternativeParaphraseAlternativeViewController *)self delegate];
    [delegate siriViewController:self addSelectionResponse:v7];
  }

  delegate2 = [(SiriAlternativeParaphraseAlternativeViewController *)self delegate];
  [delegate2 siriViewController:self performAceCommands:commandsCopy];
}

- (double)viewControllerExpectedWidth
{
  delegate = [(SiriAlternativeParaphraseAlternativeViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v5 = v4;

  return v5;
}

@end