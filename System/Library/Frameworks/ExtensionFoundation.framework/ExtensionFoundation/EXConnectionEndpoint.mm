@interface EXConnectionEndpoint
- (EXConnectionEndpoint)init;
- (EXConnectionEndpoint)initWithCoder:(id)a3;
- (EXConnectionEndpoint)initWithIdentifier:(id)a3 bsServiceConnectionEndpoint:(id)a4;
- (EXConnectionEndpoint)initWithIdentifier:(id)a3 xpcEndpoint:(id)a4;
- (NSString)identifier;
- (NSString)service;
- (OS_xpc_object)xpcEndpoint;
- (void)encodeWithCoder:(id)a3;
- (void)setXpcEndpoint:(id)a3;
@end

@implementation EXConnectionEndpoint

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  EXConnectionEndpoint.encode(with:)(v4);
}

- (EXConnectionEndpoint)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized EXConnectionEndpoint.init(coder:)(v3);

  return v4;
}

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___EXConnectionEndpoint_identifier);
  v3 = *(self + OBJC_IVAR___EXConnectionEndpoint_identifier + 8);

  v4 = MEMORY[0x1865F36D0](v2, v3);

  return v4;
}

- (NSString)service
{
  v2 = *(self + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint);
  if (v2)
  {
    v3 = self;
    v4 = [v2 service];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v2 = MEMORY[0x1865F36D0](v5, v7);
  }

  return v2;
}

- (OS_xpc_object)xpcEndpoint
{
  v2 = *(self + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setXpcEndpoint:(id)a3
{
  v3 = *(self + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint);
  *(self + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (EXConnectionEndpoint)initWithIdentifier:(id)a3 bsServiceConnectionEndpoint:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
  *(self + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint) = 0;
  v8 = (self + OBJC_IVAR___EXConnectionEndpoint_identifier);
  *v8 = v6;
  v8[1] = v9;
  *(self + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint) = a4;
  *(self + v7) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for EXConnectionEndpoint();
  v10 = a4;
  return [(EXConnectionEndpoint *)&v12 init];
}

- (EXConnectionEndpoint)initWithIdentifier:(id)a3 xpcEndpoint:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint;
  *(self + OBJC_IVAR___EXConnectionEndpoint_xpcEndpoint) = 0;
  v8 = (self + OBJC_IVAR___EXConnectionEndpoint_identifier);
  *v8 = v6;
  v8[1] = v9;
  *(self + OBJC_IVAR___EXConnectionEndpoint_bsServiceConnectionEndpoint) = 0;
  *(self + v7) = a4;
  v11.receiver = self;
  v11.super_class = type metadata accessor for EXConnectionEndpoint();
  swift_unknownObjectRetain();
  return [(EXConnectionEndpoint *)&v11 init];
}

- (EXConnectionEndpoint)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end