@interface SCATBannersViewController
- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithCoder:(id)coder;
- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation SCATBannersViewController

- (id)makeController
{
  sub_19B334();
  type metadata accessor for SCATBannersView();
  sub_196D74(&qword_2BA028, type metadata accessor for SCATBannersView);
  v2 = sub_19B344();

  return v2;
}

- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19BFE4();
    bundleCopy = bundle;
    v7 = sub_19BFB4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SCATBannersViewController();
  v9 = [(SCATBannersViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SCATBannersViewController();
  coderCopy = coder;
  v5 = [(SCATBannersViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end