@interface FakePlayerViewController
- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithCoder:(id)a3;
- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation FakePlayerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1003C2A98();
}

- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1007A2254();
    v6 = a4;
    v7 = sub_1007A2214();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FakePlayerViewController();
  v9 = [(FakePlayerViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FakePlayerViewController();
  v4 = a3;
  v5 = [(FakePlayerViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end