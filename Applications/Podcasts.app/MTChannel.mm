@interface MTChannel
- (void)setSubscriptionActive:(BOOL)active;
@end

@implementation MTChannel

- (void)setSubscriptionActive:(BOOL)active
{
  activeCopy = active;
  if ([(MTChannel *)self subscriptionActive]!= active)
  {
    v5 = kChannelSubscriptionActive;
    [(MTChannel *)self willChangeValueForKey:kChannelSubscriptionActive];
    v6 = [NSNumber numberWithBool:activeCopy];
    [(MTChannel *)self setPrimitiveValue:v6 forKey:v5];

    [(MTChannel *)self didChangeValueForKey:v5];
  }
}

@end