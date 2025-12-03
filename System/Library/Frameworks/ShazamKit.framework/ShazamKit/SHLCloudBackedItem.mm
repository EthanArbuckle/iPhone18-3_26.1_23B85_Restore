@interface SHLCloudBackedItem
- (SHLCloudBackedItem)initWithRecord:(id)record;
@end

@implementation SHLCloudBackedItem

- (SHLCloudBackedItem)initWithRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedItem;
  v6 = [(SHLCloudBackedItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, record);
  }

  return v7;
}

@end