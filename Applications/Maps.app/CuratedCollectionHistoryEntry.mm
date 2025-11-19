@interface CuratedCollectionHistoryEntry
- (BOOL)isEqual:(id)a3;
- (CuratedCollectionHistoryEntry)initWithMapsSyncHistoryCuratedCollection:(id)a3 placeCollection:(id)a4;
@end

@implementation CuratedCollectionHistoryEntry

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
    v7 = [(CuratedCollectionHistoryEntry *)v6 curatedCollection];
    v8 = v7;
    if (v7 == self->_curatedCollection || [(MSHistoryCuratedCollection *)v7 isEqual:?])
    {
      v9 = [(CuratedCollectionHistoryEntry *)v6 placeCollection];
      v10 = v9;
      if (v9 == self->_placeCollection)
      {
        v11 = 1;
      }

      else
      {
        v11 = [(GEOPlaceCollection *)v9 isEqual:?];
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

- (CuratedCollectionHistoryEntry)initWithMapsSyncHistoryCuratedCollection:(id)a3 placeCollection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CuratedCollectionHistoryEntry;
  v9 = [(CuratedCollectionHistoryEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_curatedCollection, a3);
    objc_storeStrong(&v10->_placeCollection, a4);
  }

  return v10;
}

@end