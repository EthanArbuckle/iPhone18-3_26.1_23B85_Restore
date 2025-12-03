@interface XPCMapsHeroImageResult
- (XPCMapsHeroImageResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMapsHeroImageResult

- (XPCMapsHeroImageResult)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B7208F0C(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit19MapsHeroImageResultV3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

@end