@interface CNMemojiPosterConfigurationReader
+ (id)memojiPosterConfigurationDataFromUserInfo:(id)info;
- (NSData)avatarImageData;
- (NSData)avatarPoseData;
- (NSData)avatarRecordData;
- (UIColor)backgroundColor;
- (_TtC10ContactsUI33CNMemojiPosterConfigurationReader)init;
- (_TtC10ContactsUI33CNMemojiPosterConfigurationReader)initWithPosterConfigurationUserInfo:(id)info;
@end

@implementation CNMemojiPosterConfigurationReader

- (UIColor)backgroundColor
{
  sub_199A9E488();
  v2 = sub_199DF81AC();
  v3.super.isa = UIColor.init(avatarColorDescription:)(v2).super.isa;

  return v3.super.isa;
}

- (NSData)avatarImageData
{
  if (*&self->memojiPosterConfiguration[OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration + 48] >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    selfCopy = self;
    v4 = sub_199DF71DC();

    v2 = v4;
  }

  return v2;
}

- (NSData)avatarRecordData
{
  if (*&self->memojiPosterConfiguration[OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration + 8] >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    selfCopy = self;
    v4 = sub_199DF71DC();

    v2 = v4;
  }

  return v2;
}

- (NSData)avatarPoseData
{
  if (*&self->memojiPosterConfiguration[OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration + 24] >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    selfCopy = self;
    v4 = sub_199DF71DC();

    v2 = v4;
  }

  return v2;
}

- (_TtC10ContactsUI33CNMemojiPosterConfigurationReader)initWithPosterConfigurationUserInfo:(id)info
{
  v4 = sub_199DF9E9C();
  sub_199A9E99C(v4, &v9);

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (v9)
  {
    v5 = self + OBJC_IVAR____TtC10ContactsUI33CNMemojiPosterConfigurationReader_memojiPosterConfiguration;
    *v5 = v9;
    v6 = v15;
    *(v5 + 8) = v14;
    *(v5 + 24) = v6;
    *(v5 + 40) = v16;
    *(v5 + 7) = v17;
    v8.receiver = self;
    v8.super_class = type metadata accessor for CNMemojiPosterConfigurationReader();
    return [(CNMemojiPosterConfigurationReader *)&v8 init];
  }

  else
  {
    type metadata accessor for CNMemojiPosterConfigurationReader();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

+ (id)memojiPosterConfigurationDataFromUserInfo:(id)info
{
  v3 = sub_199DF9E9C();
  v4 = sub_199A9ED44(v3);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_199DF71DC();
    sub_199A9EF20(v4, v6);
    v7 = v8;
  }

  return v7;
}

- (_TtC10ContactsUI33CNMemojiPosterConfigurationReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end