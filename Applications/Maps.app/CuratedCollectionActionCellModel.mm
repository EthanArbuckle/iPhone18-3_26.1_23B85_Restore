@interface CuratedCollectionActionCellModel
- (CuratedCollectionActionCellModel)initWithCollection:(id)collection;
- (CuratedCollectionActionDelegate)actionDelegate;
- (CuratedCollectionActionManager)actionManager;
- (void)_updateActionManagerState;
- (void)dealloc;
- (void)setActionDelegate:(id)delegate;
@end

@implementation CuratedCollectionActionCellModel

- (CuratedCollectionActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)_updateActionManagerState
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  collection = [(CuratedCollectionActionCellModel *)self collection];
  -[CuratedCollectionActionManager setCollectionIsSaved:](self->_actionManager, "setCollectionIsSaved:", [v3 collectionIsSaved:collection]);

  collection2 = [(CuratedCollectionActionCellModel *)self collection];
  publisherCollectionURL = [collection2 publisherCollectionURL];
  [(CuratedCollectionActionManager *)self->_actionManager setHasHomePage:publisherCollectionURL != 0];
}

- (void)setActionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_actionDelegate, obj);
    actionManager = [(CuratedCollectionActionCellModel *)self actionManager];
    [actionManager setDelegate:obj];
  }
}

- (CuratedCollectionActionManager)actionManager
{
  [(CuratedCollectionActionCellModel *)self _updateActionManagerState];
  actionManager = self->_actionManager;

  return actionManager;
}

- (void)dealloc
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CuratedCollectionActionCellModel;
  [(CuratedCollectionActionCellModel *)&v4 dealloc];
}

- (CuratedCollectionActionCellModel)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = CuratedCollectionActionCellModel;
  v6 = [(CuratedCollectionActionCellModel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    v8 = objc_alloc_init(CuratedCollectionActionManager);
    actionManager = v7->_actionManager;
    v7->_actionManager = v8;

    v10 = +[CuratedCollectionSyncManager sharedManager];
    [v10 addObserver:v7];
  }

  return v7;
}

@end