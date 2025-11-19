@interface HomeOutlineRootControllerConfiguration
- (ActionCoordination)actionCoordinator;
- (HomeActionDelegate)homeActionDelegate;
- (HomeOutlineRootControllerConfiguration)initWithCollectionView:(id)a3 actionCoordinator:(id)a4 homeActionDelegate:(id)a5 homeUpdateDelegate:(id)a6;
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

- (HomeOutlineRootControllerConfiguration)initWithCollectionView:(id)a3 actionCoordinator:(id)a4 homeActionDelegate:(id)a5 homeUpdateDelegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HomeOutlineRootControllerConfiguration;
  v15 = [(HomeOutlineRootControllerConfiguration *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_collectionView, a3);
    objc_storeWeak(&v16->_actionCoordinator, v12);
    objc_storeWeak(&v16->_homeActionDelegate, v13);
    objc_storeWeak(&v16->_homeUpdateDelegate, v14);
  }

  return v16;
}

@end