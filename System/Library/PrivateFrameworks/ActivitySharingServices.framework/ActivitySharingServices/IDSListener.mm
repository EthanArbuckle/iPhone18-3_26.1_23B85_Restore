@interface IDSListener
- (_TtC23ActivitySharingServices11IDSListener)init;
- (void)messageCenter:(id)center didReceivePayload:(id)payload type:(int)type fromSenderAddress:(id)address messageHandledCompletion:(id)completion;
@end

@implementation IDSListener

- (_TtC23ActivitySharingServices11IDSListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageCenter:(id)center didReceivePayload:(id)payload type:(int)type fromSenderAddress:(id)address messageHandledCompletion:(id)completion
{
  v12 = _Block_copy(completion);
  centerCopy = center;
  payloadCopy = payload;
  addressCopy = address;
  selfCopy = self;
  v16 = sub_221FB5B18();
  v18 = v17;

  v19 = sub_221FB6318();
  v21 = v20;

  _Block_copy(v12);
  sub_221EDA988(v16, v18, type, v19, v21, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_221EBEF30(v16, v18);
}

@end