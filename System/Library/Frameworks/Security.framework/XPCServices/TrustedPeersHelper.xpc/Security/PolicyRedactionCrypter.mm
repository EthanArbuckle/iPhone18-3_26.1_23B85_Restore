@interface PolicyRedactionCrypter
- (_TtC18TrustedPeersHelper22PolicyRedactionCrypter)init;
- (id)decryptData:(id)a3 withKey:(id)a4 error:(id *)a5;
- (id)encryptData:(id)a3 withKey:(id)a4 error:(id *)a5;
@end

@implementation PolicyRedactionCrypter

- (id)decryptData:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_100216224();
  v12 = v11;

  v13 = sub_1000146BC(v7, v10, v12);
  v15 = v14;

  sub_100002BF0(v10, v12);
  v16.super.isa = sub_100216204().super.isa;
  sub_100002BF0(v13, v15);

  return v16.super.isa;
}

- (id)encryptData:(id)a3 withKey:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_100216224();
  v12 = v11;

  v13 = sub_100216224();
  v15 = v14;

  v16 = sub_1000149F0(v10, v12, v13, v15);
  sub_100002BF0(v13, v15);
  sub_100002BF0(v10, v12);

  return v16;
}

- (_TtC18TrustedPeersHelper22PolicyRedactionCrypter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PolicyRedactionCrypter();
  return [(PolicyRedactionCrypter *)&v3 init];
}

@end