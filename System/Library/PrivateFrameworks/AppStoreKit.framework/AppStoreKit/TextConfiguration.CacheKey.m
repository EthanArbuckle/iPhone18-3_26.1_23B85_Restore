@interface TextConfiguration.CacheKey
- (BOOL)isEqual:(id)a3;
- (_TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey)init;
- (int64_t)hash;
@end

@implementation TextConfiguration.CacheKey

- (int64_t)hash
{
  sub_1E1AF762C();
  v3 = self;
  FontSource.hash(into:)();
  v4 = sub_1E1AF767C();
  v5 = MEMORY[0x1E68FED70](*(&v3->super.isa + OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text), *&v3->_anon_0[OBJC_IVAR____TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey_text]) ^ v4;
  v6 = sub_1E1AF5DFC();
  v7 = MEMORY[0x1E68FED70](v6);

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1E19D7F74(v8);

  sub_1E1308058(v8, &qword_1ECEB2DF0);
  return v6 & 1;
}

- (_TtCV11AppStoreKit17TextConfigurationP33_4797A6AB10DD0F1B6476104D5B5EB22B8CacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end