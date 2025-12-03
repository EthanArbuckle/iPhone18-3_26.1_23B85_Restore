@interface CarPlaySpecifier
- (_TtC14CarKitSettings16CarPlaySpecifier)init;
- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)name setAction:(id)action getAction:(id)getAction detail:(Class)ObjCClassMetadata cell:(int64_t)cell edit:(Class)edit buttonAction:(id)buttonAction;
- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit;
- (id)specifierEnabled;
- (void)buttonTappedWithSender:(id)sender;
- (void)setSpecifierEnabledWithEnabled:(id)enabled;
@end

@implementation CarPlaySpecifier

- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)name setAction:(id)action getAction:(id)getAction detail:(Class)ObjCClassMetadata cell:(int64_t)cell edit:(Class)edit buttonAction:(id)buttonAction
{
  v13 = _Block_copy(action);
  v14 = _Block_copy(getAction);
  v15 = _Block_copy(buttonAction);
  if (name)
  {
    name = sub_4B5FC();
    v17 = v16;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    if (v13)
    {
LABEL_3:
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      v13 = sub_1774C;
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v18 = 0;
  if (v14)
  {
LABEL_4:
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    v14 = sub_176B4;
    if (!ObjCClassMetadata)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  v19 = 0;
  if (ObjCClassMetadata)
  {
LABEL_5:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_6:
  if (edit)
  {
    edit = swift_getObjCClassMetadata();
  }

  if (v15)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v21 = sub_176A0;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  CarPlaySpecifier.init(name:setAction:getAction:detail:cell:edit:buttonAction:)(name, v17, v13, v18, v14, v19, ObjCClassMetadata, cell, edit, v21, v20);
  return result;
}

- (void)buttonTappedWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_4B93C();
  swift_unknownObjectRelease();
  v5 = *&selfCopy->PSSpecifier_opaque[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
  if (v5)
  {
    v6 = *&selfCopy->getAction[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
    v5(selfCopy);
  }

  sub_14710(v7);
}

- (id)specifierEnabled
{
  v2 = *&self->PSSpecifier_opaque[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
  if (v2)
  {
    v3 = *&self->getAction[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
    selfCopy = self;
    v5 = v2();

    isa = v5;
  }

  else
  {
    sub_16F40(0, &qword_7AC98, NSNumber_ptr);
    isa = sub_4B8EC(0).super.super.isa;
  }

  return isa;
}

- (void)setSpecifierEnabledWithEnabled:(id)enabled
{
  v3 = *&self->PSSpecifier_opaque[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
  if (v3)
  {
    v5 = *&self->getAction[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
    enabledCopy = enabled;
    selfCopy = self;
    v3(enabledCopy);
  }
}

- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)name target:(id)target set:(SEL)set get:(SEL)get detail:(Class)detail cell:(int64_t)cell edit:(Class)edit
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_4B93C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14CarKitSettings16CarPlaySpecifier)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end