@interface AAStoredUserIDComponents
- (AAStoredUserIDComponents)init;
- (AAStoredUserIDComponents)initWithStartDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAStoredUserIDComponents

- (AAStoredUserIDComponents)initWithStartDate:(id)date
{
  v3 = sub_1B6AB8DB0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  return sub_1B6A913B0(v6);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  BridgedStoredUserIDComponents.encode(with:)(coderCopy);
}

- (AAStoredUserIDComponents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end