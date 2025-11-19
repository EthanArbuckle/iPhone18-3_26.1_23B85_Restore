@interface IDSListener
- (_TtC23ActivitySharingServices11IDSListener)init;
- (void)messageCenter:(id)a3 didReceivePayload:(id)a4 type:(int)a5 fromSenderAddress:(id)a6 messageHandledCompletion:(id)a7;
@end

@implementation IDSListener

- (_TtC23ActivitySharingServices11IDSListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)messageCenter:(id)a3 didReceivePayload:(id)a4 type:(int)a5 fromSenderAddress:(id)a6 messageHandledCompletion:(id)a7
{
  v12 = _Block_copy(a7);
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v22 = self;
  v16 = sub_221FB5B18();
  v18 = v17;

  v19 = sub_221FB6318();
  v21 = v20;

  _Block_copy(v12);
  sub_221EDA988(v16, v18, a5, v19, v21, v22, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_221EBEF30(v16, v18);
}

@end