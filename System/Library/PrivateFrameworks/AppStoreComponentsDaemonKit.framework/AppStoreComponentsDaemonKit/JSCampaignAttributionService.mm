@interface JSCampaignAttributionService
- (_TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService)init;
- (id)processRedirectURL:(id)l;
@end

@implementation JSCampaignAttributionService

- (id)processRedirectURL:(id)l
{
  v4 = sub_222738BBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22273919C();
  v11 = v10;
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  selfCopy = self;
  v13 = sub_2227396EC();
  v14 = *(&selfCopy->super.isa + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_process);
  sub_22266BCCC(selfCopy + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_accounts, v23);
  (*(v5 + 16))(v8, selfCopy + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_bag, v4);
  v18 = v9;
  v19 = v11;
  v20 = v8;
  v21 = v14;
  v22 = v23;
  v15 = sub_2227396FC();

  (*(v5 + 8))(v8, v4);
  __swift_destroy_boxed_opaque_existential_1(v23);

  return v15;
}

- (_TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end