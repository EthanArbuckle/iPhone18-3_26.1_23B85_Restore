@interface JSAccountStore
- (_TtC14amsengagementd9JSAccount)activeiCloud;
- (_TtC14amsengagementd9JSAccount)activeiTunes;
- (_TtC14amsengagementd9JSAccount)localAccount;
- (id)activeiTunesForMediaType:(int64_t)type;
- (id)localAccountForMediaType:(int64_t)type;
@end

@implementation JSAccountStore

- (_TtC14amsengagementd9JSAccount)activeiTunes
{
  selfCopy = self;
  v3 = sub_10004F884();

  return v3;
}

- (id)activeiTunesForMediaType:(int64_t)type
{
  selfCopy = self;
  v5 = sub_1000521D8(type);

  return v5;
}

- (_TtC14amsengagementd9JSAccount)activeiCloud
{
  selfCopy = self;
  v3 = sub_100054B28();

  return v3;
}

- (_TtC14amsengagementd9JSAccount)localAccount
{
  selfCopy = self;
  v3 = sub_100054C50();

  return v3;
}

- (id)localAccountForMediaType:(int64_t)type
{
  selfCopy = self;
  v5 = sub_100055E78(type);

  return v5;
}

@end