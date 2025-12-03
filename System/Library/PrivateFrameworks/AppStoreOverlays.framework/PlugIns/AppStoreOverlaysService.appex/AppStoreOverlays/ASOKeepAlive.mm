@interface ASOKeepAlive
- (ASOKeepAlive)init;
- (ASOKeepAlive)initWithName:(id)name explanation:(id)explanation;
- (void)acquire;
- (void)invalidate;
@end

@implementation ASOKeepAlive

- (ASOKeepAlive)initWithName:(id)name explanation:(id)explanation
{
  v5 = sub_100018458();
  v7 = v6;
  v8 = sub_100018458();
  v9 = (self + OBJC_IVAR___ASOKeepAlive_name);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR___ASOKeepAlive_explanation);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for KeepAlive();
  return [(ASOKeepAlive *)&v13 init];
}

- (void)acquire
{
  type metadata accessor for KeepAliveManager();
  selfCopy = self;
  sub_10000C158(selfCopy, sub_10000C71C);
}

- (void)invalidate
{
  type metadata accessor for KeepAliveManager();
  selfCopy = self;
  sub_10000C158(selfCopy, sub_10000CA48);
}

- (ASOKeepAlive)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end