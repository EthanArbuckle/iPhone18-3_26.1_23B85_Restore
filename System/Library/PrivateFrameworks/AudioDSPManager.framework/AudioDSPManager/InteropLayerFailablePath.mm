@interface InteropLayerFailablePath
- (_TtC20AudioDSPManagerSwift24InteropLayerFailablePath)init;
- (id)getError;
- (id)getPath;
@end

@implementation InteropLayerFailablePath

- (id)getPath
{
  v2 = (self + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path);
  if (self->path[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path + 8])
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  else
  {
    v4 = *v2;
    v3 = v2[1];
    sub_223B772AC();
    v5 = sub_223BF453C();
    sub_223B772B4();

    return v5;
  }

  return result;
}

- (id)getError
{
  v2 = (self + OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path);
  if (self->path[OBJC_IVAR____TtC20AudioDSPManagerSwift24InteropLayerFailablePath_path + 8] == 1)
  {
    v4 = *v2;
    v3 = v2[1];
    sub_223B772AC();
    v5 = sub_223BF453C();
    sub_223B772B4();

    return v5;
  }

  else
  {
    result = sub_223BF4BEC();
    __break(1u);
  }

  return result;
}

- (_TtC20AudioDSPManagerSwift24InteropLayerFailablePath)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end