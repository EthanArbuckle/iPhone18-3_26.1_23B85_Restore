@interface PreviewViewController
- (_TtC13TipsQuicklook21PreviewViewController)initWithCoder:(id)coder;
- (_TtC13TipsQuicklook21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler;
- (void)updateViewConstraints;
- (void)viewDidLoad;
@end

@implementation PreviewViewController

- (_TtC13TipsQuicklook21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100007CDC();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController) = 0;
    bundleCopy = bundle;
    v7 = sub_100007CCC();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for PreviewViewController();
  v9 = [(PreviewViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC13TipsQuicklook21PreviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC13TipsQuicklook21PreviewViewController_helpViewController) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PreviewViewController();
  coderCopy = coder;
  v5 = [(PreviewViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)preparePreviewOfSearchableItemWithIdentifier:(id)identifier queryString:(id)string completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_100007CDC();
  v10 = v9;
  if (string)
  {
    v11 = sub_100007CDC();
    string = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v7);
  selfCopy = self;
  sub_1000027A4(v8, v10, v11, string, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100001A40();
}

- (void)updateViewConstraints
{
  v3 = sub_100007C3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100007C2C();
  sub_100007CAC();
  (*(v4 + 8))(v7, v3);
  v9 = type metadata accessor for PreviewViewController();
  v12.receiver = selfCopy;
  v12.super_class = v9;
  [(PreviewViewController *)&v12 updateViewConstraints];
  view = [(PreviewViewController *)selfCopy view];
  if (view)
  {
    v11 = view;
    [view updateConstraints];
  }

  else
  {
    __break(1u);
  }
}

@end