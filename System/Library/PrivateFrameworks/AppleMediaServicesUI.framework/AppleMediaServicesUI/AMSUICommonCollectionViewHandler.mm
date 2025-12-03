@interface AMSUICommonCollectionViewHandler
- (AMSUICommonCollectionView)collectionView;
- (AMSUICommonCollectionViewDelegate)delegate;
- (AMSUICommonCollectionViewHandler)initWithCollectionView:(id)view;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation AMSUICommonCollectionViewHandler

- (AMSUICommonCollectionViewHandler)initWithCollectionView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = AMSUICommonCollectionViewHandler;
  v5 = [(AMSUICommonCollectionViewHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, viewCopy);
  }

  return v6;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  interactions = [view interactions];
  reverseObjectEnumerator = [interactions reverseObjectEnumerator];

  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          reverseObjectEnumerator = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:0];
          v20 = reverseObjectEnumerator;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          [cellCopy setInteractions:v14];

          goto LABEL_11;
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
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

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(AMSUICommonCollectionViewHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AMSUICommonCollectionViewHandler *)self delegate];
    collectionView = [(AMSUICommonCollectionViewHandler *)self collectionView];
    [delegate2 collectionView:collectionView didEndDisplayingItemAtIndexPath:pathCopy];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(AMSUICommonCollectionViewHandler *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(AMSUICommonCollectionViewHandler *)self delegate];
    collectionView = [(AMSUICommonCollectionViewHandler *)self collectionView];
    [delegate2 collectionView:collectionView didSelectItemAtIndexPath:pathCopy];
  }
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(AMSUICommonCollectionViewHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(AMSUICommonCollectionViewHandler *)self delegate];
    collectionView = [(AMSUICommonCollectionViewHandler *)self collectionView];
    v10 = [delegate2 collectionView:collectionView shouldHighlightItemAtIndexPath:pathCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (([scrollCopy isDecelerating] & 1) != 0 || (objc_msgSend(scrollCopy, "isDragging") & 1) != 0 || objc_msgSend(scrollCopy, "isTracking"))
  {
    delegate = [(AMSUICommonCollectionViewHandler *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(AMSUICommonCollectionViewHandler *)self delegate];
      collectionView = [(AMSUICommonCollectionViewHandler *)self collectionView];
      [delegate2 collectionViewDidScroll:collectionView];
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