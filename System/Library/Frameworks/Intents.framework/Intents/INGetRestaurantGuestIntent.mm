@interface INGetRestaurantGuestIntent
+ (id)intentDescription;
@end

@implementation INGetRestaurantGuestIntent

+ (id)intentDescription
{
  v2 = [[INIntentDescription alloc] initWithName:@"GetRestaurantGuestIntent" responseName:@"GetRestaurantGuestIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleGetRestaurantGuest_completion_ confirmSelector:sel_confirmGetRestaurantGuest_completion_ slotsByName:0];

  return v2;
}

@end