@interface BKLibraryPriceManagerAsset
- (BKLibraryPriceManagerAsset)initWithType:(int64_t)a3 storeID:(id)a4;
@end

@implementation BKLibraryPriceManagerAsset

- (BKLibraryPriceManagerAsset)initWithType:(int64_t)a3 storeID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = BKLibraryPriceManagerAsset;
  v8 = [(BKLibraryPriceManagerAsset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_storeID, a4);
  }

  return v9;
}

@end