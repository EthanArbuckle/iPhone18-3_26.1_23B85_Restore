@interface BKLibraryPriceManagerAsset
- (BKLibraryPriceManagerAsset)initWithType:(int64_t)type storeID:(id)d;
@end

@implementation BKLibraryPriceManagerAsset

- (BKLibraryPriceManagerAsset)initWithType:(int64_t)type storeID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BKLibraryPriceManagerAsset;
  v8 = [(BKLibraryPriceManagerAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_storeID, d);
  }

  return v9;
}

@end