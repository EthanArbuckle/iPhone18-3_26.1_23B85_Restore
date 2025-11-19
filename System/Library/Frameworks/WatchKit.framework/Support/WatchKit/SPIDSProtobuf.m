@interface SPIDSProtobuf
+ (id)cacheRequestWithProtoData:(id)a3 identifier:(id)a4;
+ (id)protobufWithSPPlist:(id)a3 identifier:(id)a4;
@end

@implementation SPIDSProtobuf

+ (id)cacheRequestWithProtoData:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SPProtoSockPuppetIDSObject);
  [(SPProtoSockPuppetIDSObject *)v7 setObjectData:v6];

  [(SPProtoSockPuppetIDSObject *)v7 setReceiver:v5];
  [(SPProtoSockPuppetIDSObject *)v7 setType:2];
  v8 = [(SPProtoSockPuppetIDSObject *)v7 data];
  v9 = [[IDSProtobuf alloc] initWithProtobufData:v8 type:1 isResponse:0];

  return v9;
}

+ (id)protobufWithSPPlist:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = [a3 data];
  if (v6)
  {
    v7 = objc_alloc_init(SPProtoSockPuppetIDSObject);
    [(SPProtoSockPuppetIDSObject *)v7 setObjectData:v6];
    [(SPProtoSockPuppetIDSObject *)v7 setReceiver:v5];
    [(SPProtoSockPuppetIDSObject *)v7 setType:3];
    v8 = [(SPProtoSockPuppetIDSObject *)v7 data];
    v9 = [[IDSProtobuf alloc] initWithProtobufData:v8 type:1 isResponse:0];
  }

  else
  {
    v10 = wk_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10002A8EC(v10);
    }

    v9 = 0;
  }

  return v9;
}

@end