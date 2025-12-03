@interface SKANFetchPostbackRejectedParams
- (_TtC9appstored31SKANFetchPostbackRejectedParams)init;
- (_TtC9appstored31SKANFetchPostbackRejectedParams)initWithError:(id)error params:(id)params;
@end

@implementation SKANFetchPostbackRejectedParams

- (_TtC9appstored31SKANFetchPostbackRejectedParams)initWithError:(id)error params:(id)params
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC9appstored31SKANFetchPostbackRejectedParams_error) = error;
  *(&self->super.isa + OBJC_IVAR____TtC9appstored31SKANFetchPostbackRejectedParams_params) = params;
  v11.receiver = self;
  v11.super_class = ObjectType;
  errorCopy = error;
  paramsCopy = params;
  return [(SKANFetchPostbackRejectedParams *)&v11 init];
}

- (_TtC9appstored31SKANFetchPostbackRejectedParams)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end