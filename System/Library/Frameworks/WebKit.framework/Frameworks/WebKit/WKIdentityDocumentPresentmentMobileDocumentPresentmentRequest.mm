@interface WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest
- (BOOL)isMandatory;
- (WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest)init;
- (WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest)initWithDocumentSets:(id)sets isMandatory:(BOOL)mandatory;
- (void)setIsMandatory:(BOOL)mandatory;
@end

@implementation WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest

- (BOOL)isMandatory
{
  v3 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest_isMandatory;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsMandatory:(BOOL)mandatory
{
  v5 = OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest_isMandatory;
  swift_beginAccess();
  *(self + v5) = mandatory;
}

- (WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest)initWithDocumentSets:(id)sets isMandatory:(BOOL)mandatory
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E8, &qword_23B59ED40);
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest_documentSets) = sub_23B59D890();
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest_isMandatory) = mandatory;
  v7.receiver = self;
  v7.super_class = WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest;
  return [(WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest *)&v7 init];
}

- (WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end