@interface UGCReviewedPlace
- (UGCReviewedPlace)initWithMUID:(unint64_t)d;
- (UGCReviewedPlace)initWithMUID:(unint64_t)d originallySavedMUID:(unint64_t)iD;
@end

@implementation UGCReviewedPlace

- (UGCReviewedPlace)initWithMUID:(unint64_t)d originallySavedMUID:(unint64_t)iD
{
  result = [(UGCReviewedPlace *)self initWithMUID:d];
  if (result)
  {
    result->_originallySavedMUID = iD;
  }

  return result;
}

- (UGCReviewedPlace)initWithMUID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = UGCReviewedPlace;
  result = [(UGCReviewedPlace *)&v5 init];
  if (result)
  {
    result->_muid = d;
    result->_originallySavedMUID = 0;
    result->_isDeleted = 0;
    result->_recommendState = 0;
    result->_numberOfPhotosAdded = 0;
    result->_version = 3;
  }

  return result;
}

@end