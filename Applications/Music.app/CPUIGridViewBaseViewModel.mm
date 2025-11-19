@interface CPUIGridViewBaseViewModel
- (id)initWithPin:(id)a3 action:(id)a4;
@end

@implementation CPUIGridViewBaseViewModel

- (id)initWithPin:(id)a3 action:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_1001141F4(a3, sub_100115508, v6);
}

@end