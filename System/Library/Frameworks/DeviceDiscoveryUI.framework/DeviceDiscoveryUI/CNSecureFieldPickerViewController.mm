@interface CNSecureFieldPickerViewController
- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithCoder:(id)coder;
- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNameDrop:(id)drop fieldSelections:(id)selections;
- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation CNSecureFieldPickerViewController

- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNameDrop:(id)drop fieldSelections:(id)selections
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  return [(CNContactCardFieldPicker *)&v7 initWithNameDrop:drop fieldSelections:selections];
}

- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_238154CCC();
    bundleCopy = bundle;
    v7 = sub_238154C8C();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  v9 = [(CNSecureFieldPickerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  coderCopy = coder;
  v5 = [(CNSecureFieldPickerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end