@interface NEIKEv2KeyExchangeHandlerCryptoKit
+ (id)handlerForMethod:(unint64_t)method error:(id *)error;
+ (id)handlerForMethod:(unint64_t)method peerPayload:(id)payload error:(id *)error;
- (NEIKEv2KeyExchangeHandlerCryptoKit)initWithMethod:(unint64_t)method keyExchangeData:(id)data;
@end

@implementation NEIKEv2KeyExchangeHandlerCryptoKit

+ (id)handlerForMethod:(unint64_t)method error:(id *)error
{
  v4 = sub_1BA84A53C();

  return v4;
}

+ (id)handlerForMethod:(unint64_t)method peerPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v7 = sub_1BAA3969C();
  v9 = v8;

  v10 = sub_1BA84AF88(method, v7, v9);
  sub_1BA84724C(v7, v9);

  return v10;
}

- (NEIKEv2KeyExchangeHandlerCryptoKit)initWithMethod:(unint64_t)method keyExchangeData:(id)data
{
  dataCopy = data;
  v7 = sub_1BAA3969C();
  v9 = v8;

  v10 = sub_1BAA3968C();
  v11 = [(NEIKEv2KeyExchangeHandler *)self initWithMethod:method keyExchangeData:v10];
  sub_1BA84724C(v7, v9);

  return v11;
}

@end