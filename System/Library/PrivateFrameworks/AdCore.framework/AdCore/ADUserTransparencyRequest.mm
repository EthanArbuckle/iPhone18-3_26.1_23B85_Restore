@interface ADUserTransparencyRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLimitAdTracking:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADUserTransparencyRequest

+ (id)options
{
  if (options_once_12 != -1)
  {
    +[ADUserTransparencyRequest options];
  }

  v3 = options_sOptions_12;

  return v3;
}

void __36__ADUserTransparencyRequest_options__block_invoke()
{
  v0 = options_sOptions_12;
  options_sOptions_12 = &unk_285104E20;
}

- (void)setHasLimitAdTracking:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADUserTransparencyRequest;
  v4 = [(ADUserTransparencyRequest *)&v8 description];
  v5 = [(ADUserTransparencyRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  dPID = self->_dPID;
  if (dPID)
  {
    [v3 setObject:dPID forKey:@"DPID"];
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier)
  {
    [v4 setObject:localeIdentifier forKey:@"localeIdentifier"];
  }

  iAdID = self->_iAdID;
  if (iAdID)
  {
    [v4 setObject:iAdID forKey:@"iAdID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v4 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore)
  {
    [v4 setObject:iTunesStore forKey:@"iTunesStore"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_limitAdTracking];
    [v4 setObject:v11 forKey:@"limitAdTracking"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSignedInToiTunes];
    [v4 setObject:v12 forKey:@"isSignedInToiTunes"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_localeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_iTunesStore)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    limitAdTracking = self->_limitAdTracking;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    isSignedInToiTunes = self->_isSignedInToiTunes;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dPID)
  {
    [v4 setDPID:?];
    v4 = v6;
  }

  if (self->_localeIdentifier)
  {
    [v6 setLocaleIdentifier:?];
    v4 = v6;
  }

  if (self->_iAdID)
  {
    [v6 setIAdID:?];
    v4 = v6;
  }

  if (self->_contentiAdID)
  {
    [v6 setContentiAdID:?];
    v4 = v6;
  }

  if (self->_iTunesStore)
  {
    [v6 setITunesStore:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[49] = self->_limitAdTracking;
    v4[52] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[48] = self->_isSignedInToiTunes;
    v4[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_dPID copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_localeIdentifier copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSData *)self->_iAdID copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSData *)self->_contentiAdID copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v14 = [(NSString *)self->_iTunesStore copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 49) = self->_limitAdTracking;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 48) = self->_isSignedInToiTunes;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  dPID = self->_dPID;
  if (dPID | *(v4 + 2))
  {
    if (![(NSData *)dPID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  localeIdentifier = self->_localeIdentifier;
  if (localeIdentifier | *(v4 + 5))
  {
    if (![(NSString *)localeIdentifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  iAdID = self->_iAdID;
  if (iAdID | *(v4 + 3))
  {
    if (![(NSData *)iAdID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID | *(v4 + 1))
  {
    if (![(NSData *)contentiAdID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  iTunesStore = self->_iTunesStore;
  if (iTunesStore | *(v4 + 4))
  {
    if (![(NSString *)iTunesStore isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    v10 = 0;
    goto LABEL_21;
  }

  if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_20;
  }

  v12 = *(v4 + 49);
  if (self->_limitAdTracking)
  {
    if ((*(v4 + 49) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 49))
  {
    goto LABEL_20;
  }

LABEL_14:
  v10 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 52))
    {
      if (self->_isSignedInToiTunes)
      {
        if (*(v4 + 48))
        {
          goto LABEL_28;
        }
      }

      else if (!*(v4 + 48))
      {
LABEL_28:
        v10 = 1;
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

LABEL_21:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_dPID hash];
  v4 = [(NSString *)self->_localeIdentifier hash];
  v5 = [(NSData *)self->_iAdID hash];
  v6 = [(NSData *)self->_contentiAdID hash];
  v7 = [(NSString *)self->_iTunesStore hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_limitAdTracking;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_isSignedInToiTunes;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(ADUserTransparencyRequest *)self setDPID:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(ADUserTransparencyRequest *)self setLocaleIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(ADUserTransparencyRequest *)self setIAdID:?];
    v4 = v6;
  }

  if (*(v4 + 1))
  {
    [(ADUserTransparencyRequest *)self setContentiAdID:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(ADUserTransparencyRequest *)self setITunesStore:?];
    v4 = v6;
  }

  v5 = v4[52];
  if ((v5 & 2) != 0)
  {
    self->_limitAdTracking = v4[49];
    *&self->_has |= 2u;
    v5 = v4[52];
  }

  if (v5)
  {
    self->_isSignedInToiTunes = v4[48];
    *&self->_has |= 1u;
  }
}

@end