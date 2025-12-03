@interface SignInOptionsViewController
- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)createAccountAction;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SignInOptionsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24099BB10();
}

- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI27SignInOptionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)createAccountAction
{
  selfCopy = self;
  sub_24099C2EC();
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_240A2966C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2964C();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_24099C4DC(viewCopy);

  (*(v7 + 8))(v11, v6);

  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_240A2966C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2964C();
  viewCopy = view;
  selfCopy = self;
  sub_24099C774(viewCopy);

  (*(v7 + 8))(v11, v6);
}

@end