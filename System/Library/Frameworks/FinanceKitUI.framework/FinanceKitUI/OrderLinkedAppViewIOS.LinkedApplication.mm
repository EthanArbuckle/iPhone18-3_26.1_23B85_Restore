@interface OrderLinkedAppViewIOS.LinkedApplication
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)init;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithApplicationIdentifiers:(id)identifiers storeIDs:(id)ds defaultLaunchURL:(id)l;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithPass:(id)pass;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)ds defaultLaunchURL:(id)l;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)ds systemAppBundleIdentifiers:(id)identifiers defaultLaunchURL:(id)l;
- (void)openApplication:(id)application withLaunchOptions:(unint64_t)options launchURL:(id)l;
@end

@implementation OrderLinkedAppViewIOS.LinkedApplication

- (void)openApplication:(id)application withLaunchOptions:(unint64_t)options launchURL:(id)l
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  if (l)
  {
    sub_23875B8B0();
    v13 = sub_23875B940();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_23875B940();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  applicationCopy = application;
  selfCopy = self;
  sub_2385D6EFC(application, options, v12);

  sub_238439884(v12, &qword_27DF0D040, &qword_2387676A0);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithPass:(id)pass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  passCopy = pass;
  v5 = [(PKLinkedApplication *)&v7 initWithPass:passCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)ds defaultLaunchURL:(id)l
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (ds)
  {
    sub_2385D8274();
    ds = sub_23875EC80();
  }

  if (l)
  {
    sub_23875B8B0();
    v10 = sub_23875B940();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_23875B940();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  return sub_2385D7498(ds, v9);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)ds systemAppBundleIdentifiers:(id)identifiers defaultLaunchURL:(id)l
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  if (ds)
  {
    sub_2385D8274();
    ds = sub_23875EC80();
  }

  if (identifiers)
  {
    identifiers = sub_23875EC80();
  }

  if (l)
  {
    sub_23875B8B0();
    v12 = sub_23875B940();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_23875B940();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  return sub_2385D777C(ds, identifiers, v11);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithApplicationIdentifiers:(id)identifiers storeIDs:(id)ds defaultLaunchURL:(id)l
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  if (identifiers)
  {
    identifiers = sub_23875EC80();
  }

  if (ds)
  {
    sub_2385D8274();
    ds = sub_23875EC80();
  }

  if (l)
  {
    sub_23875B8B0();
    v12 = sub_23875B940();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_23875B940();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  return sub_2385D7ABC(identifiers, ds, v11);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  return [(PKLinkedApplication *)&v3 init];
}

@end