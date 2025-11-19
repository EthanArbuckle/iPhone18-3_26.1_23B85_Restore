@interface JSAccountStore
- (_TtC14amsengagementd9JSAccount)activeiCloud;
- (_TtC14amsengagementd9JSAccount)activeiTunes;
- (_TtC14amsengagementd9JSAccount)localAccount;
- (id)activeiTunesForMediaType:(int64_t)a3;
- (id)localAccountForMediaType:(int64_t)a3;
@end

@implementation JSAccountStore

- (_TtC14amsengagementd9JSAccount)activeiTunes
{
  v2 = self;
  v3 = sub_10004F884();

  return v3;
}

- (id)activeiTunesForMediaType:(int64_t)a3
{
  v4 = self;
  v5 = sub_1000521D8(a3);

  return v5;
}

- (_TtC14amsengagementd9JSAccount)activeiCloud
{
  v2 = self;
  v3 = sub_100054B28();

  return v3;
}

- (_TtC14amsengagementd9JSAccount)localAccount
{
  v2 = self;
  v3 = sub_100054C50();

  return v3;
}

- (id)localAccountForMediaType:(int64_t)a3
{
  v4 = self;
  v5 = sub_100055E78(a3);

  return v5;
}

@end