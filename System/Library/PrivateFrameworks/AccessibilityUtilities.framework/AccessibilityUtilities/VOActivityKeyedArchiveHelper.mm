@interface VOActivityKeyedArchiveHelper
- (VOActivityKeyedArchiveHelper)init;
- (VOActivityKeyedArchiveHelper)initWithCoder:(id)coder;
@end

@implementation VOActivityKeyedArchiveHelper

- (VOActivityKeyedArchiveHelper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_18B2AB604();

  return v4;
}

- (VOActivityKeyedArchiveHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end