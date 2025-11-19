@interface MenstrualCyclesOnboardingFactorsViewController
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)cancelButtonTapped:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MenstrualCyclesOnboardingFactorsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29E1E87CC();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  v10 = a3;
  v11 = self;
  sub_29E1E9CC0(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_29E1EA760();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  v3 = [(OBTableWelcomeController *)v2 tableView];
  if (v3)
  {
    v4 = v3;
    v5 = [(OBTableWelcomeController *)v2 tableView];
    if (v5)
    {
      v6 = v5;
      [(UITableView *)v5 hk_onboardingListEdgeInsets];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [(UITableView *)v4 _setSectionContentInset:v8, v10, v12, v14];
      v15.receiver = v2;
      v15.super_class = type metadata accessor for MenstrualCyclesOnboardingFactorsViewController();
      [(OBTableWelcomeController *)&v15 viewDidLayoutSubviews];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29E1EA944(v4);
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E1F10CC(a4);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E1F12F4(a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_29E1EB4C8(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_29E1EB62C(v6, a4);
  v9 = v8;

  return v9;
}

@end