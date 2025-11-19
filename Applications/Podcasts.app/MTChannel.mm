@interface MTChannel
- (void)setSubscriptionActive:(BOOL)a3;
@end

@implementation MTChannel

- (void)setSubscriptionActive:(BOOL)a3
{
  v3 = a3;
  if ([(MTChannel *)self subscriptionActive]!= a3)
  {
    v5 = kChannelSubscriptionActive;
    [(MTChannel *)self willChangeValueForKey:kChannelSubscriptionActive];
    v6 = [NSNumber numberWithBool:v3];
    [(MTChannel *)self setPrimitiveValue:v6 forKey:v5];

    [(MTChannel *)self didChangeValueForKey:v5];
  }
}

@end