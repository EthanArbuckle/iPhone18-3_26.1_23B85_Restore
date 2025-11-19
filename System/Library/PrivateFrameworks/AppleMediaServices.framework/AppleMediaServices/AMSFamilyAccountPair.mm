@interface AMSFamilyAccountPair
- (AMSFamilyAccountPair)initWithDownloaderAccountID:(unint64_t)a3 purchaserAccountID:(unint64_t)a4 familyID:(unint64_t)a5;
@end

@implementation AMSFamilyAccountPair

- (AMSFamilyAccountPair)initWithDownloaderAccountID:(unint64_t)a3 purchaserAccountID:(unint64_t)a4 familyID:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = AMSFamilyAccountPair;
  result = [(AMSFamilyAccountPair *)&v9 init];
  if (result)
  {
    result->_downloaderAccountID = a3;
    result->_familyID = a5;
    result->_purchaserAccountID = a4;
  }

  return result;
}

@end