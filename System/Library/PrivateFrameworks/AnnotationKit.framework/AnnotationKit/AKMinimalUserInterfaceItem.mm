@interface AKMinimalUserInterfaceItem
- (AKMinimalUserInterfaceItem)initWithTag:(int64_t)a3;
@end

@implementation AKMinimalUserInterfaceItem

- (AKMinimalUserInterfaceItem)initWithTag:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = AKMinimalUserInterfaceItem;
  result = [(AKMinimalUserInterfaceItem *)&v5 init];
  if (result)
  {
    result->_tag = a3;
  }

  return result;
}

@end