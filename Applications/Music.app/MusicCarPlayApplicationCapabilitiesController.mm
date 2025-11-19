@interface MusicCarPlayApplicationCapabilitiesController
+ (MusicCarPlayApplicationCapabilitiesController)sharedController;
- (void)setSubscriptionCapabilities:(unint64_t)a3;
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

- (void)setSubscriptionCapabilities:(unint64_t)a3
{
  if (self->_subscriptionCapabilities != a3)
  {
    self->_subscriptionCapabilities = a3;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"MusicCarPlayApplicationCapabilitiesControllerSubscriptionCapabilitiesDidChangeNotification" object:self];
  }
}

@end