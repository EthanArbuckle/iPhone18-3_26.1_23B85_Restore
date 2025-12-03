@interface SPIDSProtobuf
+ (id)cacheRequestWithProtoData:(id)data identifier:(id)identifier;
+ (id)protobufWithSPPlist:(id)plist identifier:(id)identifier;
@end

@implementation SPIDSProtobuf

+ (id)cacheRequestWithProtoData:(id)data identifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  v7 = objc_alloc_init(SPProtoSockPuppetIDSObject);
  [(SPProtoSockPuppetIDSObject *)v7 setObjectData:dataCopy];

  [(SPProtoSockPuppetIDSObject *)v7 setReceiver:identifierCopy];
  [(SPProtoSockPuppetIDSObject *)v7 setType:2];
  data = [(SPProtoSockPuppetIDSObject *)v7 data];
  v9 = [[IDSProtobuf alloc] initWithProtobufData:data type:1 isResponse:0];

  return v9;
}

+ (id)protobufWithSPPlist:(id)plist identifier:(id)identifier
{
  identifierCopy = identifier;
  data = [plist data];
  if (data)
  {
    v7 = objc_alloc_init(SPProtoSockPuppetIDSObject);
    [(SPProtoSockPuppetIDSObject *)v7 setObjectData:data];
    [(SPProtoSockPuppetIDSObject *)v7 setReceiver:identifierCopy];
    [(SPProtoSockPuppetIDSObject *)v7 setType:3];
    data2 = [(SPProtoSockPuppetIDSObject *)v7 data];
    v9 = [[IDSProtobuf alloc] initWithProtobufData:data2 type:1 isResponse:0];
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