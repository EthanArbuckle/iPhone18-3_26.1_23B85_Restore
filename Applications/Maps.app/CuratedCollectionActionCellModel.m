@interface CuratedCollectionActionCellModel
- (CuratedCollectionActionCellModel)initWithCollection:(id)a3;
- (CuratedCollectionActionDelegate)actionDelegate;
- (CuratedCollectionActionManager)actionManager;
- (void)_updateActionManagerState;
- (void)dealloc;
- (void)setActionDelegate:(id)a3;
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
  v4 = [(CuratedCollectionActionCellModel *)self collection];
  -[CuratedCollectionActionManager setCollectionIsSaved:](self->_actionManager, "setCollectionIsSaved:", [v3 collectionIsSaved:v4]);

  v6 = [(CuratedCollectionActionCellModel *)self collection];
  v5 = [v6 publisherCollectionURL];
  [(CuratedCollectionActionManager *)self->_actionManager setHasHomePage:v5 != 0];
}

- (void)setActionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_actionDelegate, obj);
    v6 = [(CuratedCollectionActionCellModel *)self actionManager];
    [v6 setDelegate:obj];
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

- (CuratedCollectionActionCellModel)initWithCollection:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CuratedCollectionActionCellModel;
  v6 = [(CuratedCollectionActionCellModel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    v8 = objc_alloc_init(CuratedCollectionActionManager);
    actionManager = v7->_actionManager;
    v7->_actionManager = v8;

    v10 = +[CuratedCollectionSyncManager sharedManager];
    [v10 addObserver:v7];
  }

  return v7;
}

@end