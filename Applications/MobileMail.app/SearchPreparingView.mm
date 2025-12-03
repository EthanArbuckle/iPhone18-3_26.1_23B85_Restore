@interface SearchPreparingView
- (void)updateWith:(id)with;
@end

@implementation SearchPreparingView

- (void)updateWith:(id)with
{
  _objc_retain(with);
  _objc_retain(self);
  sub_100411918(with);
  _objc_release(self);
  _objc_release(with);
}

@end