@interface AudiobookSleepTimerCustomHeaderViewController
- (_TtC5Books45AudiobookSleepTimerCustomHeaderViewController)initWithCoder:(id)coder;
- (_TtC5Books45AudiobookSleepTimerCustomHeaderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation AudiobookSleepTimerCustomHeaderViewController

- (void)loadView
{
  selfCopy = self;
  sub_1003A95A8();
}

- (_TtC5Books45AudiobookSleepTimerCustomHeaderViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for AudiobookSleepTimerCustomHeaderViewController();
  v9 = [(AudiobookSleepTimerCustomHeaderViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC5Books45AudiobookSleepTimerCustomHeaderViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AudiobookSleepTimerCustomHeaderViewController();
  coderCopy = coder;
  v5 = [(AudiobookSleepTimerCustomHeaderViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end