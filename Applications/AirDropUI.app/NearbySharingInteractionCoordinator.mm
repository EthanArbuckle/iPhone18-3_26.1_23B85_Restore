@interface NearbySharingInteractionCoordinator
- (void)collaborationMessageListener:(id)listener receivedMessage:(id)message inChat:(id)chat style:(unsigned __int8)style accountID:(id)d;
- (void)conversationsChangedForConversationManager:(id)manager;
@end

@implementation NearbySharingInteractionCoordinator

- (void)collaborationMessageListener:(id)listener receivedMessage:(id)message inChat:(id)chat style:(unsigned __int8)style accountID:(id)d
{
  listenerCopy = listener;
  messageCopy = message;
  selfCopy = self;
  sub_1000AA5C4(messageCopy);
}

- (void)conversationsChangedForConversationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1000A4C38(managerCopy);
  sub_1000A48AC(v5);
}

@end