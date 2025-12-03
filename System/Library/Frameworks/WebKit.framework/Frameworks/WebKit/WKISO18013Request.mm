@interface WKISO18013Request
- (WKISO18013Request)init;
- (WKISO18013Request)initWithEncryptionInfo:(id)info deviceRequest:(id)request;
@end

@implementation WKISO18013Request

- (WKISO18013Request)initWithEncryptionInfo:(id)info deviceRequest:(id)request
{
  requestCopy = request;
  if (!info)
  {
    v6 = 0;
    v8 = 0;
    if (request)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = sub_23B59D820();
  v8 = v7;
  if (!requestCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  requestCopy = sub_23B59D820();
  v10 = v9;
LABEL_6:
  v11 = (self + OBJC_IVAR___WKISO18013Request_encryptionInfo);
  *v11 = 0;
  v11[1] = 0;
  v12 = (self + OBJC_IVAR___WKISO18013Request_deviceRequest);
  *v12 = 0;
  v12[1] = 0;
  swift_beginAccess();
  *v11 = v6;
  v11[1] = v8;
  swift_beginAccess();
  *v12 = requestCopy;
  v12[1] = v10;
  v14.receiver = self;
  v14.super_class = WKISO18013Request;
  return [(WKISO18013Request *)&v14 init];
}

- (WKISO18013Request)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end