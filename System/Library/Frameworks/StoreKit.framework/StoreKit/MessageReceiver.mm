@interface MessageReceiver
- (void)pendingMessages:(id)messages;
@end

@implementation MessageReceiver

- (void)pendingMessages:(id)messages
{
  messagesCopy = messages;
  if (messages)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2A60);
    messagesCopy = sub_1B256DC5C();
  }

  sub_1B252CB84(messagesCopy);
}

@end