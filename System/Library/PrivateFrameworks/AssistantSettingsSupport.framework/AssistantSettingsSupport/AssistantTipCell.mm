@interface AssistantTipCell
- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithCoder:(id)coder;
- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AssistantTipCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_2413F37C8();
}

- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
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
  return sub_2413F344C(style, v7, v9, specifier);
}

- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_24140EC1C();
    identifier = v8;
  }

  v9 = OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager;
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v10 = qword_27E542760;
  *(&self->super.super.super.super.super.isa + v9) = qword_27E542760;
  v11 = v10;
  if (identifier)
  {
    v12 = sub_24140EC0C();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(PSTableCell *)&v15 initWithStyle:style reuseIdentifier:v12];

  return v13;
}

- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager;
  v7 = qword_27E5426A0;
  coderCopy = coder;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_27E542760;
  *(&self->super.super.super.super.super.isa + v6) = qword_27E542760;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v10 = v9;
  v11 = [(AssistantTipCell *)&v13 initWithCoder:coderCopy];

  if (v11)
  {
  }

  return v11;
}

@end