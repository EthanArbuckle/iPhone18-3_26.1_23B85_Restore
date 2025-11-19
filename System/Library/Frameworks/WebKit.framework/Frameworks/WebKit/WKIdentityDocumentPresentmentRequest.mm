@interface WKIdentityDocumentPresentmentRequest
- (NSArray)mobileDocumentRequests;
- (NSURL)origin;
- (WKIdentityDocumentPresentmentRequest)init;
- (WKIdentityDocumentPresentmentRequest)initWithOrigin:(id)a3 mobileDocumentRequests:(id)a4;
@end

@implementation WKIdentityDocumentPresentmentRequest

- (NSURL)origin
{
  v3 = sub_23B59D2D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B5806A4(self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest__unsafeOrigin, v13);
  sub_23B582C30(0, &qword_27E15AB08, 0x277CBEBC0);
  v8 = self;
  swift_dynamicCast();
  v9 = v12[1];
  sub_23B59D2C0();

  v10 = sub_23B59D2B0();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (NSArray)mobileDocumentRequests
{
  v2 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest_mobileDocumentRequests);
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);

  v3 = sub_23B59D880();

  return v3;
}

- (WKIdentityDocumentPresentmentRequest)initWithOrigin:(id)a3 mobileDocumentRequests:(id)a4
{
  v5 = sub_23B59D2D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23B59D2C0();
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);
  v10 = sub_23B59D890();
  v11 = sub_23B59D2B0();
  v12 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest__unsafeOrigin);
  v12[3] = sub_23B582C30(0, &qword_27E15AB08, 0x277CBEBC0);
  *v12 = v11;
  *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRequest_mobileDocumentRequests) = v10;
  v15.receiver = self;
  v15.super_class = WKIdentityDocumentPresentmentRequest;
  v13 = [(WKIdentityDocumentPresentmentRequest *)&v15 init];
  (*(v6 + 8))(v9, v5);
  return v13;
}

- (WKIdentityDocumentPresentmentRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end