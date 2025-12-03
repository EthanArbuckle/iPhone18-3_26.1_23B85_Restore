@interface UIKitIndexView.Coordinator
- (void)valueChanged:(id)changed;
@end

@implementation UIKitIndexView.Coordinator

- (void)valueChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_23BA42008(changedCopy);
}

@end