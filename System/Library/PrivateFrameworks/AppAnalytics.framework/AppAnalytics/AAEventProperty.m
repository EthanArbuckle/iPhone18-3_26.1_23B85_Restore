@interface AAEventProperty
- (AAEventProperty)init;
- (AAEventProperty)initWithDataType:(Class)a3 requirement:(int64_t)a4;
@end

@implementation AAEventProperty

- (AAEventProperty)initWithDataType:(Class)a3 requirement:(int64_t)a4
{
  *(&self->super.isa + OBJC_IVAR___AAEventProperty_dataType) = swift_getObjCClassMetadata();
  *(&self->super.isa + OBJC_IVAR___AAEventProperty_requirement) = a4;
  v6 = [swift_getObjCClassFromMetadata() dataName];
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