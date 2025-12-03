@interface XPCMapsStyleAttributesInput
- (XPCMapsStyleAttributesInput)init;
- (XPCMapsStyleAttributesInput)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMapsStyleAttributesInput

- (XPCMapsStyleAttributesInput)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7208D80(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit24MapsStyleAttributesInputV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (XPCMapsStyleAttributesInput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end