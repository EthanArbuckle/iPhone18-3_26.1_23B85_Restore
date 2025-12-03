@interface HomeOutlineRootControllerConfiguration
- (ActionCoordination)actionCoordinator;
- (HomeActionDelegate)homeActionDelegate;
- (HomeOutlineRootControllerConfiguration)initWithCollectionView:(id)view actionCoordinator:(id)coordinator homeActionDelegate:(id)delegate homeUpdateDelegate:(id)updateDelegate;
- (HomeUpdateDelegate)homeUpdateDelegate;
@end

@implementation HomeOutlineRootControllerConfiguration

- (HomeUpdateDelegate)homeUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_homeUpdateDelegate);

  return WeakRetained;
}

- (HomeActionDelegate)homeActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);

  return WeakRetained;
}

- (ActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (HomeOutlineRootControllerConfiguration)initWithCollectionView:(id)view actionCoordinator:(id)coordinator homeActionDelegate:(id)delegate homeUpdateDelegate:(id)updateDelegate
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  delegateCopy = delegate;
  updateDelegateCopy = updateDelegate;
  v18.receiver = self;
  v18.super_class = HomeOutlineRootControllerConfiguration;
  v15 = [(HomeOutlineRootControllerConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_collectionView, view);
    objc_storeWeak(&v16->_actionCoordinator, coordinatorCopy);
    objc_storeWeak(&v16->_homeActionDelegate, delegateCopy);
    objc_storeWeak(&v16->_homeUpdateDelegate, updateDelegateCopy);
  }

  return v16;
}

@end