@interface CuratedCollectionHistoryEntry
- (BOOL)isEqual:(id)equal;
- (CuratedCollectionHistoryEntry)initWithMapsSyncHistoryCuratedCollection:(id)collection placeCollection:(id)placeCollection;
@end

@implementation CuratedCollectionHistoryEntry

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
    curatedCollection = [(CuratedCollectionHistoryEntry *)v6 curatedCollection];
    v8 = curatedCollection;
    if (curatedCollection == self->_curatedCollection || [(MSHistoryCuratedCollection *)curatedCollection isEqual:?])
    {
      placeCollection = [(CuratedCollectionHistoryEntry *)v6 placeCollection];
      v10 = placeCollection;
      if (placeCollection == self->_placeCollection)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(GEOPlaceCollection *)placeCollection isEqual:?];
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

- (CuratedCollectionHistoryEntry)initWithMapsSyncHistoryCuratedCollection:(id)collection placeCollection:(id)placeCollection
{
  collectionCopy = collection;
  placeCollectionCopy = placeCollection;
  v12.receiver = self;
  v12.super_class = CuratedCollectionHistoryEntry;
  v9 = [(CuratedCollectionHistoryEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curatedCollection, collection);
    objc_storeStrong(&v10->_placeCollection, placeCollection);
  }

  return v10;
}

@end