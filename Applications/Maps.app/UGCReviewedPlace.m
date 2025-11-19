@interface UGCReviewedPlace
- (UGCReviewedPlace)initWithMUID:(unint64_t)a3;
- (UGCReviewedPlace)initWithMUID:(unint64_t)a3 originallySavedMUID:(unint64_t)a4;
@end

@implementation UGCReviewedPlace

- (UGCReviewedPlace)initWithMUID:(unint64_t)a3 originallySavedMUID:(unint64_t)a4
{
  result = [(UGCReviewedPlace *)self initWithMUID:a3];
  if (result)
  {
    result->_originallySavedMUID = a4;
  }

  return result;
}

- (UGCReviewedPlace)initWithMUID:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = UGCReviewedPlace;
  result = [(UGCReviewedPlace *)&v5 init];
  if (result)
  {
    result->_muid = a3;
    result->_originallySavedMUID = 0;
    result->_isDeleted = 0;
    result->_recommendState = 0;
    result->_numberOfPhotosAdded = 0;
    result->_version = 3;
  }

  return result;
}

@end