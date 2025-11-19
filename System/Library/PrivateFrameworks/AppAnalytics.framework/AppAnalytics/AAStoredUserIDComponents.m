@interface AAStoredUserIDComponents
- (AAStoredUserIDComponents)init;
- (AAStoredUserIDComponents)initWithStartDate:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAStoredUserIDComponents

- (AAStoredUserIDComponents)initWithStartDate:(id)a3
{
  v3 = sub_1B6AB8DB0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  return sub_1B6A913B0(v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  BridgedStoredUserIDComponents.encode(with:)(v4);
}

- (AAStoredUserIDComponents)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end