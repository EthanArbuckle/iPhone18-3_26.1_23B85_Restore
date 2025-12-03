@interface MenstrualCyclesOnboardingFactorsViewController
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)cancelButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MenstrualCyclesOnboardingFactorsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29E1E87CC();
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E2BCF44();
  viewCopy = view;
  selfCopy = self;
  sub_29E1E9CC0(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_29E1EA760();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  tableView = [(OBTableWelcomeController *)selfCopy tableView];
  if (tableView)
  {
    v4 = tableView;
    tableView2 = [(OBTableWelcomeController *)selfCopy tableView];
    if (tableView2)
    {
      v6 = tableView2;
      [(UITableView *)tableView2 hk_onboardingListEdgeInsets];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [(UITableView *)v4 _setSectionContentInset:v8, v10, v12, v14];
      v15.receiver = selfCopy;
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

- (void)cancelButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_29E1EA944(tappedCopy);
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1F10CC(section);
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1F12F4(section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_29E1EB4C8(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_29E1EB62C(viewCopy, section);
  v9 = v8;

  return v9;
}

@end