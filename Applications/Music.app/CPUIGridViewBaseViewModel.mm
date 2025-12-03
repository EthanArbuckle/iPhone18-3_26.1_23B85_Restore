@interface CPUIGridViewBaseViewModel
- (id)initWithPin:(id)pin action:(id)action;
@end

@implementation CPUIGridViewBaseViewModel

- (id)initWithPin:(id)pin action:(id)action
{
  v5 = _Block_copy(action);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_1001141F4(pin, sub_100115508, v6);
}

@end