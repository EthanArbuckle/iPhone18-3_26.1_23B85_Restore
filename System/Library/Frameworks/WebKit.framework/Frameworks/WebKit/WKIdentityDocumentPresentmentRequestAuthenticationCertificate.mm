@interface WKIdentityDocumentPresentmentRequestAuthenticationCertificate
- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)init;
- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)initWithCertificate:(__SecCertificate *)certificate;
- (__SecCertificate)certificate;
- (void)setCertificate:(__SecCertificate *)certificate;
@end

@implementation WKIdentityDocumentPresentmentRequestAuthenticationCertificate

- (__SecCertificate)certificate
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentRequestAuthenticationCertificate_certificate;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCertificate:(__SecCertificate *)certificate
{
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentRequestAuthenticationCertificate_certificate;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = certificate;
  certificateCopy = certificate;
}

- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)initWithCertificate:(__SecCertificate *)certificate
{
  *(&self->super.isa + OBJC_IVAR___WKIdentityDocumentPresentmentRequestAuthenticationCertificate_certificate) = certificate;
  v5.receiver = self;
  v5.super_class = WKIdentityDocumentPresentmentRequestAuthenticationCertificate;
  certificateCopy = certificate;
  return [(WKIdentityDocumentPresentmentRequestAuthenticationCertificate *)&v5 init];
}

- (WKIdentityDocumentPresentmentRequestAuthenticationCertificate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end