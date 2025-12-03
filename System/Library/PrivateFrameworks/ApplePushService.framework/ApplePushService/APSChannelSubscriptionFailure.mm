@interface APSChannelSubscriptionFailure
- (id)description;
@end

@implementation APSChannelSubscriptionFailure

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  pushTopic = [(APSChannelSubscriptionFailure *)self pushTopic];
  channelID = [(APSChannelSubscriptionFailure *)self channelID];
  v6 = [v3 stringWithFormat:@"pushTopic %@ channelID %@ failureReason %d", pushTopic, channelID, -[APSChannelSubscriptionFailure failureReason](self, "failureReason")];

  return v6;
}

@end