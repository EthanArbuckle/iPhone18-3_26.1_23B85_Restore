@interface AgeSelectionViewController
- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AgeSelectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24098072C();
}

- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI26AgeSelectionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;
  v4 = sub_24097F7A4();

  v5 = v4[2];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_240A2966C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2964C();
  v12 = a3;
  v13 = self;
  v14 = AgeSelectionViewController.tableView(_:cellForRowAt:)(v12);

  (*(v7 + 8))(v11, v6);

  return v14;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_240A2966C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2964C();
  v12 = a3;
  v13 = self;
  AgeSelectionViewController.tableView(_:didSelectRowAt:)(v12);

  (*(v7 + 8))(v11, v6);
}

@end