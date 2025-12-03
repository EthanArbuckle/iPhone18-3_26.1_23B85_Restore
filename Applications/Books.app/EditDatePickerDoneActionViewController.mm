@interface EditDatePickerDoneActionViewController
- (_TtC5Books38EditDatePickerDoneActionViewController)initWithCoder:(id)coder;
- (_TtC5Books38EditDatePickerDoneActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation EditDatePickerDoneActionViewController

- (void)loadView
{
  selfCopy = self;
  sub_10038E844();
}

- (_TtC5Books38EditDatePickerDoneActionViewController)initWithNibName:(id)name bundle:(id)bundle
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
  v11.super_class = type metadata accessor for EditDatePickerDoneActionViewController();
  v9 = [(EditDatePickerDoneActionViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC5Books38EditDatePickerDoneActionViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EditDatePickerDoneActionViewController();
  coderCopy = coder;
  v5 = [(EditDatePickerDoneActionViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end