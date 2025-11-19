@interface SiriAlternativeParaphraseAlternativeMultiResultsView
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriAlternativeParaphraseAlternativeMultiResultsView)initWithAlternativeResult:(id)a3;
- (SiriAlternativeParaphraseAlternativeViewControllerDelegate)delegate;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)layoutSubviews;
@end

@implementation SiriAlternativeParaphraseAlternativeMultiResultsView

- (SiriAlternativeParaphraseAlternativeMultiResultsView)initWithAlternativeResult:(id)a3
{
  v5 = a3;
  v42.receiver = self;
  v42.super_class = SiriAlternativeParaphraseAlternativeMultiResultsView;
  v6 = [(SiriAlternativeParaphraseAlternativeMultiResultsView *)&v42 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
    v8 = objc_alloc_init(UIView);
    containerView = v7->_containerView;
    v7->_containerView = v8;

    [(SiriAlternativeParaphraseAlternativeMultiResultsView *)v7 addSubview:v7->_containerView];
    [(UIView *)v7->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[NSMutableArray array];
    viewArray = v7->_viewArray;
    v7->_viewArray = v10;

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = [(SAARAlternativeResultsView *)v7->_result resultView];
    v13 = [v12 views];

    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          v19 = [[SiriAlternativeParaphraseAlternativeResultView alloc] initWithAlternativeResult:v18];
          v20 = v7;
          [(NSMutableArray *)v7->_viewArray addObject:v19];
          v21 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
            v23 = [v18 displayText];
            *buf = 136315394;
            v44 = "[SiriAlternativeParaphraseAlternativeMultiResultsView initWithAlternativeResult:]";
            v45 = 2112;
            v46 = v23;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%s Paraphrase alternatives: %@", buf, 0x16u);
          }

          v7 = v20;
        }

        v15 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v15);
    }

    v24 = objc_alloc_init(SiriUICollectionViewFlowLayout);
    flowLayout = v7->_flowLayout;
    v7->_flowLayout = v24;

    [(SiriUICollectionViewFlowLayout *)v7->_flowLayout setMinimumLineSpacing:0.0];
    [(SiriUICollectionViewFlowLayout *)v7->_flowLayout setMinimumInteritemSpacing:0.0];
    v26 = [(SiriAlternativeParaphraseAlternativeMultiResultsView *)v7 delegate];
    [v26 viewControllerExpectedWidth];
    v28 = v27;

    v29 = [[UICollectionView alloc] initWithFrame:v7->_flowLayout collectionViewLayout:{0.0, 0.0, v28, 0.0}];
    collectionView = v7->_collectionView;
    v7->_collectionView = v29;

    [(UICollectionView *)v7->_collectionView setScrollEnabled:0];
    [(UICollectionView *)v7->_collectionView setShowsVerticalScrollIndicator:0];
    v31 = v7->_collectionView;
    v32 = +[UIColor clearColor];
    [(UICollectionView *)v31 setBackgroundColor:v32];

    [(UICollectionView *)v7->_collectionView setDelegate:v7];
    [(UICollectionView *)v7->_collectionView setDataSource:v7];
    v33 = v7->_collectionView;
    v34 = objc_opt_class();
    v35 = +[SiriUIContentCollectionViewCell reuseIdentifier];
    [(UICollectionView *)v33 registerClass:v34 forCellWithReuseIdentifier:v35];

    [(UICollectionView *)v7->_collectionView reloadData];
    [(UICollectionView *)v7->_collectionView setNeedsLayout];
    [(UIView *)v7->_containerView addSubview:v7->_collectionView];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(NSMutableArray *)self->_viewArray count:a3.width];
  viewArray = self->_viewArray;
  if (v5)
  {
    v7 = [(NSMutableArray *)viewArray objectAtIndex:0];
    [v7 sizeThatFits:{width, 1.79769313e308}];
    v9 = v8 * [(NSMutableArray *)self->_viewArray count];
  }

  else
  {
    v9 = [(NSMutableArray *)viewArray count]* 44.0;
  }

  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  containerView = self->_containerView;
  [(SiriAlternativeParaphraseAlternativeMultiResultsView *)self bounds];
  [(UIView *)containerView setFrame:?];
  collectionView = self->_collectionView;
  [(UIView *)self->_containerView bounds];
  [(UICollectionView *)collectionView setFrame:?];
  [(UICollectionView *)self->_collectionView reloadData];
  flowLayout = self->_flowLayout;

  [(SiriUICollectionViewFlowLayout *)flowLayout invalidateLayout];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  collectionView = self->_collectionView;
  v6 = a4;
  v7 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  v8 = [(UICollectionView *)collectionView dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:v6];

  [v8 setHasChevron:0];
  viewArray = self->_viewArray;
  v10 = [v6 item];

  v11 = [(NSMutableArray *)viewArray objectAtIndex:v10];
  [v11 edgeInsets];
  [v8 setCustomViewEdgeInsets:?];
  [v8 setCustomView:v11];
  v12 = [(NSMutableArray *)self->_viewArray lastObject];
  v13 = v11 != v12;

  [v8 setKeylineType:v13];

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  viewArray = self->_viewArray;
  v8 = [v6 row];

  v12 = [(NSMutableArray *)viewArray objectAtIndex:v8];
  v9 = [(SiriAlternativeParaphraseAlternativeMultiResultsView *)self delegate];
  v10 = [v12 commands];
  v11 = [v12 responseText];
  [v9 performAceCommands:v10 userUtterance:v11];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(SiriAlternativeParaphraseAlternativeMultiResultsView *)self delegate];
  [v7 viewControllerExpectedWidth];
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

- (SiriAlternativeParaphraseAlternativeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end