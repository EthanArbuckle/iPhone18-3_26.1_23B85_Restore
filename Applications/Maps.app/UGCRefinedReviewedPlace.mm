@interface UGCRefinedReviewedPlace
- (UGCRefinedReviewedPlace)initWithMapItem:(id)item reviewedPlace:(id)place;
@end

@implementation UGCRefinedReviewedPlace

- (UGCRefinedReviewedPlace)initWithMapItem:(id)item reviewedPlace:(id)place
{
  itemCopy = item;
  placeCopy = place;
  v12.receiver = self;
  v12.super_class = UGCRefinedReviewedPlace;
  v9 = [(UGCRefinedReviewedPlace *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapItem, item);
    objc_storeStrong(&v10->_reviewedPlace, place);
  }

  return v10;
}

@end