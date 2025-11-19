@interface SuggestionsWalletOrderAttachment
+ (id)readContentsOfOrderAt:(id)a3 error:(id *)a4;
- (NSData)data;
- (NSString)fqoid;
- (NSURL)url;
- (_TtC10FinanceKit32SuggestionsWalletOrderAttachment)init;
- (int64_t)state;
- (void)setData:(id)a3;
- (void)setFqoid:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setUrl:(id)a3;
@end

@implementation SuggestionsWalletOrderAttachment

- (NSURL)url
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_url;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_1B77FF3F8();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setUrl:(id)a3
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF478();
  v8 = OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_url;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (NSData)data
{
  v2 = (self + OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_data);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_1B720ABEC(v4, v3);
  v5 = sub_1B77FF598();
  sub_1B720A388(v4, v3);

  return v5;
}

- (void)setData:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B77FF5B8();
  v8 = v7;

  v9 = (v5 + OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_data);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v6;
  v9[1] = v8;
  sub_1B720A388(v10, v11);
}

- (NSString)fqoid
{
  swift_beginAccess();

  v2 = sub_1B7800838();

  return v2;
}

- (void)setFqoid:(id)a3
{
  v4 = sub_1B7800868();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_fqoid);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)state
{
  v3 = OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_state;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setState:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC10FinanceKit32SuggestionsWalletOrderAttachment_state;
  swift_beginAccess();
  *(self + v5) = a3;
}

+ (id)readContentsOfOrderAt:(id)a3 error:(id *)a4
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF478();
  swift_getObjCClassMetadata();
  v8 = static SuggestionsWalletOrderAttachment.readContentsOfOrder(at:)(v7);
  (*(v5 + 8))(v7, v4);

  return v8;
}

- (_TtC10FinanceKit32SuggestionsWalletOrderAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end