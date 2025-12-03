@interface AKMinimalUserInterfaceItem
- (AKMinimalUserInterfaceItem)initWithTag:(int64_t)tag;
@end

@implementation AKMinimalUserInterfaceItem

- (AKMinimalUserInterfaceItem)initWithTag:(int64_t)tag
{
  v5.receiver = self;
  v5.super_class = AKMinimalUserInterfaceItem;
  result = [(AKMinimalUserInterfaceItem *)&v5 init];
  if (result)
  {
    result->_tag = tag;
  }

  return result;
}

@end