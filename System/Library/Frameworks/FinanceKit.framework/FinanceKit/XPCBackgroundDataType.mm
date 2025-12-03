@interface XPCBackgroundDataType
- (XPCBackgroundDataType)init;
- (XPCBackgroundDataType)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCBackgroundDataType

- (XPCBackgroundDataType)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7207F58(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit0A5StoreC18BackgroundDataTypeO8XPCArrayC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCBackgroundDataType)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end