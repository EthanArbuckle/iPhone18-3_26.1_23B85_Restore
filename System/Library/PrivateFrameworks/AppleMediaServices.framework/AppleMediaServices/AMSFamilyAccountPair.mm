@interface AMSFamilyAccountPair
- (AMSFamilyAccountPair)initWithDownloaderAccountID:(unint64_t)d purchaserAccountID:(unint64_t)iD familyID:(unint64_t)familyID;
@end

@implementation AMSFamilyAccountPair

- (AMSFamilyAccountPair)initWithDownloaderAccountID:(unint64_t)d purchaserAccountID:(unint64_t)iD familyID:(unint64_t)familyID
{
  v9.receiver = self;
  v9.super_class = AMSFamilyAccountPair;
  result = [(AMSFamilyAccountPair *)&v9 init];
  if (result)
  {
    result->_downloaderAccountID = d;
    result->_familyID = familyID;
    result->_purchaserAccountID = iD;
  }

  return result;
}

@end