@interface MessageReceiver
- (void)pendingMessages:(id)a3;
@end

@implementation MessageReceiver

- (void)pendingMessages:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D2A60);
    v3 = sub_1B256DC5C();
  }

  sub_1B252CB84(v3);
}

@end