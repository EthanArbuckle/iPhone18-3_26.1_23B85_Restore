@interface AccountStatusUpgradeSummaryTileFeedItemViewController
- (NSString)title;
- (_TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation AccountStatusUpgradeSummaryTileFeedItemViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for AccountStatusUpgradeSummaryTileFeedItemViewController(0);
  v4 = v6.receiver;
  [(AccountStatusUpgradeSummaryTileFeedItemViewController *)&v6 viewDidAppear:v3];
  sub_29D5B1E5C();
  v5 = sub_29D5B1E4C();
  sub_29D5A4C10();
  sub_29D5B1E2C();
}

- (NSString)title
{
  v2 = sub_29D5B200C();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDB9C70];
  sub_29D5AAD1C(0, &qword_2A1A19588, MEMORY[0x29EDB9C70], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_29D5B0EFC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_29D5B1FFC();
  sub_29D5B2A0C();
  (*(v3 + 8))(v5, v2);
  sub_29D5AB160(v9, &qword_2A1A19588, v6);
  v11 = sub_29D5B3E1C();

  return v11;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29D5A7ED0();
}

- (_TtC13HealthRecords53AccountStatusUpgradeSummaryTileFeedItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D5AA048(v5, v7, a4);
}

@end