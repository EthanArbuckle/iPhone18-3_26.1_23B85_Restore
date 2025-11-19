@interface ConfirmChildAgeViewController
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)showUpdateChildBdayLink;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ConfirmChildAgeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100001BD8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100002070(a3);
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  v11 = a3;
  v12 = self;
  v13 = sub_100003034(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = *&self->OBTableWelcomeController_opaque[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_viewModel];
  v4 = self;

  v5 = sub_10001B720();

  v6 = *(v5 + 16);

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = sub_10001B410();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B3F0();
  v10 = a3;
  isa = sub_10001B3E0().super.isa;
  [v10 deselectRowAtIndexPath:isa animated:0];

  (*(v6 + 8))(v9, v5);
}

- (id)showUpdateChildBdayLink
{
  v0 = sub_10001B930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v41 - v6;
  v8 = sub_100003C14(&qword_10002E5B8, &qword_10001CDE8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_10001B3B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v41 - v18;
  sub_10001B3A0();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v20 = v1;
    sub_100005DE8(v11, &qword_10002E5B8, &qword_10001CDE8);
    sub_10001B420();
    v21 = sub_10001B920();
    v22 = sub_10001BE50();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_100012460(0xD000000000000057, 0x800000010001DB80, &v46);
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not create update birthdate URL from string: %s", v23, 0xCu);
      sub_100005E48(v24);
    }

    return (*(v20 + 8))(v5, v0);
  }

  else
  {
    v45 = v0;
    (*(v13 + 32))(v19, v11, v12);
    sub_10001B420();
    (*(v13 + 16))(v17, v19, v12);
    v26 = sub_10001B920();
    v27 = sub_10001BE70();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = v28;
      v44 = swift_slowAlloc();
      v46 = v44;
      *v28 = 136315138;
      sub_100005E94(&qword_10002E5C0, &type metadata accessor for URL);
      v29 = sub_10001BFB0();
      v43 = v1;
      v31 = v30;
      v32 = *(v13 + 8);
      v32(v17, v12);
      v33 = sub_100012460(v29, v31, &v46);

      v34 = v42;
      *(v42 + 1) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Update birthdate url: %s", v34, 0xCu);
      sub_100005E48(v44);

      v35 = v32;
      (*(v43 + 8))(v7, v45);
    }

    else
    {

      v35 = *(v13 + 8);
      v35(v17, v12);
      (*(v1 + 8))(v7, v45);
    }

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v37 = result;
      sub_10001B390(v36);
      v39 = v38;
      sub_100005574(&_swiftEmptyArrayStorage);
      isa = sub_10001BCB0().super.isa;

      [v37 openSensitiveURL:v39 withOptions:isa];

      return (v35)(v19, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

@end