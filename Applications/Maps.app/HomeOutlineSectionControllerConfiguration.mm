@interface HomeOutlineSectionControllerConfiguration
- (ActionCoordination)actionCoordinator;
- (HomeActionDelegate)homeActionDelegate;
- (HomeOutlineSectionControllerConfiguration)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4 delegate:(id)a5 actionCoordinator:(id)a6 homeActionDelegate:(id)a7 storage:(id)a8;
- (HomeOutlineSectionControllerDelegate)delegate;
@end

@implementation HomeOutlineSectionControllerConfiguration

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

- (HomeOutlineSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HomeOutlineSectionControllerConfiguration)initWithCollectionView:(id)a3 sectionIdentifier:(id)a4 delegate:(id)a5 actionCoordinator:(id)a6 homeActionDelegate:(id)a7 storage:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v24.receiver = self;
  v24.super_class = HomeOutlineSectionControllerConfiguration;
  v21 = [(HomeOutlineSectionControllerConfiguration *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_collectionView, a3);
    objc_storeStrong(&v22->_sectionIdentifier, a4);
    objc_storeWeak(&v22->_delegate, v17);
    objc_storeWeak(&v22->_actionCoordinator, v18);
    objc_storeWeak(&v22->_homeActionDelegate, v19);
    objc_storeStrong(&v22->_storage, a8);
  }

  return v22;
}

@end