@interface TTRIIntentsSnippetViewController
- (UITableView)tableView;
- (_TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)desiredHeightForWidth:(double)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 context:(unint64_t)a5 completion:(id)a6;
- (void)desiresInteractivity:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation TTRIIntentsSnippetViewController

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_10001F614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F5D4();
  v11 = a3;
  v12 = self;
  v13 = sub_10001DE90(v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100019530();
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_10001F614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F5D4();
  v11 = a3;
  v12 = self;
  sub_10001E2C0();

  (*(v7 + 8))(v10, v6);
}

- (_TtC27RemindersIntentsUIExtension32TTRIIntentsSnippetViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10001FA84();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10001A668(v5, v7, a4);
}

- (double)desiredHeightForWidth:(double)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v5 = Strong;
  v6 = self;
  [v5 contentSize];
  sub_10001AF6C(0, v7, v8, v7, v8);
  v10 = v9;

  return v10;
}

- (void)desiresInteractivity:(id)a3
{
  v3 = _Block_copy(a3);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, 1);

    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 context:(unint64_t)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  if (a3)
  {
    sub_100010E38(0, &qword_10002E018, INParameter_ptr);
    sub_10001F1D4(&qword_10002E020, &qword_10002E018, INParameter_ptr);
    a3 = sub_10001FB74();
  }

  if (v9)
  {
    *(swift_allocObject() + 16) = v9;
    v9 = sub_10001F0C4;
  }

  v10 = a4;
  v11 = self;
  sub_10001EDE0(a3, a4, v9, v12, v13);
  sub_10001F07C(v9);
}

@end