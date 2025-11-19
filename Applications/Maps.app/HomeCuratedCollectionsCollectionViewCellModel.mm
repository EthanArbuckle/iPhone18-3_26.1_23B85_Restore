@interface HomeCuratedCollectionsCollectionViewCellModel
- (BOOL)isEqual:(id)a3;
- (GEOExploreGuides)exploreGuides;
- (GEOObserverHashTable)observers;
- (HomeCuratedCollectionsCollectionViewCellDelegate)delegate;
- (HomeCuratedCollectionsCollectionViewCellModel)initWithResultDataProvider:(id)a3 delegate:(id)a4;
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
  v2 = [(HomeResultDataProvider *)self->_resultDataProvider homeResult];
  v3 = [v2 exploreGuides];

  return v3;
}

- (NSArray)curatedCollections
{
  v2 = [(HomeResultDataProvider *)self->_resultDataProvider homeResult];
  v3 = [v2 curatedCollections];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(HomeCuratedCollectionsCollectionViewCellModel *)v6 resultDataProvider];
    v8 = v7;
    if (v7 == self->_resultDataProvider || [(HomeResultDataProvider *)v7 isEqual:?])
    {
      v9 = [(HomeCuratedCollectionsCollectionViewCellModel *)v6 delegate];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (v9 == WeakRetained)
      {
        v11 = 1;
      }

      else
      {
        v11 = [v9 isEqual:WeakRetained];
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

- (HomeCuratedCollectionsCollectionViewCellModel)initWithResultDataProvider:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HomeCuratedCollectionsCollectionViewCellModel;
  v9 = [(HomeCuratedCollectionsCollectionViewCellModel *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resultDataProvider, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [(HomeResultDataProvider *)v10->_resultDataProvider observers];
    [v11 registerObserver:v10];
  }

  return v10;
}

@end