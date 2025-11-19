@interface AccountPageViewController
- (BOOL)shouldAutorotate;
- (_TtC5JSApp25AccountPageViewController)initWithAccountURL:(id)a3;
- (_TtC5JSApp25AccountPageViewController)initWithCoder:(id)a3;
- (_TtC5JSApp25AccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)accountPageViewControllerDidFinish:(id)a3;
@end

@implementation AccountPageViewController

- (_TtC5JSApp25AccountPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_843AC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_6B660(v5, v7, a4);
}

- (_TtC5JSApp25AccountPageViewController)initWithCoder:(id)a3
{
  self->SKAccountPageViewController_opaque[OBJC_IVAR____TtC5JSApp25AccountPageViewController_pageType] = 0;
  v3 = &self->SKAccountPageViewController_opaque[OBJC_IVAR____TtC5JSApp25AccountPageViewController_contentID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &self->SKAccountPageViewController_opaque[OBJC_IVAR____TtC5JSApp25AccountPageViewController_onFinish];
  *v4 = 0;
  *(v4 + 1) = 0;
  result = sub_84AFC();
  __break(1u);
  return result;
}

- (BOOL)shouldAutorotate
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == &dword_0 + 1;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC5JSApp25AccountPageViewController)initWithAccountURL:(id)a3
{
  v4 = sub_2805C(&unk_CAE60, &qword_A1800);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_8396C();
    v8 = sub_839CC();
    v10 = 0;
    v9 = (*(v8 - 8) + 56);
  }

  else
  {
    v8 = sub_839CC();
    v9 = (*(v8 - 8) + 56);
    v10 = 1;
  }

  (*v9)(v7, v10, 1, v8);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accountPageViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_6BA70(v4);
}

@end