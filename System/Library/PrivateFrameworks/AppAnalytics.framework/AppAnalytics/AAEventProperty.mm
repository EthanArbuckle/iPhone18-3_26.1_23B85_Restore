@interface AAEventProperty
- (AAEventProperty)init;
- (AAEventProperty)initWithDataType:(Class)type requirement:(int64_t)requirement;
@end

@implementation AAEventProperty

- (AAEventProperty)initWithDataType:(Class)type requirement:(int64_t)requirement
{
  *(&self->super.isa + OBJC_IVAR___AAEventProperty_dataType) = swift_getObjCClassMetadata();
  *(&self->super.isa + OBJC_IVAR___AAEventProperty_requirement) = requirement;
  dataName = [swift_getObjCClassFromMetadata() dataName];
  v7 = sub_1B6AB92E0();
  v9 = v8;

  v10 = (self + OBJC_IVAR___AAEventProperty_dataKey);
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = self;
  v12.super_class = type metadata accessor for BridgedEventProperty();
  return [(AAEventProperty *)&v12 init];
}

- (AAEventProperty)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end