@interface JSCampaignAttribution
- (_TtC11AppStoreKit21JSCampaignAttribution)init;
- (id)processRedirectURL:(id)a3;
@end

@implementation JSCampaignAttribution

- (id)processRedirectURL:(id)a3
{
  sub_1E1AF5DFC();
  sub_1E175AD10();
  v4 = self;
  v5 = sub_1E1AF6D4C();
  sub_1E1300B24(v4 + OBJC_IVAR____TtC11AppStoreKit21JSCampaignAttribution_accounts, v8);
  v6 = sub_1E1AF6D5C();

  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

- (_TtC11AppStoreKit21JSCampaignAttribution)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end