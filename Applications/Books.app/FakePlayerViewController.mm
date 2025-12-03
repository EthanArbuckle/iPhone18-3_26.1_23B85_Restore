@interface FakePlayerViewController
- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithCoder:(id)coder;
- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation FakePlayerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1003C2A98();
}

- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1007A2254();
    bundleCopy = bundle;
    v7 = sub_1007A2214();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FakePlayerViewController();
  v9 = [(FakePlayerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC5BooksP33_4CE531663E8287118D36641A99287EBA24FakePlayerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FakePlayerViewController();
  coderCopy = coder;
  v5 = [(FakePlayerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end