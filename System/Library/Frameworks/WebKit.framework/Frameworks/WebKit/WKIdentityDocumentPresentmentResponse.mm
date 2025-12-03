@interface WKIdentityDocumentPresentmentResponse
- (NSData)responseData;
- (NSString)protocolString;
- (WKIdentityDocumentPresentmentResponse)init;
- (WKIdentityDocumentPresentmentResponse)initWithProtocolString:(id)string responseData:(id)data;
@end

@implementation WKIdentityDocumentPresentmentResponse

- (NSString)protocolString
{
  v2 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentResponse_protocolString);
  v3 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentResponse_protocolString + 8);

  v4 = sub_23B59D810();

  return v4;
}

- (NSData)responseData
{
  v2 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentResponse_responseData);
  v3 = *(self + OBJC_IVAR___WKIdentityDocumentPresentmentResponse_responseData + 8);
  sub_23B582D58(v2, v3);
  v4 = sub_23B59D2E0();
  sub_23B56C05C(v2, v3);

  return v4;
}

- (WKIdentityDocumentPresentmentResponse)initWithProtocolString:(id)string responseData:(id)data
{
  v6 = sub_23B59D820();
  v8 = v7;
  dataCopy = data;
  v10 = sub_23B59D2F0();
  v12 = v11;

  v13 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentResponse_protocolString);
  *v13 = v6;
  v13[1] = v8;
  v14 = (self + OBJC_IVAR___WKIdentityDocumentPresentmentResponse_responseData);
  *v14 = v10;
  v14[1] = v12;
  v16.receiver = self;
  v16.super_class = WKIdentityDocumentPresentmentResponse;
  return [(WKIdentityDocumentPresentmentResponse *)&v16 init];
}

- (WKIdentityDocumentPresentmentResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end