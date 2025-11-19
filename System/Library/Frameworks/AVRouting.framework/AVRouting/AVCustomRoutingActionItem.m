@interface AVCustomRoutingActionItem
- (AVCustomRoutingActionItem)init;
- (void)dealloc;
@end

@implementation AVCustomRoutingActionItem

- (AVCustomRoutingActionItem)init
{
  v4.receiver = self;
  v4.super_class = AVCustomRoutingActionItem;
  v2 = [(AVCustomRoutingActionItem *)&v4 init];
  if (v2)
  {
    v2->_identifier = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  }

  return v2;
}

- (void)dealloc
{
  self->_type = 0;

  self->_overrideTitle = 0;
  v3.receiver = self;
  v3.super_class = AVCustomRoutingActionItem;
  [(AVCustomRoutingActionItem *)&v3 dealloc];
}

@end