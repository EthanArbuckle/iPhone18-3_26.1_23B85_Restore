@interface PreviewViewController
- (_TtC13TipsQuicklook21PreviewViewController)initWithCoder:(id)a3;
- (_TtC13TipsQuicklook21PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)a3 queryString:(id)a4 completionHandler:(id)a5;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation PreviewViewController

- (_TtC13TipsQuicklook21PreviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100007CDC();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController) = 0;
    v6 = a4;
    v7 = sub_100007CCC();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PreviewViewController();
  v9 = [(PreviewViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC13TipsQuicklook21PreviewViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PreviewViewController();
  v4 = a3;
  v5 = [(PreviewViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)a3 queryString:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100007CDC();
  v10 = v9;
  if (a4)
  {
    v11 = sub_100007CDC();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v7);
  v13 = self;
  sub_1000027A4(v8, v10, v11, a4, v13, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100001A40();
}

- (void)updateViewConstraints
{
  v3 = sub_100007C3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  sub_100007C2C();
  sub_100007CAC();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for PreviewViewController();
  v12.receiver = v8;
  v12.super_class = v9;
  [(PreviewViewController *)&v12 updateViewConstraints];
  v10 = [(PreviewViewController *)v8 view];
  if (v10)
  {
    v11 = v10;
    [v10 updateConstraints];
  }

  else
  {
    __break(1u);
  }
}

@end