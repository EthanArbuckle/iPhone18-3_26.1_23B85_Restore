@interface SMSServiceReachabilityDelegate
- (_TtC3SMS30SMSServiceReachabilityDelegate)init;
- (_TtC3SMS30SMSServiceReachabilityDelegate)initWithServiceSession:(id)a3;
- (int64_t)maxChatParticipantsForContext:(id)a3;
@end

@implementation SMSServiceReachabilityDelegate

- (int64_t)maxChatParticipantsForContext:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v5 senderLastAddressedHandle];
  v7 = [v5 senderLastAddressedSIMID];
  LODWORD(v4) = [v4 IMMMSMaxRecipientsForPhoneNumber:v6 simID:v7];

  return v4;
}

- (_TtC3SMS30SMSServiceReachabilityDelegate)initWithServiceSession:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SMSServiceReachabilityDelegate();
  return [(SMSServiceReachabilityDelegate *)&v5 initWithServiceSession:a3];
}

- (_TtC3SMS30SMSServiceReachabilityDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SMSServiceReachabilityDelegate();
  return [(SMSServiceReachabilityDelegate *)&v3 init];
}

@end