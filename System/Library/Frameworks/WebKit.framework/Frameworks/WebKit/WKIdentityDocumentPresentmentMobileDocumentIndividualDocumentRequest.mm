@interface WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest
- (NSDictionary)namespaces;
- (NSString)documentType;
- (WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest)init;
- (WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest)initWithDocumentType:(id)a3 namespaces:(id)a4;
- (void)setDocumentType:(id)a3;
- (void)setNamespaces:(id)a3;
@end

@implementation WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest

- (NSString)documentType
{
  v2 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest_documentType);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_23B59D810();

  return v5;
}

- (void)setDocumentType:(id)a3
{
  v4 = sub_23B59D820();
  v6 = v5;
  v7 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest_documentType);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSDictionary)namespaces
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest_namespaces;
  swift_beginAccess();
  v4 = *(self + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
  v5 = sub_23B59D7C0();

  return v5;
}

- (void)setNamespaces:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
  v4 = sub_23B59D7D0();
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest_namespaces;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest)initWithDocumentType:(id)a3 namespaces:(id)a4
{
  v5 = sub_23B59D820();
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
  v8 = sub_23B59D7D0();
  v9 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest_documentType);
  *v9 = v5;
  v9[1] = v7;
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest_namespaces) = v8;
  v11.receiver = self;
  v11.super_class = WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest;
  return [(WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest *)&v11 init];
}

- (WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end