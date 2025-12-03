@interface ComingSoonViewController
- (_TtC18ASMessagesProvider24ComingSoonViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider24ComingSoonViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
@end

@implementation ComingSoonViewController

- (void)loadView
{
  selfCopy = self;
  sub_6EA10C();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(ComingSoonViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC18ASMessagesProvider24ComingSoonViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_769240();
    bundleCopy = bundle;
    v7 = sub_769210();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ComingSoonViewController();
  v9 = [(ComingSoonViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC18ASMessagesProvider24ComingSoonViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ComingSoonViewController();
  coderCopy = coder;
  v5 = [(ComingSoonViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end