@interface HomeCuratedCollectionsCollectionViewCellModel
- (BOOL)isEqual:(id)equal;
- (GEOExploreGuides)exploreGuides;
- (GEOObserverHashTable)observers;
- (HomeCuratedCollectionsCollectionViewCellDelegate)delegate;
- (HomeCuratedCollectionsCollectionViewCellModel)initWithResultDataProvider:(id)provider delegate:(id)delegate;
- (NSArray)curatedCollections;
@end

@implementation HomeCuratedCollectionsCollectionViewCellModel

- (HomeCuratedCollectionsCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeCuratedCollectionsCollectionViewCellModelObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (GEOExploreGuides)exploreGuides
{
  homeResult = [(HomeResultDataProvider *)self->_resultDataProvider homeResult];
  exploreGuides = [homeResult exploreGuides];

  return exploreGuides;
}

- (NSArray)curatedCollections
{
  homeResult = [(HomeResultDataProvider *)self->_resultDataProvider homeResult];
  curatedCollections = [homeResult curatedCollections];

  return curatedCollections;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    resultDataProvider = [(HomeCuratedCollectionsCollectionViewCellModel *)v6 resultDataProvider];
    v8 = resultDataProvider;
    if (resultDataProvider == self->_resultDataProvider || [(HomeResultDataProvider *)resultDataProvider isEqual:?])
    {
      delegate = [(HomeCuratedCollectionsCollectionViewCellModel *)v6 delegate];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (delegate == WeakRetained)
      {
        v11 = 1;
      }

      else
      {
        v11 = [delegate isEqual:WeakRetained];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HomeCuratedCollectionsCollectionViewCellModel)initWithResultDataProvider:(id)provider delegate:(id)delegate
{
  providerCopy = provider;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = HomeCuratedCollectionsCollectionViewCellModel;
  v9 = [(HomeCuratedCollectionsCollectionViewCellModel *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultDataProvider, provider);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    observers = [(HomeResultDataProvider *)v10->_resultDataProvider observers];
    [observers registerObserver:v10];
  }

  return v10;
}

@end