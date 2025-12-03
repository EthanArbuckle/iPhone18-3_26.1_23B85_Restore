@interface MusicCarPlayApplicationCapabilitiesController
+ (MusicCarPlayApplicationCapabilitiesController)sharedController;
- (void)setSubscriptionCapabilities:(unint64_t)capabilities;
@end

@implementation MusicCarPlayApplicationCapabilitiesController

+ (MusicCarPlayApplicationCapabilitiesController)sharedController
{
  if (qword_1011C32A0[0] != -1)
  {
    sub_100DEEF0C();
  }

  v3 = qword_1011C3298;

  return v3;
}

- (void)setSubscriptionCapabilities:(unint64_t)capabilities
{
  if (self->_subscriptionCapabilities != capabilities)
  {
    self->_subscriptionCapabilities = capabilities;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"MusicCarPlayApplicationCapabilitiesControllerSubscriptionCapabilitiesDidChangeNotification" object:self];
  }
}

@end