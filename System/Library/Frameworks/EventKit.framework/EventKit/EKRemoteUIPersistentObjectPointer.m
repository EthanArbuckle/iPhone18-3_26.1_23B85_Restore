@interface EKRemoteUIPersistentObjectPointer
- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)init;
- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EKRemoteUIPersistentObjectPointer

- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)initWithCoder:(id)a3
{
  v3 = a3;
  sub_1A8195010(v3);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
  v5 = a3;
  v9 = self;
  v6 = sub_1A81ACCB4();
  [v5 encodeObject:v4 forKey:v6];

  v7 = *(&v9->super.isa + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
  v8 = sub_1A81ACCB4();
  [v5 encodeBool:v7 forKey:v8];
}

- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end