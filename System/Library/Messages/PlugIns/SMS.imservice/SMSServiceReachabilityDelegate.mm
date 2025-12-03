@interface SMSServiceReachabilityDelegate
- (_TtC3SMS30SMSServiceReachabilityDelegate)init;
- (_TtC3SMS30SMSServiceReachabilityDelegate)initWithServiceSession:(id)session;
- (int64_t)maxChatParticipantsForContext:(id)context;
@end

@implementation SMSServiceReachabilityDelegate

- (int64_t)maxChatParticipantsForContext:(id)context
{
  v4 = objc_opt_self();
  contextCopy = context;
  senderLastAddressedHandle = [contextCopy senderLastAddressedHandle];
  senderLastAddressedSIMID = [contextCopy senderLastAddressedSIMID];
  LODWORD(v4) = [v4 IMMMSMaxRecipientsForPhoneNumber:senderLastAddressedHandle simID:senderLastAddressedSIMID];

  return v4;
}

- (_TtC3SMS30SMSServiceReachabilityDelegate)initWithServiceSession:(id)session
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SMSServiceReachabilityDelegate();
  return [(SMSServiceReachabilityDelegate *)&v5 initWithServiceSession:session];
}

- (_TtC3SMS30SMSServiceReachabilityDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SMSServiceReachabilityDelegate();
  return [(SMSServiceReachabilityDelegate *)&v3 init];
}

@end