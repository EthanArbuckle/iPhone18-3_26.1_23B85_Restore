@interface OTAuthenticatedCiphertext
+ (id)fromSFAuthenticatedCiphertext:(id)ciphertext;
- (BOOL)isEqual:(id)equal;
- (id)asSFAuthenticatedCiphertext;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTAuthenticatedCiphertext

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(OTAuthenticatedCiphertext *)self setCiphertext:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(OTAuthenticatedCiphertext *)self setAuthenticationCode:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(OTAuthenticatedCiphertext *)self setInitializationVector:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ciphertext hash];
  v4 = [(NSData *)self->_authenticationCode hash]^ v3;
  return v4 ^ [(NSData *)self->_initializationVector hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | equalCopy[2])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((authenticationCode = self->_authenticationCode, !(authenticationCode | equalCopy[1])) || -[NSData isEqual:](authenticationCode, "isEqual:")))
  {
    initializationVector = self->_initializationVector;
    if (initializationVector | equalCopy[3])
    {
      v8 = [(NSData *)initializationVector isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_authenticationCode copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_initializationVector copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  ciphertext = self->_ciphertext;
  toCopy = to;
  [toCopy setCiphertext:ciphertext];
  [toCopy setAuthenticationCode:self->_authenticationCode];
  [toCopy setInitializationVector:self->_initializationVector];
}

- (void)writeTo:(id)to
{
  ciphertext = self->_ciphertext;
  toCopy = to;
  PBDataWriterWriteDataField();
  authenticationCode = self->_authenticationCode;
  PBDataWriterWriteDataField();
  initializationVector = self->_initializationVector;
  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    [v3 setObject:ciphertext forKey:@"ciphertext"];
  }

  authenticationCode = self->_authenticationCode;
  if (authenticationCode)
  {
    [v4 setObject:authenticationCode forKey:@"authenticationCode"];
  }

  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [v4 setObject:initializationVector forKey:@"initializationVector"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTAuthenticatedCiphertext;
  v3 = [(OTAuthenticatedCiphertext *)&v7 description];
  dictionaryRepresentation = [(OTAuthenticatedCiphertext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)asSFAuthenticatedCiphertext
{
  v3 = [_SFAuthenticatedCiphertext alloc];
  ciphertext = [(OTAuthenticatedCiphertext *)self ciphertext];
  authenticationCode = [(OTAuthenticatedCiphertext *)self authenticationCode];
  initializationVector = [(OTAuthenticatedCiphertext *)self initializationVector];
  v7 = [v3 initWithCiphertext:ciphertext authenticationCode:authenticationCode initializationVector:initializationVector];

  return v7;
}

+ (id)fromSFAuthenticatedCiphertext:(id)ciphertext
{
  ciphertextCopy = ciphertext;
  v4 = objc_opt_new();
  ciphertext = [ciphertextCopy ciphertext];
  [v4 setCiphertext:ciphertext];

  authenticationCode = [ciphertextCopy authenticationCode];
  [v4 setAuthenticationCode:authenticationCode];

  initializationVector = [ciphertextCopy initializationVector];

  [v4 setInitializationVector:initializationVector];

  return v4;
}

@end