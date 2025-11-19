@interface OrderLinkedAppViewIOS.LinkedApplication
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)init;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithApplicationIdentifiers:(id)a3 storeIDs:(id)a4 defaultLaunchURL:(id)a5;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithPass:(id)a3;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)a3 defaultLaunchURL:(id)a4;
- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)a3 systemAppBundleIdentifiers:(id)a4 defaultLaunchURL:(id)a5;
- (void)openApplication:(id)a3 withLaunchOptions:(unint64_t)a4 launchURL:(id)a5;
@end

@implementation OrderLinkedAppViewIOS.LinkedApplication

- (void)openApplication:(id)a3 withLaunchOptions:(unint64_t)a4 launchURL:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  if (a5)
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

  v15 = a3;
  v16 = self;
  sub_2385D6EFC(a3, a4, v12);

  sub_238439884(v12, &qword_27DF0D040, &qword_2387676A0);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithPass:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  v4 = a3;
  v5 = [(PKLinkedApplication *)&v7 initWithPass:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)a3 defaultLaunchURL:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    sub_2385D8274();
    a3 = sub_23875EC80();
  }

  if (a4)
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

  return sub_2385D7498(a3, v9);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithStoreIDs:(id)a3 systemAppBundleIdentifiers:(id)a4 defaultLaunchURL:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  if (a3)
  {
    sub_2385D8274();
    a3 = sub_23875EC80();
  }

  if (a4)
  {
    a4 = sub_23875EC80();
  }

  if (a5)
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

  return sub_2385D777C(a3, a4, v11);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)initWithApplicationIdentifiers:(id)a3 storeIDs:(id)a4 defaultLaunchURL:(id)a5
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  if (a3)
  {
    a3 = sub_23875EC80();
  }

  if (a4)
  {
    sub_2385D8274();
    a4 = sub_23875EC80();
  }

  if (a5)
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

  return sub_2385D7ABC(a3, a4, v11);
}

- (_TtCV12FinanceKitUIP33_D9156154FF55601103FCE36B8FFE03E821OrderLinkedAppViewIOS17LinkedApplication)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OrderLinkedAppViewIOS.LinkedApplication();
  return [(PKLinkedApplication *)&v3 init];
}

@end