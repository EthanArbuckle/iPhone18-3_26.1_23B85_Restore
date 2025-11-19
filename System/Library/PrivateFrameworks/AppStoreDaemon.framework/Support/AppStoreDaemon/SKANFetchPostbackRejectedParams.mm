@interface SKANFetchPostbackRejectedParams
- (_TtC9appstored31SKANFetchPostbackRejectedParams)init;
- (_TtC9appstored31SKANFetchPostbackRejectedParams)initWithError:(id)a3 params:(id)a4;
@end

@implementation SKANFetchPostbackRejectedParams

- (_TtC9appstored31SKANFetchPostbackRejectedParams)initWithError:(id)a3 params:(id)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC9appstored31SKANFetchPostbackRejectedParams_error) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored31SKANFetchPostbackRejectedParams_params) = a4;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = a4;
  return [(SKANFetchPostbackRejectedParams *)&v11 init];
}

- (_TtC9appstored31SKANFetchPostbackRejectedParams)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end