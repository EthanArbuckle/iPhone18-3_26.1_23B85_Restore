@interface SCATBannersViewController
- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithCoder:(id)a3;
- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_19BFE4();
    v6 = a4;
    v7 = sub_19BFB4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for SCATBannersViewController();
  v9 = [(SCATBannersViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC21AccessibilitySettings25SCATBannersViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SCATBannersViewController();
  v4 = a3;
  v5 = [(SCATBannersViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end