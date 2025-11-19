@interface OTAuthenticatedCiphertext
+ (id)fromSFAuthenticatedCiphertext:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)asSFAuthenticatedCiphertext;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTAuthenticatedCiphertext

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(OTAuthenticatedCiphertext *)self setCiphertext:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(OTAuthenticatedCiphertext *)self setAuthenticationCode:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(OTAuthenticatedCiphertext *)self setInitializationVector:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ciphertext hash];
  v4 = [(NSData *)self->_authenticationCode hash]^ v3;
  return v4 ^ [(NSData *)self->_initializationVector hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | v4[2])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((authenticationCode = self->_authenticationCode, !(authenticationCode | v4[1])) || -[NSData isEqual:](authenticationCode, "isEqual:")))
  {
    initializationVector = self->_initializationVector;
    if (initializationVector | v4[3])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_authenticationCode copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_initializationVector copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  ciphertext = self->_ciphertext;
  v5 = a3;
  [v5 setCiphertext:ciphertext];
  [v5 setAuthenticationCode:self->_authenticationCode];
  [v5 setInitializationVector:self->_initializationVector];
}

- (void)writeTo:(id)a3
{
  ciphertext = self->_ciphertext;
  v7 = a3;
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
  v4 = [(OTAuthenticatedCiphertext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)asSFAuthenticatedCiphertext
{
  v3 = [_SFAuthenticatedCiphertext alloc];
  v4 = [(OTAuthenticatedCiphertext *)self ciphertext];
  v5 = [(OTAuthenticatedCiphertext *)self authenticationCode];
  v6 = [(OTAuthenticatedCiphertext *)self initializationVector];
  v7 = [v3 initWithCiphertext:v4 authenticationCode:v5 initializationVector:v6];

  return v7;
}

+ (id)fromSFAuthenticatedCiphertext:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 ciphertext];
  [v4 setCiphertext:v5];

  v6 = [v3 authenticationCode];
  [v4 setAuthenticationCode:v6];

  v7 = [v3 initializationVector];

  [v4 setInitializationVector:v7];

  return v4;
}

@end