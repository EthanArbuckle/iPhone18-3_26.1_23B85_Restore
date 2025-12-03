@interface AAKPriMLTaskProvider
- (_TtC14AAKPriMLPlugin20AAKPriMLTaskProvider)init;
- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error;
- (id)namespaceIdentifierForRecipe:(id)recipe;
- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error;
- (id)recipeIdentifiers;
@end

@implementation AAKPriMLTaskProvider

- (id)recipeIdentifiers
{
  sub_100002124(&unk_10000C560, &unk_100005970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100005930;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14AAKPriMLPlugin20AAKPriMLTaskProvider_task);
  selfCopy = self;
  *(v3 + 32) = sub_100005140();
  *(v3 + 40) = v6;

  v7.super.isa = sub_100005220().super.isa;

  return v7.super.isa;
}

- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14AAKPriMLPlugin20AAKPriMLTaskProvider_task);
  selfCopy = self;
  sub_100005130();

  v6.super.isa = sub_100005170().super.isa;

  return v6.super.isa;
}

- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error
{
  v7 = sub_100005010();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000051B0();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC14AAKPriMLPlugin20AAKPriMLTaskProvider_task);
  selfCopy = self;
  sub_100005120();
  v15 = v14;

  if (v15)
  {
    sub_100004FC0();

    sub_100004FE0(v16);
    v18 = v17;
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    sub_1000021C8();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();

    if (error)
    {
      v20 = sub_100004F90();

      v21 = v20;
      v18 = 0;
      *error = v20;
    }

    else
    {

      v18 = 0;
    }
  }

  return v18;
}

- (id)namespaceIdentifierForRecipe:(id)recipe
{
  v3 = sub_1000051A0();

  return v3;
}

- (_TtC14AAKPriMLPlugin20AAKPriMLTaskProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end