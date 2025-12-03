@interface WKIdentityDocumentPresentmentMobileDocumentRequest
- (NSArray)presentmentRequests;
- (WKIdentityDocumentPresentmentMobileDocumentRequest)init;
- (WKIdentityDocumentPresentmentMobileDocumentRequest)initWithPresentmentRequests:(id)requests authenticationCertificates:(id)certificates;
- (void)setPresentmentRequests:(id)requests;
@end

@implementation WKIdentityDocumentPresentmentMobileDocumentRequest

- (NSArray)presentmentRequests
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentRequest_presentmentRequests;
  v4 = swift_beginAccess();
  v5 = *(self + v3);
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(v4);

  v6 = sub_23B59D880();

  return v6;
}

- (void)setPresentmentRequests:(id)requests
{
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(self);
  v4 = sub_23B59D890();
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentRequest_presentmentRequests;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (WKIdentityDocumentPresentmentMobileDocumentRequest)initWithPresentmentRequests:(id)requests authenticationCertificates:(id)certificates
{
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(self);
  v5 = sub_23B59D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7F0, &qword_23B59ED48);
  v6 = sub_23B59D890();
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentRequest_presentmentRequests) = v5;
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentRequest_authenticationCertificates) = v6;
  v8.receiver = self;
  v8.super_class = WKIdentityDocumentPresentmentMobileDocumentRequest;
  return [(WKIdentityDocumentPresentmentMobileDocumentRequest *)&v8 init];
}

- (WKIdentityDocumentPresentmentMobileDocumentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end