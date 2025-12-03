@interface CollaborationDeliveryRequest
- (_TtC8iMessage28CollaborationDeliveryRequest)init;
- (_TtC8iMessage28CollaborationDeliveryRequest)initWithRecipients:(id)recipients message:(id)message;
- (void)sendWithCompletionHandler:(id)handler;
@end

@implementation CollaborationDeliveryRequest

- (_TtC8iMessage28CollaborationDeliveryRequest)initWithRecipients:(id)recipients message:(id)message
{
  *(&self->super.isa + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients) = sub_BD954();
  *(&self->super.isa + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message) = message;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollaborationDeliveryRequest();
  messageCopy = message;
  return [(CollaborationDeliveryRequest *)&v8 init];
}

- (void)sendWithCompletionHandler:(id)handler
{
  v5 = sub_94950(&qword_123ED8, &qword_CEE50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_BD9F4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_CEAD8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_CEAE8;
  v13[5] = v12;
  selfCopy = self;
  sub_B18FC(0, 0, v8, &unk_CEAF8, v13);
}

- (_TtC8iMessage28CollaborationDeliveryRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end