@interface APSChannelSubscriptionFailure
- (id)description;
@end

@implementation APSChannelSubscriptionFailure

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(APSChannelSubscriptionFailure *)self pushTopic];
  v5 = [(APSChannelSubscriptionFailure *)self channelID];
  v6 = [v3 stringWithFormat:@"pushTopic %@ channelID %@ failureReason %d", v4, v5, -[APSChannelSubscriptionFailure failureReason](self, "failureReason")];

  return v6;
}

@end