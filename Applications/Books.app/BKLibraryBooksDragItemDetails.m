@interface BKLibraryBooksDragItemDetails
- (BKLibraryBooksDragItemDetails)initWithCollectionID:(id)a3 assetID:(id)a4 bvcType:(int64_t)a5;
@end

@implementation BKLibraryBooksDragItemDetails

- (BKLibraryBooksDragItemDetails)initWithCollectionID:(id)a3 assetID:(id)a4 bvcType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = BKLibraryBooksDragItemDetails;
  v10 = [(BKLibraryBooksDragItemDetails *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    sourceCollectionID = v10->_sourceCollectionID;
    v10->_sourceCollectionID = v11;

    v13 = [v9 copy];
    assetID = v10->_assetID;
    v10->_assetID = v13;

    v10->_bvcType = a5;
  }

  return v10;
}

@end