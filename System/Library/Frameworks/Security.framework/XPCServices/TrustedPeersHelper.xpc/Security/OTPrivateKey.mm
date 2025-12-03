@interface OTPrivateKey
+ (__SecKey)createSecKey:(id)key;
+ (id)fromECKeyPair:(id)pair;
- (BOOL)isEqual:(id)equal;
- (id)asECKeyPair:(id *)pair;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTPrivateKey

- (id)asECKeyPair:(id *)pair
{
  if ([(OTPrivateKey *)self keyType]== 1)
  {
    keyData = [(OTPrivateKey *)self keyData];
    v6 = [OTPrivateKey createSecKey:keyData];

    v7 = [[_SFECKeyPair alloc] initWithSecKey:v6];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else if (pair)
  {
    [NSError errorWithDomain:OctagonErrorDomain code:29 userInfo:0];
    *pair = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (__SecKey)createSecKey:(id)key
{
  v7[0] = kSecAttrKeyClass;
  v7[1] = kSecAttrKeyType;
  v8[0] = kSecAttrKeyClassPrivate;
  v8[1] = kSecAttrKeyTypeEC;
  keyCopy = key;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = SecKeyCreateWithData(keyCopy, v4, 0);

  return v5;
}

+ (id)fromECKeyPair:(id)pair
{
  pairCopy = pair;
  v4 = objc_opt_new();
  [v4 setKeyType:1];
  keyData = [pairCopy keyData];

  [v4 setKeyData:keyData];

  return v4;
}

- (void)mergeFrom:(id)from
{
  self->_keyType = *(from + 4);
  if (*(from + 1))
  {
    [(OTPrivateKey *)self setKeyData:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_keyType == *(equalCopy + 4))
  {
    keyData = self->_keyData;
    if (keyData | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[4] = self->_keyType;
  v6 = [(NSData *)self->_keyData copyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  keyType = self->_keyType;
  toCopy = to;
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
  dictionaryRepresentation = [(OTPrivateKey *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end