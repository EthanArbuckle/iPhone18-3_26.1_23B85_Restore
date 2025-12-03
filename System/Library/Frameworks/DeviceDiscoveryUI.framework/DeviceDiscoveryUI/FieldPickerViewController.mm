@interface FieldPickerViewController
- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithCoder:(id)coder;
- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithRootViewController:(id)controller;
- (void)contactCardFieldPicker:(id)picker didFinishWithContacts:(id)contacts;
@end

@implementation FieldPickerViewController

- (void)contactCardFieldPicker:(id)picker didFinishWithContacts:(id)contacts
{
  sub_23807A3F8(0, &qword_27DEEE300, 0x277CBDA58);
  v4 = sub_238154EDC();
  selfCopy2 = self;
  v6 = v4;
  v8 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_fieldSaveHandler);
  v7 = *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC17DeviceDiscoveryUI25FieldPickerViewController_fieldSaveHandler);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = sub_2381554FC();
  selfCopy2 = self;
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v14 = selfCopy2;
    v11 = MEMORY[0x2383E9A70](0, v6);
    goto LABEL_6;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v9 = *(v6 + 32);
  v10 = selfCopy2;
  v11 = v9;
LABEL_6:
  v12 = v11;

  v8(v12);
}

- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithCoder:(id)coder
{
  result = sub_2381554EC();
  __break(1u);
  return result;
}

- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC17DeviceDiscoveryUI25FieldPickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end