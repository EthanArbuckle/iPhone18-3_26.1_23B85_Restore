@interface CTXPCSlotIDPlaceholder
- (CTXPCSlotIDPlaceholder)initWithSlot:(int)slot;
@end

@implementation CTXPCSlotIDPlaceholder

- (CTXPCSlotIDPlaceholder)initWithSlot:(int)slot
{
  v5.receiver = self;
  v5.super_class = CTXPCSlotIDPlaceholder;
  result = [(CTXPCSlotIDPlaceholder *)&v5 init];
  if (result)
  {
    result->_slot = slot;
  }

  return result;
}

@end