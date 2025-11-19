@interface CNSecureFieldPickerViewController
- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithCoder:(id)a3;
- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNameDrop:(id)a3 fieldSelections:(id)a4;
- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation CNSecureFieldPickerViewController

- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNameDrop:(id)a3 fieldSelections:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  return [(CNContactCardFieldPicker *)&v7 initWithNameDrop:a3 fieldSelections:a4];
}

- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_238154CCC();
    v6 = a4;
    v7 = sub_238154C8C();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  v9 = [(CNSecureFieldPickerViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC17DeviceDiscoveryUI33CNSecureFieldPickerViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CNSecureFieldPickerViewController();
  v4 = a3;
  v5 = [(CNSecureFieldPickerViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end