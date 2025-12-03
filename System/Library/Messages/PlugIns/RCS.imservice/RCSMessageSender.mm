@interface RCSMessageSender
- (NSArray)recipients;
- (RCSMessageSender)init;
- (RCSMessageSender)initWithSession:(id)session message:(id)message chat:(id)chat style:(unsigned __int8)style recipients:(id)recipients context:(id)context;
- (void)buildWith:(id)with parts:(id)parts completion:(id)completion;
- (void)deriveConfiguration;
- (void)prepareWithCompletion:(id)completion;
- (void)sendWithCompletion:(id)completion;
- (void)setContext:(id)context;
@end

@implementation RCSMessageSender

- (NSArray)recipients
{
  v2 = *(self + OBJC_IVAR___RCSMessageSender_recipients);

  sub_388C8(&qword_128568, &qword_F3950);
  v3 = sub_F09EC();

  return v3;
}

- (void)setContext:(id)context
{
  v4 = *(self + OBJC_IVAR___RCSMessageSender_context);
  *(self + OBJC_IVAR___RCSMessageSender_context) = context;
  contextCopy = context;
}

- (RCSMessageSender)initWithSession:(id)session message:(id)message chat:(id)chat style:(unsigned __int8)style recipients:(id)recipients context:(id)context
{
  sub_388C8(&qword_128568, &qword_F3950);
  v13 = sub_F09FC();
  return sub_ACDD0(session, message, chat, style, v13, context);
}

- (void)deriveConfiguration
{
  selfCopy = self;
  session = [(RCSMessageSender *)selfCopy session];
  chat = [(RCSMessageSender *)selfCopy chat];
  v4 = [(IMDTelephonyServiceSession *)session isGroupMessagingEnabledFor:chat];

  [(RCSMessageSender *)selfCopy setSendAsGroupMessage:([(RCSMessageSender *)selfCopy style]!= 45) & v4];
}

- (void)prepareWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_AD028(sub_B1224, v5);
}

- (void)buildWith:(id)with parts:(id)parts completion:(id)completion
{
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_F0B1C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = with;
  v15[6] = sub_B12B4;
  v15[7] = v13;
  withCopy = with;
  selfCopy = self;
  sub_AE864(0, 0, v11, &unk_F43E8, v15);
}

- (void)sendWithCompletion:(id)completion
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_F0B1C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_B0DAC;
  v12[6] = v10;
  selfCopy = self;
  sub_3CC0C(0, 0, v8, &unk_F4390, v12);
}

- (RCSMessageSender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end