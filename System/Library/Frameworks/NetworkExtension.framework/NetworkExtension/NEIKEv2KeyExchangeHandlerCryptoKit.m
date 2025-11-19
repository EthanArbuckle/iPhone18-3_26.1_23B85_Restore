@interface NEIKEv2KeyExchangeHandlerCryptoKit
+ (id)handlerForMethod:(unint64_t)a3 error:(id *)a4;
+ (id)handlerForMethod:(unint64_t)a3 peerPayload:(id)a4 error:(id *)a5;
- (NEIKEv2KeyExchangeHandlerCryptoKit)initWithMethod:(unint64_t)a3 keyExchangeData:(id)a4;
@end

@implementation NEIKEv2KeyExchangeHandlerCryptoKit

+ (id)handlerForMethod:(unint64_t)a3 error:(id *)a4
{
  v4 = sub_1BA84A53C();

  return v4;
}

+ (id)handlerForMethod:(unint64_t)a3 peerPayload:(id)a4 error:(id *)a5
{
  v6 = a4;
  v7 = sub_1BAA3969C();
  v9 = v8;

  v10 = sub_1BA84AF88(a3, v7, v9);
  sub_1BA84724C(v7, v9);

  return v10;
}

- (NEIKEv2KeyExchangeHandlerCryptoKit)initWithMethod:(unint64_t)a3 keyExchangeData:(id)a4
{
  v6 = a4;
  v7 = sub_1BAA3969C();
  v9 = v8;

  v10 = sub_1BAA3968C();
  v11 = [(NEIKEv2KeyExchangeHandler *)self initWithMethod:a3 keyExchangeData:v10];
  sub_1BA84724C(v7, v9);

  return v11;
}

@end