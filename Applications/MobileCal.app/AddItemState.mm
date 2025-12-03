@interface AddItemState
- (AddItemState)initWithEvent:(id)event;
@end

@implementation AddItemState

- (AddItemState)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = AddItemState;
  v6 = [(AddItemState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

@end