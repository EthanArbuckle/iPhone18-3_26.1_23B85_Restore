@interface PDDPStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCode:(id)a3;
- (int)code;
- (unint64_t)hash;
- (void)addServerAlerts:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPStatus

- (int)code
{
  if (*&self->_has)
  {
    return self->_code;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_CODE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"S_OK"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"E_ERROR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"S_MIXED_RESPONSE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"S_OK_HAS_MORE_DATA"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"S_PROCESSING"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"E_BOOTSTRAP_REQUIRED"])
  {
    v4 = 100;
  }

  else if ([v3 isEqualToString:@"E_AUTHENTICATION_FAILED"])
  {
    v4 = 101;
  }

  else if ([v3 isEqualToString:@"E_NOT_AUTHORIZED"])
  {
    v4 = 102;
  }

  else if ([v3 isEqualToString:@"E_MESCAL_SIGNATURE_REQUIRED"])
  {
    v4 = 103;
  }

  else if ([v3 isEqualToString:@"E_MESCAL_BAD_SIGNATURE"])
  {
    v4 = 104;
  }

  else if ([v3 isEqualToString:@"E_MESCAL_PARSE_ERROR"])
  {
    v4 = 105;
  }

  else if ([v3 isEqualToString:@"E_BAD_REQUEST"])
  {
    v4 = 106;
  }

  else if ([v3 isEqualToString:@"E_BAD_PROTOCOL_VERSION"])
  {
    v4 = 107;
  }

  else if ([v3 isEqualToString:@"E_REQUEST_TOO_LARGE"])
  {
    v4 = 108;
  }

  else if ([v3 isEqualToString:@"E_REQUEST_TOO_MANY_ITEMS"])
  {
    v4 = 109;
  }

  else if ([v3 isEqualToString:@"E_SERVER_BUSY"])
  {
    v4 = 110;
  }

  else if ([v3 isEqualToString:@"E_ACCESS_DENIED"])
  {
    v4 = 111;
  }

  else if ([v3 isEqualToString:@"E_CONFLICT"])
  {
    v4 = 112;
  }

  else if ([v3 isEqualToString:@"E_INVALID_STATE"])
  {
    v4 = 113;
  }

  else if ([v3 isEqualToString:@"E_LOCK_TAKEN"])
  {
    v4 = 114;
  }

  else if ([v3 isEqualToString:@"E_DOWNSTREAM_SERVICE_FAILED"])
  {
    v4 = 115;
  }

  else if ([v3 isEqualToString:@"E_DOWNSTREAM_SERVICE_THROTTLED"])
  {
    v4 = 116;
  }

  else if ([v3 isEqualToString:@"E_DRIVE_USER_QUOTA_EXCEEDED"])
  {
    v4 = 117;
  }

  else if ([v3 isEqualToString:@"E_DRIVE_GROUP_QUOTA_EXCEEDED"])
  {
    v4 = 118;
  }

  else if ([v3 isEqualToString:@"E_DRIVE_ORG_QUOTA_EXCEEDED"])
  {
    v4 = 119;
  }

  else if ([v3 isEqualToString:@"E_RECORD_LIMIT_EXCEEDED"])
  {
    v4 = 120;
  }

  else if ([v3 isEqualToString:@"E_DISALLOWED_COUNTRY_CODE"])
  {
    v4 = 121;
  }

  else if ([v3 isEqualToString:@"E_DEVICE_UNSUPPORTED"])
  {
    v4 = 300;
  }

  else if ([v3 isEqualToString:@"E_INVALID_FIELD_VALUE"])
  {
    v4 = 500;
  }

  else if ([v3 isEqualToString:@"E_NOT_APPLICABLE_TYPE"])
  {
    v4 = 800;
  }

  else if ([v3 isEqualToString:@"E_ENTITY_NOT_FOUND"])
  {
    v4 = 801;
  }

  else if ([v3 isEqualToString:@"E_ENTITY_PRIVILEGE_CHANGE"])
  {
    v4 = 802;
  }

  else if ([v3 isEqualToString:@"E_MUST_ACCEPT_TERMS"])
  {
    v4 = 803;
  }

  else if ([v3 isEqualToString:@"E_ENTITY_EXPIRED"])
  {
    v4 = 804;
  }

  else if ([v3 isEqualToString:@"E_NOT_ALLOWED_FEDERATED_ORGANIZATION"])
  {
    v4 = 805;
  }

  else if ([v3 isEqualToString:@"E_DISALLOWED_EMAIL_DOMAIN"])
  {
    v4 = 806;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addServerAlerts:(id)a3
{
  v4 = a3;
  serverAlerts = self->_serverAlerts;
  v8 = v4;
  if (!serverAlerts)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_serverAlerts;
    self->_serverAlerts = v6;

    v4 = v8;
    serverAlerts = self->_serverAlerts;
  }

  [(NSMutableArray *)serverAlerts addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStatus;
  v3 = [(PDDPStatus *)&v7 description];
  v4 = [(PDDPStatus *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    code = self->_code;
    if (code > 299)
    {
      if (code <= 801)
      {
        if (code > 799)
        {
          if (code == 800)
          {
            v5 = @"E_NOT_APPLICABLE_TYPE";
          }

          else
          {
            v5 = @"E_ENTITY_NOT_FOUND";
          }

          goto LABEL_59;
        }

        if (code == 300)
        {
          v5 = @"E_DEVICE_UNSUPPORTED";
          goto LABEL_59;
        }

        if (code == 500)
        {
          v5 = @"E_INVALID_FIELD_VALUE";
          goto LABEL_59;
        }
      }

      else
      {
        if (code <= 803)
        {
          if (code == 802)
          {
            v5 = @"E_ENTITY_PRIVILEGE_CHANGE";
          }

          else
          {
            v5 = @"E_MUST_ACCEPT_TERMS";
          }

          goto LABEL_59;
        }

        switch(code)
        {
          case 804:
            v5 = @"E_ENTITY_EXPIRED";
            goto LABEL_59;
          case 805:
            v5 = @"E_NOT_ALLOWED_FEDERATED_ORGANIZATION";
            goto LABEL_59;
          case 806:
            v5 = @"E_DISALLOWED_EMAIL_DOMAIN";
LABEL_59:
            [v3 setObject:v5 forKey:@"code"];

            goto LABEL_60;
        }
      }
    }

    else
    {
      if (code > 3)
      {
        switch(code)
        {
          case 'd':
            v5 = @"E_BOOTSTRAP_REQUIRED";
            break;
          case 'e':
            v5 = @"E_AUTHENTICATION_FAILED";
            break;
          case 'f':
            v5 = @"E_NOT_AUTHORIZED";
            break;
          case 'g':
            v5 = @"E_MESCAL_SIGNATURE_REQUIRED";
            break;
          case 'h':
            v5 = @"E_MESCAL_BAD_SIGNATURE";
            break;
          case 'i':
            v5 = @"E_MESCAL_PARSE_ERROR";
            break;
          case 'j':
            v5 = @"E_BAD_REQUEST";
            break;
          case 'k':
            v5 = @"E_BAD_PROTOCOL_VERSION";
            break;
          case 'l':
            v5 = @"E_REQUEST_TOO_LARGE";
            break;
          case 'm':
            v5 = @"E_REQUEST_TOO_MANY_ITEMS";
            break;
          case 'n':
            v5 = @"E_SERVER_BUSY";
            break;
          case 'o':
            v5 = @"E_ACCESS_DENIED";
            break;
          case 'p':
            v5 = @"E_CONFLICT";
            break;
          case 'q':
            v5 = @"E_INVALID_STATE";
            break;
          case 'r':
            v5 = @"E_LOCK_TAKEN";
            break;
          case 's':
            v5 = @"E_DOWNSTREAM_SERVICE_FAILED";
            break;
          case 't':
            v5 = @"E_DOWNSTREAM_SERVICE_THROTTLED";
            break;
          case 'u':
            v5 = @"E_DRIVE_USER_QUOTA_EXCEEDED";
            break;
          case 'v':
            v5 = @"E_DRIVE_GROUP_QUOTA_EXCEEDED";
            break;
          case 'w':
            v5 = @"E_DRIVE_ORG_QUOTA_EXCEEDED";
            break;
          case 'x':
            v5 = @"E_RECORD_LIMIT_EXCEEDED";
            break;
          case 'y':
            v5 = @"E_DISALLOWED_COUNTRY_CODE";
            break;
          default:
            if (code == 4)
            {
              v5 = @"S_OK_HAS_MORE_DATA";
            }

            else
            {
              if (code != 5)
              {
                goto LABEL_31;
              }

              v5 = @"S_PROCESSING";
            }

            break;
        }

        goto LABEL_59;
      }

      if (code > 1)
      {
        if (code == 2)
        {
          v5 = @"E_ERROR";
        }

        else
        {
          v5 = @"S_MIXED_RESPONSE";
        }

        goto LABEL_59;
      }

      if (!code)
      {
        v5 = @"UNKNOWN_CODE";
        goto LABEL_59;
      }

      if (code == 1)
      {
        v5 = @"S_OK";
        goto LABEL_59;
      }
    }

LABEL_31:
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_code];
    goto LABEL_59;
  }

LABEL_60:
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  message = self->_message;
  if (message)
  {
    [v3 setObject:message forKey:@"message"];
  }

  internalMessage = self->_internalMessage;
  if (internalMessage)
  {
    [v3 setObject:internalMessage forKey:@"internal_message"];
  }

  if ([(NSMutableArray *)self->_serverAlerts count])
  {
    v9 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_serverAlerts, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_serverAlerts;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"server_alerts"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
  }

  if (self->_key)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_internalMessage)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_serverAlerts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_code;
    *(v4 + 48) |= 1u;
  }

  v9 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
  }

  if (self->_message)
  {
    [v9 setMessage:?];
  }

  if (self->_internalMessage)
  {
    [v9 setInternalMessage:?];
  }

  if ([(PDDPStatus *)self serverAlertsCount])
  {
    [v9 clearServerAlerts];
    v5 = [(PDDPStatus *)self serverAlertsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPStatus *)self serverAlertsAtIndex:i];
        [v9 addServerAlerts:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_code;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_key copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(NSString *)self->_message copyWithZone:a3];
  v10 = v6[4];
  v6[4] = v9;

  v11 = [(NSString *)self->_internalMessage copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_serverAlerts;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v6 addServerAlerts:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_code != *(v4 + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  key = self->_key;
  if (key | *(v4 + 3) && ![(NSString *)key isEqual:?])
  {
    goto LABEL_15;
  }

  message = self->_message;
  if (message | *(v4 + 4))
  {
    if (![(NSString *)message isEqual:?])
    {
      goto LABEL_15;
    }
  }

  internalMessage = self->_internalMessage;
  if (internalMessage | *(v4 + 2))
  {
    if (![(NSString *)internalMessage isEqual:?])
    {
      goto LABEL_15;
    }
  }

  serverAlerts = self->_serverAlerts;
  if (serverAlerts | *(v4 + 5))
  {
    v10 = [(NSMutableArray *)serverAlerts isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_code;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_key hash]^ v3;
  v5 = [(NSString *)self->_message hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_internalMessage hash];
  return v6 ^ [(NSMutableArray *)self->_serverAlerts hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[12])
  {
    self->_code = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PDDPStatus *)self setKey:?];
  }

  if (*(v5 + 4))
  {
    [(PDDPStatus *)self setMessage:?];
  }

  if (*(v5 + 2))
  {
    [(PDDPStatus *)self setInternalMessage:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v5 + 5);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PDDPStatus *)self addServerAlerts:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end