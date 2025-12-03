@interface BTSettingsPlacardView
- (_TtC17BluetoothSettings21BTSettingsPlacardView)initWithCoder:(id)coder;
- (_TtC17BluetoothSettings21BTSettingsPlacardView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC17BluetoothSettings21BTSettingsPlacardView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation BTSettingsPlacardView

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFA50, &qword_23C11F560);
  v5[4] = sub_23C115DA8();
  __swift_allocate_boxed_opaque_existential_1(v5);
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1EFA60, &qword_23C11F568);
  sub_23C115EB8();
  sub_23C11B76C();
  MEMORY[0x23EEC7EB0](v5);
}

- (_TtC17BluetoothSettings21BTSettingsPlacardView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_23C11B80C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_23C116198(style, v7, v9, specifier);
}

- (_TtC17BluetoothSettings21BTSettingsPlacardView)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_23C11B80C();
    v8 = self + OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported;
    *v8 = swift_getKeyPath();
    v8[8] = 0;
    identifier = sub_23C11B7FC();
  }

  else
  {
    v9 = self + OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported;
    *v9 = swift_getKeyPath();
    v9[8] = 0;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier];

  return v10;
}

- (_TtC17BluetoothSettings21BTSettingsPlacardView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC17BluetoothSettings21BTSettingsPlacardView__settingsFeatureDescriptionViewSupported;
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(BTSettingsPlacardView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end