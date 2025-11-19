@interface CTXPCSlotIDPlaceholder
- (CTXPCSlotIDPlaceholder)initWithSlot:(int)a3;
@end

@implementation CTXPCSlotIDPlaceholder

- (CTXPCSlotIDPlaceholder)initWithSlot:(int)a3
{
  v5.receiver = self;
  v5.super_class = CTXPCSlotIDPlaceholder;
  result = [(CTXPCSlotIDPlaceholder *)&v5 init];
  if (result)
  {
    result->_slot = a3;
  }

  return result;
}

@end