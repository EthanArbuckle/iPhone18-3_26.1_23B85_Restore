@interface NearbySharingInteractionCoordinator
- (void)collaborationMessageListener:(id)a3 receivedMessage:(id)a4 inChat:(id)a5 style:(unsigned __int8)a6 accountID:(id)a7;
- (void)conversationsChangedForConversationManager:(id)a3;
@end

@implementation NearbySharingInteractionCoordinator

- (void)collaborationMessageListener:(id)a3 receivedMessage:(id)a4 inChat:(id)a5 style:(unsigned __int8)a6 accountID:(id)a7
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1000AA5C4(v10);
}

- (void)conversationsChangedForConversationManager:(id)a3
{
  v4 = a3;
  v6 = self;
  sub_1000A4C38(v4);
  sub_1000A48AC(v5);
}

@end