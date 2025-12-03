@interface JSARequestEncoder
- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag;
- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag cookiesToSuppress:(id)suppress;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation JSARequestEncoder

- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag cookiesToSuppress:(id)suppress
{
  *&self->AMSMediaRequestEncoder_opaque[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress] = sub_845AC();
  v9.receiver = self;
  v9.super_class = type metadata accessor for RequestEncoder();
  return [(JSARequestEncoder *)&v9 initWithTokenService:service bag:bag];
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  v6 = sub_8378C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8377C();
  if (parameters)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_8495C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_472F0(v10, v16);
  v14 = v13;

  sub_438CC(v16);
  (*(v7 + 8))(v10, v6);

  return v14;
}

- (JSARequestEncoder)initWithTokenService:(id)service bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end