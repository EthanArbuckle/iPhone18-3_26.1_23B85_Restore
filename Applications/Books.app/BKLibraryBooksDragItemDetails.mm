@interface BKLibraryBooksDragItemDetails
- (BKLibraryBooksDragItemDetails)initWithCollectionID:(id)d assetID:(id)iD bvcType:(int64_t)type;
@end

@implementation BKLibraryBooksDragItemDetails

- (BKLibraryBooksDragItemDetails)initWithCollectionID:(id)d assetID:(id)iD bvcType:(int64_t)type
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = BKLibraryBooksDragItemDetails;
  v10 = [(BKLibraryBooksDragItemDetails *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    sourceCollectionID = v10->_sourceCollectionID;
    v10->_sourceCollectionID = v11;

    v13 = [iDCopy copy];
    assetID = v10->_assetID;
    v10->_assetID = v13;

    v10->_bvcType = type;
  }

  return v10;
}

@end