@interface HMCollectionSettingItem
- (HMCollectionSettingItem)initWithCoder:(id)coder;
@end

@implementation HMCollectionSettingItem

- (HMCollectionSettingItem)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HMCollectionSettingItem;
  return [(HMCollectionSettingItem *)&v4 init];
}

@end