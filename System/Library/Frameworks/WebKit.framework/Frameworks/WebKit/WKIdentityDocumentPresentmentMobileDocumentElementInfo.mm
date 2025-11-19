@interface WKIdentityDocumentPresentmentMobileDocumentElementInfo
- (BOOL)isRetaining;
- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)init;
- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)initWithIsRetaining:(BOOL)a3;
- (void)setIsRetaining:(BOOL)a3;
@end

@implementation WKIdentityDocumentPresentmentMobileDocumentElementInfo

- (BOOL)isRetaining
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentElementInfo_isRetaining;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRetaining:(BOOL)a3
{
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentElementInfo_isRetaining;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (WKIdentityDocumentPresentmentMobileDocumentElementInfo)initWithIsRetaining:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentElementInfo_isRetaining) = a3;
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