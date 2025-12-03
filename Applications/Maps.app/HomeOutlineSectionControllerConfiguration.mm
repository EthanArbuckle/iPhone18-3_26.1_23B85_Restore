@interface HomeOutlineSectionControllerConfiguration
- (ActionCoordination)actionCoordinator;
- (HomeActionDelegate)homeActionDelegate;
- (HomeOutlineSectionControllerConfiguration)initWithCollectionView:(id)view sectionIdentifier:(id)identifier delegate:(id)delegate actionCoordinator:(id)coordinator homeActionDelegate:(id)actionDelegate storage:(id)storage;
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

- (HomeOutlineSectionControllerConfiguration)initWithCollectionView:(id)view sectionIdentifier:(id)identifier delegate:(id)delegate actionCoordinator:(id)coordinator homeActionDelegate:(id)actionDelegate storage:(id)storage
{
  viewCopy = view;
  identifierCopy = identifier;
  delegateCopy = delegate;
  coordinatorCopy = coordinator;
  actionDelegateCopy = actionDelegate;
  storageCopy = storage;
  v24.receiver = self;
  v24.super_class = HomeOutlineSectionControllerConfiguration;
  v21 = [(HomeOutlineSectionControllerConfiguration *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_collectionView, view);
    objc_storeStrong(&v22->_sectionIdentifier, identifier);
    objc_storeWeak(&v22->_delegate, delegateCopy);
    objc_storeWeak(&v22->_actionCoordinator, coordinatorCopy);
    objc_storeWeak(&v22->_homeActionDelegate, actionDelegateCopy);
    objc_storeStrong(&v22->_storage, storage);
  }

  return v22;
}

@end