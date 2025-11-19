@interface CarPlaySpecifier
- (_TtC14CarKitSettings16CarPlaySpecifier)init;
- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)a3 setAction:(id)a4 getAction:(id)a5 detail:(Class)ObjCClassMetadata cell:(int64_t)a7 edit:(Class)a8 buttonAction:(id)a9;
- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9;
- (id)specifierEnabled;
- (void)buttonTappedWithSender:(id)a3;
- (void)setSpecifierEnabledWithEnabled:(id)a3;
@end

@implementation CarPlaySpecifier

- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)a3 setAction:(id)a4 getAction:(id)a5 detail:(Class)ObjCClassMetadata cell:(int64_t)a7 edit:(Class)a8 buttonAction:(id)a9
{
  v13 = _Block_copy(a4);
  v14 = _Block_copy(a5);
  v15 = _Block_copy(a9);
  if (a3)
  {
    a3 = sub_4B5FC();
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
  if (a8)
  {
    a8 = swift_getObjCClassMetadata();
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

  CarPlaySpecifier.init(name:setAction:getAction:detail:cell:edit:buttonAction:)(a3, v17, v13, v18, v14, v19, ObjCClassMetadata, a7, a8, v21, v20);
  return result;
}

- (void)buttonTappedWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_4B93C();
  swift_unknownObjectRelease();
  v5 = *&v4->PSSpecifier_opaque[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
  if (v5)
  {
    v6 = *&v4->getAction[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_buttonTapAction];
    v5(v4);
  }

  sub_14710(v7);
}

- (id)specifierEnabled
{
  v2 = *&self->PSSpecifier_opaque[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
  if (v2)
  {
    v3 = *&self->getAction[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_getAction];
    v4 = self;
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

- (void)setSpecifierEnabledWithEnabled:(id)a3
{
  v3 = *&self->PSSpecifier_opaque[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
  if (v3)
  {
    v5 = *&self->getAction[OBJC_IVAR____TtC14CarKitSettings16CarPlaySpecifier_setAction];
    v7 = a3;
    v6 = self;
    v3(v7);
  }
}

- (_TtC14CarKitSettings16CarPlaySpecifier)initWithName:(id)a3 target:(id)a4 set:(SEL)a5 get:(SEL)a6 detail:(Class)a7 cell:(int64_t)a8 edit:(Class)a9
{
  if (a4)
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