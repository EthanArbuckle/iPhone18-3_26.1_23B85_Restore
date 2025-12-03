@interface WKIdentityDocumentPresentmentMobileDocumentElementInfo
- (BOOL)isRetaining;
- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)init;
- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)initWithIsRetaining:(BOOL)retaining;
- (void)setIsRetaining:(BOOL)retaining;
@end

@implementation WKIdentityDocumentPresentmentMobileDocumentElementInfo

- (BOOL)isRetaining
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentElementInfo_isRetaining;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRetaining:(BOOL)retaining
{
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentElementInfo_isRetaining;
  swift_beginAccess();
  *(&self->super.isa + v5) = retaining;
}

- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)initWithIsRetaining:(BOOL)retaining
{
  *(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentElementInfo_isRetaining) = retaining;
  v4.receiver = self;
  v4.super_class = WKIdentityDocumentPresentmentMobileDocumentElementInfo;
  return [(WKIdentityDocumentPresentmentMobileDocumentElementInfo *)&v4 init];
}

- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end