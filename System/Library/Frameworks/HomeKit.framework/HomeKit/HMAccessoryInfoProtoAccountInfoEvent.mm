@interface HMAccessoryInfoProtoAccountInfoEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryInfoProtoAccountInfoEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(HMAccessoryInfoProtoAccountInfoEvent *)self setUsername:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(HMAccessoryInfoProtoAccountInfoEvent *)self setAaAltDSID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(HMAccessoryInfoProtoAccountInfoEvent *)self setAmsAltDSID:?];
    fromCopy = v5;
  }

  if (fromCopy[36])
  {
    self->_signedIn = fromCopy[32];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_username hash];
  v4 = [(NSString *)self->_aaAltDSID hash];
  v5 = [(NSString *)self->_amsAltDSID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_signedIn;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  username = self->_username;
  if (username | *(equalCopy + 3))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_10;
    }
  }

  aaAltDSID = self->_aaAltDSID;
  if (aaAltDSID | *(equalCopy + 1))
  {
    if (![(NSString *)aaAltDSID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  amsAltDSID = self->_amsAltDSID;
  if (amsAltDSID | *(equalCopy + 2))
  {
    if (![(NSString *)amsAltDSID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_signedIn)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_aaAltDSID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_amsAltDSID copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_signedIn;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_username)
  {
    [toCopy setUsername:?];
    toCopy = v5;
  }

  if (self->_aaAltDSID)
  {
    [v5 setAaAltDSID:?];
    toCopy = v5;
  }

  if (self->_amsAltDSID)
  {
    [v5 setAmsAltDSID:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_signedIn;
    toCopy[36] |= 1u;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_aaAltDSID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_amsAltDSID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    signedIn = self->_signedIn;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  username = self->_username;
  if (username)
  {
    [dictionary setObject:username forKey:@"username"];
  }

  aaAltDSID = self->_aaAltDSID;
  if (aaAltDSID)
  {
    [v4 setObject:aaAltDSID forKey:@"aa_altDSID"];
  }

  amsAltDSID = self->_amsAltDSID;
  if (amsAltDSID)
  {
    [v4 setObject:amsAltDSID forKey:@"ams_altDSID"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_signedIn];
    [v4 setObject:v8 forKey:@"signedIn"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoAccountInfoEvent;
  v4 = [(HMAccessoryInfoProtoAccountInfoEvent *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryInfoProtoAccountInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end