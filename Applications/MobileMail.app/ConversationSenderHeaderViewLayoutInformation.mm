@interface ConversationSenderHeaderViewLayoutInformation
- (double)contentInset;
- (double)statusBarHeight;
@end

@implementation ConversationSenderHeaderViewLayoutInformation

- (double)statusBarHeight
{
  _objc_retain(self);
  v4 = sub_1002B2254();
  _objc_release(self);
  return v4;
}

- (double)contentInset
{
  _objc_retain(self);
  v4 = sub_1002B22D0();
  _objc_release(self);
  return v4;
}

@end