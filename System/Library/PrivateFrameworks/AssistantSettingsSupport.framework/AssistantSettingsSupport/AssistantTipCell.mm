@interface AssistantTipCell
- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithCoder:(id)a3;
- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation AssistantTipCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2413F37C8();
}

- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
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
  return sub_2413F344C(a3, v7, v9, a5);
}

- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_24140EC1C();
    a4 = v8;
  }

  v9 = OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager;
  if (qword_27E5426A0 != -1)
  {
    swift_once();
  }

  v10 = qword_27E542760;
  *(&self->super.super.super.super.super.isa + v9) = qword_27E542760;
  v11 = v10;
  if (a4)
  {
    v12 = sub_24140EC0C();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(PSTableCell *)&v15 initWithStyle:a3 reuseIdentifier:v12];

  return v13;
}

- (_TtC24AssistantSettingsSupport16AssistantTipCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC24AssistantSettingsSupport16AssistantTipCell_tipsManager;
  v7 = qword_27E5426A0;
  v8 = a3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_27E542760;
  *(&self->super.super.super.super.super.isa + v6) = qword_27E542760;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v10 = v9;
  v11 = [(AssistantTipCell *)&v13 initWithCoder:v8];

  if (v11)
  {
  }

  return v11;
}

@end