@interface MessageListBarButtonItemConfigurationManager
- (id)navigationBarConfigurationForState:(id)state;
@end

@implementation MessageListBarButtonItemConfigurationManager

- (id)navigationBarConfigurationForState:(id)state
{
  _objc_retain(state);
  _objc_retain(self);
  v7 = sub_1003B6A30(state);
  _objc_release(self);
  _objc_release(state);

  return v7;
}

@end