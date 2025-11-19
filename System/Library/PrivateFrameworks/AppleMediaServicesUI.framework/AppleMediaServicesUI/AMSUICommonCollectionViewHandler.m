@interface AMSUICommonCollectionViewHandler
- (AMSUICommonCollectionView)collectionView;
- (AMSUICommonCollectionViewDelegate)delegate;
- (AMSUICommonCollectionViewHandler)initWithCollectionView:(id)a3;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation AMSUICommonCollectionViewHandler

- (AMSUICommonCollectionViewHandler)initWithCollectionView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AMSUICommonCollectionViewHandler;
  v5 = [(AMSUICommonCollectionViewHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
  }

  return v6;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [a3 interactions];
  v8 = [v7 reverseObjectEnumerator];

  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v8 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:0];
          v20 = v8;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          [v6 setInteractions:v14];

          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v10 = a5;
  v6 = [(AMSUICommonCollectionViewHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AMSUICommonCollectionViewHandler *)self delegate];
    v9 = [(AMSUICommonCollectionViewHandler *)self collectionView];
    [v8 collectionView:v9 didEndDisplayingItemAtIndexPath:v10];
  }
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(AMSUICommonCollectionViewHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(AMSUICommonCollectionViewHandler *)self delegate];
    v8 = [(AMSUICommonCollectionViewHandler *)self collectionView];
    [v7 collectionView:v8 didSelectItemAtIndexPath:v9];
  }
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(AMSUICommonCollectionViewHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AMSUICommonCollectionViewHandler *)self delegate];
    v9 = [(AMSUICommonCollectionViewHandler *)self collectionView];
    v10 = [v8 collectionView:v9 shouldHighlightItemAtIndexPath:v5];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  if (([v8 isDecelerating] & 1) != 0 || (objc_msgSend(v8, "isDragging") & 1) != 0 || objc_msgSend(v8, "isTracking"))
  {
    v4 = [(AMSUICommonCollectionViewHandler *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(AMSUICommonCollectionViewHandler *)self delegate];
      v7 = [(AMSUICommonCollectionViewHandler *)self collectionView];
      [v6 collectionViewDidScroll:v7];
    }
  }
}

- (AMSUICommonCollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (AMSUICommonCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end