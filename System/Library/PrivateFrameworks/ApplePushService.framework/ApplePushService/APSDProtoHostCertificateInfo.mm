@interface APSDProtoHostCertificateInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCertificates:(id)certificates;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APSDProtoHostCertificateInfo

- (void)addCertificates:(id)certificates
{
  certificatesCopy = certificates;
  certificates = self->_certificates;
  v8 = certificatesCopy;
  if (!certificates)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_certificates;
    self->_certificates = v6;

    certificatesCopy = v8;
    certificates = self->_certificates;
  }

  [(NSMutableArray *)certificates addObject:certificatesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APSDProtoHostCertificateInfo;
  v3 = [(APSDProtoHostCertificateInfo *)&v7 description];
  dictionaryRepresentation = [(APSDProtoHostCertificateInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  certificates = self->_certificates;
  if (certificates)
  {
    [v3 setObject:certificates forKey:@"certificates"];
  }

  nonce = self->_nonce;
  if (nonce)
  {
    [v4 setObject:nonce forKey:@"nonce"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v4 setObject:signature forKey:@"signature"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_certificates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_nonce)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(APSDProtoHostCertificateInfo *)self certificatesCount])
  {
    [toCopy clearCertificates];
    certificatesCount = [(APSDProtoHostCertificateInfo *)self certificatesCount];
    if (certificatesCount)
    {
      v5 = certificatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(APSDProtoHostCertificateInfo *)self certificatesAtIndex:i];
        [toCopy addCertificates:v7];
      }
    }
  }

  if (self->_nonce)
  {
    [toCopy setNonce:?];
  }

  v8 = toCopy;
  if (self->_signature)
  {
    [toCopy setSignature:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_certificates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addCertificates:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_nonce copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSData *)self->_signature copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((certificates = self->_certificates, !(certificates | equalCopy[1])) || -[NSMutableArray isEqual:](certificates, "isEqual:")) && ((nonce = self->_nonce, !(nonce | equalCopy[2])) || -[NSData isEqual:](nonce, "isEqual:")))
  {
    signature = self->_signature;
    if (signature | equalCopy[3])
    {
      v8 = [(NSData *)signature isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_certificates hash];
  v4 = [(NSData *)self->_nonce hash]^ v3;
  return v4 ^ [(NSData *)self->_signature hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(APSDProtoHostCertificateInfo *)self addCertificates:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[2])
  {
    [(APSDProtoHostCertificateInfo *)self setNonce:?];
  }

  if (fromCopy[3])
  {
    [(APSDProtoHostCertificateInfo *)self setSignature:?];
  }
}

@end