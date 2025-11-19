@interface CNContactProviderSupportHost
- (_TtC8Contacts28CNContactProviderSupportHost)init;
- (id)extensionCount;
- (id)extensionItems;
- (id)isExtensionEnabledWith:(id)a3;
- (id)providerContainerFor:(id)a3;
- (void)addDomain:(CNContactProviderSupportDomain *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)disableDomainFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)enableDomainFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 showPrompt:(BOOL)a5 shouldSynchronize:(BOOL)a6 completionHandler:(id)a7;
- (void)invalidateExtensionFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)registeredDomainsFor:(NSString *)a3 completionHandler:(id)a4;
- (void)removeDomainFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)resetEnumerationFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5;
- (void)synchronizeUsing:(CNContactProviderSupportSession *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5;
@end

@implementation CNContactProviderSupportHost

- (_TtC8Contacts28CNContactProviderSupportHost)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost____lazy_storage___contactStore) = 0;
  v2 = (&self->super.isa + OBJC_IVAR____TtC8Contacts28CNContactProviderSupportHost_ContactProviderErrorDomain);
  *v2 = 0xD000000000000024;
  v2[1] = 0x800000019568CD30;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CNContactProviderSupportHost();
  return [(CNContactProviderSupportHost *)&v4 init];
}

- (id)providerContainerFor:(id)a3
{
  v4 = sub_19565D28C();
  v6 = v5;
  v7 = self;
  v8 = sub_195601A64(v4, v6);

  return v8;
}

- (void)synchronizeUsing:(CNContactProviderSupportSession *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19565D56C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19567BEF8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19567BF00;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1956346D0(0, 0, v11, &unk_19567BF08, v16);
}

- (void)invalidateExtensionFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19565D56C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19567BED8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19567BEE0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1956346D0(0, 0, v11, &unk_19567BEE8, v16);
}

- (void)resetEnumerationFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19565D56C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19567BEB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19567BEC0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1956346D0(0, 0, v11, &unk_19567BEC8, v16);
}

- (id)isExtensionEnabledWith:(id)a3
{
  v4 = sub_19565D28C();
  v6 = v5;
  v7 = self;
  v8 = sub_195606A5C(v4, v6);

  return v8;
}

- (void)addDomain:(CNContactProviderSupportDomain *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19565D56C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19567BE98;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19567BEA0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1956346D0(0, 0, v11, &unk_19567BEA8, v16);
}

- (void)removeDomainFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19565D56C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19567BE78;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19567BE80;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1956346D0(0, 0, v11, &unk_19567BE88, v16);
}

- (void)registeredDomainsFor:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_19565D56C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_19567BE58;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_19567BE60;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1956346D0(0, 0, v9, &unk_19567BE68, v14);
}

- (void)enableDomainFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 showPrompt:(BOOL)a5 shouldSynchronize:(BOOL)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 33) = a6;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = sub_19565D56C();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_19567BE38;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_19567BE40;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = self;
  sub_1956346D0(0, 0, v15, &unk_19567BE48, v20);
}

- (void)disableDomainFor:(NSString *)a3 bundleIdentifier:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE3B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_19565D56C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_19567BE18;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_19567BE20;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_1956346D0(0, 0, v11, &unk_19567BE28, v16);
}

- (id)extensionCount
{
  v2 = self;
  if (sub_19560BECC() >> 62)
  {
    sub_19565D81C();
  }

  sub_1954C3460(0, &qword_1EAECB930);
  v3 = sub_19565D73C();

  return v3;
}

- (id)extensionItems
{
  v2 = self;
  sub_19560BECC();

  sub_1954C3460(0, &qword_1EAECDED8);
  v3 = sub_19565D3EC();

  return v3;
}

@end