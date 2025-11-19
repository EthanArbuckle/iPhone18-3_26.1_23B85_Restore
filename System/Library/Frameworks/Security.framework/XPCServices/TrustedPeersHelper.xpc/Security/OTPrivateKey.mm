@interface OTPrivateKey
+ (__SecKey)createSecKey:(id)a3;
+ (id)fromECKeyPair:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)asECKeyPair:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTPrivateKey

- (id)asECKeyPair:(id *)a3
{
  if ([(OTPrivateKey *)self keyType]== 1)
  {
    v5 = [(OTPrivateKey *)self keyData];
    v6 = [OTPrivateKey createSecKey:v5];

    v7 = [[_SFECKeyPair alloc] initWithSecKey:v6];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else if (a3)
  {
    [NSError errorWithDomain:OctagonErrorDomain code:29 userInfo:0];
    *a3 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (__SecKey)createSecKey:(id)a3
{
  v7[0] = kSecAttrKeyClass;
  v7[1] = kSecAttrKeyType;
  v8[0] = kSecAttrKeyClassPrivate;
  v8[1] = kSecAttrKeyTypeEC;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = SecKeyCreateWithData(v3, v4, 0);

  return v5;
}

+ (id)fromECKeyPair:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setKeyType:1];
  v5 = [v3 keyData];

  [v4 setKeyData:v5];

  return v4;
}

- (void)mergeFrom:(id)a3
{
  self->_keyType = *(a3 + 4);
  if (*(a3 + 1))
  {
    [(OTPrivateKey *)self setKeyData:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_keyType == *(v4 + 4))
  {
    keyData = self->_keyData;
    if (keyData | v4[1])
    {
      v6 = [(NSData *)keyData isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[4] = self->_keyType;
  v6 = [(NSData *)self->_keyData copyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  return v5;
}

- (void)writeTo:(id)a3
{
  keyType = self->_keyType;
  v6 = a3;
  PBDataWriterWriteInt32Field();
  keyData = self->_keyData;
  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (self->_keyType == 1)
  {
    v4 = @"EC_NIST_CURVES";
  }

  else
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", self->_keyType];
  }

  [v3 setObject:v4 forKey:@"keyType"];

  keyData = self->_keyData;
  if (keyData)
  {
    [v3 setObject:keyData forKey:@"keyData"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTPrivateKey;
  v3 = [(OTPrivateKey *)&v7 description];
  v4 = [(OTPrivateKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end