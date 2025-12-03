@interface AssistantPlacardCell
- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithCoder:(id)coder;
- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AssistantPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  selfCopy = self;
  [(AssistantPlacardCell *)selfCopy setSelectionStyle:0];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542728, &qword_241412A18);
  v4[4] = sub_2413E90D0();
  __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542738, &qword_241412A20);
  sub_2413E91E0();
  sub_24140E9BC();
  MEMORY[0x245CE5C20](v4);
}

- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_24140EC1C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_2413E8E3C(style, v7, v9, specifier);
}

- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_24140EC1C();
    identifier = sub_24140EC0C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];

  return v8;
}

- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AssistantPlacardCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end