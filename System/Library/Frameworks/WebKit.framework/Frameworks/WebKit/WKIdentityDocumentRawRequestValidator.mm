@interface WKIdentityDocumentRawRequestValidator
- (WKIdentityDocumentRawRequestValidator)init;
- (id)validateISO18013Request:(id)a3 origin:(id)a4 error:(id *)a5;
@end

@implementation WKIdentityDocumentRawRequestValidator

- (id)validateISO18013Request:(id)a3 origin:(id)a4 error:(id *)a5
{
  v7 = sub_23B59D2D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D2C0();
  v12 = a3;
  v13 = self;
  v14 = sub_23B5839F4(v12, v11);
  (*(v8 + 8))(v11, v7);

  return v14;
}

- (WKIdentityDocumentRawRequestValidator)init
{
  v3 = (self + OBJC_IVAR___WKIdentityDocumentRawRequestValidator__unsafeValidator);
  v3[3] = sub_23B59D5E0();
  __swift_allocate_boxed_opaque_existential_0Tm(v3);
  sub_23B59D5D0();
  v5.receiver = self;
  v5.super_class = WKIdentityDocumentRawRequestValidator;
  return [(WKIdentityDocumentRawRequestValidator *)&v5 init];
}

@end