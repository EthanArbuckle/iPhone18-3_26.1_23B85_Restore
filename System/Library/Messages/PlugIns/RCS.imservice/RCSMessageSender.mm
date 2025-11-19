@interface RCSMessageSender
- (NSArray)recipients;
- (RCSMessageSender)init;
- (RCSMessageSender)initWithSession:(id)a3 message:(id)a4 chat:(id)a5 style:(unsigned __int8)a6 recipients:(id)a7 context:(id)a8;
- (void)buildWith:(id)a3 parts:(id)a4 completion:(id)a5;
- (void)deriveConfiguration;
- (void)prepareWithCompletion:(id)a3;
- (void)sendWithCompletion:(id)a3;
- (void)setContext:(id)a3;
@end

@implementation RCSMessageSender

- (NSArray)recipients
{
  v2 = *(self + OBJC_IVAR___RCSMessageSender_recipients);

  sub_388C8(&qword_128568, &qword_F3950);
  v3 = sub_F09EC();

  return v3;
}

- (void)setContext:(id)a3
{
  v4 = *(self + OBJC_IVAR___RCSMessageSender_context);
  *(self + OBJC_IVAR___RCSMessageSender_context) = a3;
  v3 = a3;
}

- (RCSMessageSender)initWithSession:(id)a3 message:(id)a4 chat:(id)a5 style:(unsigned __int8)a6 recipients:(id)a7 context:(id)a8
{
  sub_388C8(&qword_128568, &qword_F3950);
  v13 = sub_F09FC();
  return sub_ACDD0(a3, a4, a5, a6, v13, a8);
}

- (void)deriveConfiguration
{
  v5 = self;
  v2 = [(RCSMessageSender *)v5 session];
  v3 = [(RCSMessageSender *)v5 chat];
  v4 = [(IMDTelephonyServiceSession *)v2 isGroupMessagingEnabledFor:v3];

  [(RCSMessageSender *)v5 setSendAsGroupMessage:([(RCSMessageSender *)v5 style]!= 45) & v4];
}

- (void)prepareWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_AD028(sub_B1224, v5);
}

- (void)buildWith:(id)a3 parts:(id)a4 completion:(id)a5
{
  v8 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = sub_F0B1C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = a3;
  v15[6] = sub_B12B4;
  v15[7] = v13;
  v16 = a3;
  v17 = self;
  sub_AE864(0, 0, v11, &unk_F43E8, v15);
}

- (void)sendWithCompletion:(id)a3
{
  v5 = sub_388C8(&qword_127EB0, &unk_F2B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
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
  v13 = self;
  sub_3CC0C(0, 0, v8, &unk_F4390, v12);
}

- (RCSMessageSender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end