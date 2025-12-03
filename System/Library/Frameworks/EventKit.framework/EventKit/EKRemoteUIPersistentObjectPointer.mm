@interface EKRemoteUIPersistentObjectPointer
- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)init;
- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKRemoteUIPersistentObjectPointer

- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)initWithCoder:(id)coder
{
  coderCopy = coder;
  sub_1A8195010(coderCopy);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1A81ACCB4();
  [coderCopy encodeObject:v4 forKey:v6];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
  v8 = sub_1A81ACCB4();
  [coderCopy encodeBool:v7 forKey:v8];
}

- (_TtC8EventKit33EKRemoteUIPersistentObjectPointer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end