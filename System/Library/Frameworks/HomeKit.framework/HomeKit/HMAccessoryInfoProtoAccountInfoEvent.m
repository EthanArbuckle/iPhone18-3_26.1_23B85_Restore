@interface HMAccessoryInfoProtoAccountInfoEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoAccountInfoEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(HMAccessoryInfoProtoAccountInfoEvent *)self setUsername:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(HMAccessoryInfoProtoAccountInfoEvent *)self setAaAltDSID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(HMAccessoryInfoProtoAccountInfoEvent *)self setAmsAltDSID:?];
    v4 = v5;
  }

  if (v4[36])
  {
    self->_signedIn = v4[32];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  username = self->_username;
  if (username | *(v4 + 3))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_10;
    }
  }

  aaAltDSID = self->_aaAltDSID;
  if (aaAltDSID | *(v4 + 1))
  {
    if (![(NSString *)aaAltDSID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  amsAltDSID = self->_amsAltDSID;
  if (amsAltDSID | *(v4 + 2))
  {
    if (![(NSString *)amsAltDSID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_signedIn)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_username copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_aaAltDSID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_amsAltDSID copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_signedIn;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_username)
  {
    [v4 setUsername:?];
    v4 = v5;
  }

  if (self->_aaAltDSID)
  {
    [v5 setAaAltDSID:?];
    v4 = v5;
  }

  if (self->_amsAltDSID)
  {
    [v5 setAmsAltDSID:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[32] = self->_signedIn;
    v4[36] |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_username)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_aaAltDSID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_amsAltDSID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    signedIn = self->_signedIn;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  username = self->_username;
  if (username)
  {
    [v3 setObject:username forKey:@"username"];
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
  v5 = [(HMAccessoryInfoProtoAccountInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end