@interface XPCMapsHeroImageResultEntity
- (XPCMapsHeroImageResultEntity)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMapsHeroImageResultEntity

- (XPCMapsHeroImageResultEntity)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1B720922C(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s10FinanceKit19MapsHeroImageResultV6EntityO3XPCC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

@end