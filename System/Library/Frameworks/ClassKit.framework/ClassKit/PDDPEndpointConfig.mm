@interface PDDPEndpointConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsInternal:(BOOL)a3;
- (void)setHasMescalSignRequests:(BOOL)a3;
- (void)setHasMescalVerifyResponses:(BOOL)a3;
- (void)setHasPayloadLimitItems:(BOOL)a3;
- (void)setHasRequiresAuth:(BOOL)a3;
- (void)setHasResponseTTLSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEndpointConfig

- (void)setHasPayloadLimitItems:(BOOL)a3
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

- (void)setHasResponseTTLSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRequiresAuth:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasMescalSignRequests:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasMescalVerifyResponses:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsInternal:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPEndpointConfig;
  v3 = [(PDDPEndpointConfig *)&v7 description];
  v4 = [(PDDPEndpointConfig *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  url = self->_url;
  if (url)
  {
    [v4 setObject:url forKey:@"url"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [NSNumber numberWithInt:self->_payloadLimitItems];
    [v4 setObject:v12 forKey:@"payload_limit_items"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = [NSNumber numberWithInt:self->_payloadLimitBytes];
  [v4 setObject:v13 forKey:@"payload_limit_bytes"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [NSNumber numberWithInt:self->_responseTTLSeconds];
  [v4 setObject:v14 forKey:@"response_TTL_seconds"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [NSNumber numberWithBool:self->_requiresAuth];
  [v4 setObject:v15 forKey:@"requires_auth"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v16 = [NSNumber numberWithBool:self->_mescalSignRequests];
  [v4 setObject:v16 forKey:@"mescal_sign_requests"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    v8 = [NSNumber numberWithBool:self->_mescalVerifyResponses];
    [v4 setObject:v8 forKey:@"mescal_verify_responses"];
  }

LABEL_12:
  serviceId = self->_serviceId;
  if (serviceId)
  {
    [v4 setObject:serviceId forKey:@"service_id"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v10 = [NSNumber numberWithBool:self->_isInternal];
    [v4 setObject:v10 forKey:@"is_internal"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    payloadLimitItems = self->_payloadLimitItems;
    PBDataWriterWriteInt32Field();
    v4 = v13;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  payloadLimitBytes = self->_payloadLimitBytes;
  PBDataWriterWriteInt32Field();
  v4 = v13;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  responseTTLSeconds = self->_responseTTLSeconds;
  PBDataWriterWriteInt32Field();
  v4 = v13;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  requiresAuth = self->_requiresAuth;
  PBDataWriterWriteBOOLField();
  v4 = v13;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  mescalSignRequests = self->_mescalSignRequests;
  PBDataWriterWriteBOOLField();
  v4 = v13;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    mescalVerifyResponses = self->_mescalVerifyResponses;
    PBDataWriterWriteBOOLField();
    v4 = v13;
  }

LABEL_12:
  if (self->_serviceId)
  {
    PBDataWriterWriteStringField();
    v4 = v13;
  }

  if ((*&self->_has & 8) != 0)
  {
    isInternal = self->_isInternal;
    PBDataWriterWriteBOOLField();
    v4 = v13;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  if (self->_url)
  {
    [v6 setUrl:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_payloadLimitItems;
    *(v4 + 52) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 4) = self->_payloadLimitBytes;
  *(v4 + 52) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 6) = self->_responseTTLSeconds;
  *(v4 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 51) = self->_requiresAuth;
  *(v4 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  *(v4 + 49) = self->_mescalSignRequests;
  *(v4 + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    *(v4 + 50) = self->_mescalVerifyResponses;
    *(v4 + 52) |= 0x20u;
  }

LABEL_12:
  if (self->_serviceId)
  {
    [v6 setServiceId:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 48) = self->_isInternal;
    *(v4 + 52) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_url copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 5) = self->_payloadLimitItems;
    *(v5 + 52) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 4) = self->_payloadLimitBytes;
  *(v5 + 52) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v5 + 6) = self->_responseTTLSeconds;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 51) = self->_requiresAuth;
  *(v5 + 52) |= 0x40u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v5 + 49) = self->_mescalSignRequests;
  *(v5 + 52) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    *(v5 + 50) = self->_mescalVerifyResponses;
    *(v5 + 52) |= 0x20u;
  }

LABEL_8:
  v11 = [(NSString *)self->_serviceId copyWithZone:a3];
  v12 = v5[4];
  v5[4] = v11;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 48) = self->_isInternal;
    *(v5 + 52) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_54;
    }
  }

  url = self->_url;
  if (url | *(v4 + 5))
  {
    if (![(NSString *)url isEqual:?])
    {
      goto LABEL_54;
    }
  }

  has = self->_has;
  v8 = *(v4 + 52);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_payloadLimitItems != *(v4 + 5))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_54;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_payloadLimitBytes != *(v4 + 4))
    {
      goto LABEL_54;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_responseTTLSeconds != *(v4 + 6))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 52) & 0x40) == 0)
    {
      goto LABEL_54;
    }

    v11 = *(v4 + 51);
    if (self->_requiresAuth)
    {
      if ((*(v4 + 51) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 51))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 52) & 0x40) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0)
    {
      goto LABEL_54;
    }

    v12 = *(v4 + 49);
    if (self->_mescalSignRequests)
    {
      if ((*(v4 + 49) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 49))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 52) & 0x20) == 0)
    {
      goto LABEL_54;
    }

    v13 = *(v4 + 50);
    if (self->_mescalVerifyResponses)
    {
      if ((*(v4 + 50) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else if (*(v4 + 50))
    {
      goto LABEL_54;
    }
  }

  else if ((*(v4 + 52) & 0x20) != 0)
  {
    goto LABEL_54;
  }

  serviceId = self->_serviceId;
  if (serviceId | *(v4 + 4))
  {
    if (![(NSString *)serviceId isEqual:?])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v8 = *(v4 + 52);
  }

  v10 = (v8 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v8 & 8) != 0)
    {
      if (self->_isInternal)
      {
        if (*(v4 + 48))
        {
          goto LABEL_56;
        }
      }

      else if (!*(v4 + 48))
      {
LABEL_56:
        v10 = 1;
        goto LABEL_55;
      }
    }

LABEL_54:
    v10 = 0;
  }

LABEL_55:

  return v10;
}

- (unint64_t)hash
{
  v13 = [(NSString *)self->_identifier hash];
  v3 = [(NSString *)self->_url hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_payloadLimitItems;
    if (*&self->_has)
    {
LABEL_3:
      v5 = 2654435761 * self->_payloadLimitBytes;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_responseTTLSeconds;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_requiresAuth;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_mescalSignRequests;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_mescalVerifyResponses;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSString *)self->_serviceId hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_isInternal;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 1))
  {
    [(PDDPEndpointConfig *)self setIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(PDDPEndpointConfig *)self setUrl:?];
    v4 = v6;
  }

  v5 = *(v4 + 52);
  if ((v5 & 2) != 0)
  {
    self->_payloadLimitItems = *(v4 + 5);
    *&self->_has |= 2u;
    v5 = *(v4 + 52);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*(v4 + 52) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_payloadLimitBytes = *(v4 + 4);
  *&self->_has |= 1u;
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_responseTTLSeconds = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_requiresAuth = *(v4 + 51);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  self->_mescalSignRequests = *(v4 + 49);
  *&self->_has |= 0x10u;
  if ((*(v4 + 52) & 0x20) != 0)
  {
LABEL_11:
    self->_mescalVerifyResponses = *(v4 + 50);
    *&self->_has |= 0x20u;
  }

LABEL_12:
  if (*(v4 + 4))
  {
    [(PDDPEndpointConfig *)self setServiceId:?];
    v4 = v6;
  }

  if ((*(v4 + 52) & 8) != 0)
  {
    self->_isInternal = *(v4 + 48);
    *&self->_has |= 8u;
  }
}

@end