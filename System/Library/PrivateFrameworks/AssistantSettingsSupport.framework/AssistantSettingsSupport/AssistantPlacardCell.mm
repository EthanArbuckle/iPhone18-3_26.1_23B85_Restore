@interface AssistantPlacardCell
- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithCoder:(id)a3;
- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AssistantPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v3 = self;
  [(AssistantPlacardCell *)v3 setSelectionStyle:0];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542728, &qword_241412A18);
  v4[4] = sub_2413E90D0();
  __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542738, &qword_241412A20);
  sub_2413E91E0();
  sub_24140E9BC();
  MEMORY[0x245CE5C20](v4);
}

- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_24140EC1C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_2413E8E3C(a3, v7, v9, a5);
}

- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_24140EC1C();
    a4 = sub_24140EC0C();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC24AssistantSettingsSupport20AssistantPlacardCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AssistantPlacardCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end