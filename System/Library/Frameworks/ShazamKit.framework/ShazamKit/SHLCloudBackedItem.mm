@interface SHLCloudBackedItem
- (SHLCloudBackedItem)initWithRecord:(id)a3;
@end

@implementation SHLCloudBackedItem

- (SHLCloudBackedItem)initWithRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedItem;
  v6 = [(SHLCloudBackedItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, a3);
  }

  return v7;
}

@end