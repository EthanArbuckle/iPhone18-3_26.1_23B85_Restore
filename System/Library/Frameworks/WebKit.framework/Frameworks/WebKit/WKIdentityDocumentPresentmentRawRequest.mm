@interface WKIdentityDocumentPresentmentRawRequest
- (NSData)requestData;
- (NSString)requestProtocol;
- (WKIdentityDocumentPresentmentRawRequest)init;
- (WKIdentityDocumentPresentmentRawRequest)initWithRequestProtocol:(id)protocol requestData:(id)data;
@end

@implementation WKIdentityDocumentPresentmentRawRequest

- (NSString)requestProtocol
{
  v2 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRawRequest_requestProtocol);
  v3 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRawRequest_requestProtocol + 8);

  v4 = sub_23B59D810();

  return v4;
}

- (NSData)requestData
{
  v2 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRawRequest_requestData);
  v3 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentRawRequest_requestData + 8);
  sub_23B582D58(v2, v3);
  v4 = sub_23B59D2E0();
  sub_23B56C05C(v2, v3);

  return v4;
}

- (WKIdentityDocumentPresentmentRawRequest)initWithRequestProtocol:(id)protocol requestData:(id)data
{
  v6 = sub_23B59D820();
  v8 = v7;
  dataCopy = data;
  v10 = sub_23B59D2F0();
  v12 = v11;

  v13 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentRawRequest_requestProtocol);
  *v13 = v6;
  v13[1] = v8;
  v14 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentRawRequest_requestData);
  *v14 = v10;
  v14[1] = v12;
  v16.receiver = self;
  v16.super_class = WKIdentityDocumentPresentmentRawRequest;
  return [(WKIdentityDocumentPresentmentRawRequest *)&v16 init];
}

- (WKIdentityDocumentPresentmentRawRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end