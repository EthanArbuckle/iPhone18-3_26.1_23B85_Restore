@interface BearerContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPdpType:(id)type;
- (int)StringAsPrimaryDnsType:(id)type;
- (int)StringAsSecondaryDnsType:(id)type;
- (int)pdpType;
- (int)primaryDnsType;
- (int)secondaryDnsType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsAddrIratMobile:(BOOL)mobile;
- (void)setHasNsapi:(BOOL)nsapi;
- (void)setHasPdpType:(BOOL)type;
- (void)setHasPrimaryDnsType:(BOOL)type;
- (void)setHasSecondaryDnsType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BearerContext

- (void)setHasNsapi:(BOOL)nsapi
{
  if (nsapi)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)pdpType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_pdpType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPdpType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsPdpType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv6"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4v6"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4_PDN"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv6_PDN"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4v6_PDN"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_PPP"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_NONE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)primaryDnsType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_primaryDnsType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPrimaryDnsType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsPrimaryDnsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv6"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4v6"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4_PDN"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv6_PDN"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4v6_PDN"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_PPP"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_NONE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)secondaryDnsType
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_secondaryDnsType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSecondaryDnsType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsSecondaryDnsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv6"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4v6"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4_PDN"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv6_PDN"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_IPv4v6_PDN"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_PPP"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"PDP_TYPE_NONE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsAddrIratMobile:(BOOL)mobile
{
  if (mobile)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BearerContext;
  v3 = [(BearerContext *)&v7 description];
  dictionaryRepresentation = [(BearerContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [NSNumber numberWithUnsignedInt:self->_cid];
    [v3 setObject:v5 forKey:@"cid"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [NSNumber numberWithUnsignedInt:self->_nsapi];
    [v3 setObject:v6 forKey:@"nsapi"];
  }

  apn = self->_apn;
  if (apn)
  {
    [v3 setObject:apn forKey:@"apn"];
  }

  if ((*&self->_has & 4) != 0)
  {
    pdpType = self->_pdpType;
    if (pdpType >= 8)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_pdpType];
    }

    else
    {
      v9 = off_100318FC0[pdpType];
    }

    [v3 setObject:v9 forKey:@"pdp_type"];
  }

  pdpAddr = self->_pdpAddr;
  if (pdpAddr)
  {
    [v3 setObject:pdpAddr forKey:@"pdp_addr"];
  }

  if ((*&self->_has & 8) != 0)
  {
    primaryDnsType = self->_primaryDnsType;
    if (primaryDnsType >= 8)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_primaryDnsType];
    }

    else
    {
      v12 = off_100318FC0[primaryDnsType];
    }

    [v3 setObject:v12 forKey:@"primary_dns_type"];
  }

  primaryDnsAddr = self->_primaryDnsAddr;
  if (primaryDnsAddr)
  {
    [v3 setObject:primaryDnsAddr forKey:@"primary_dns_addr"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    secondaryDnsType = self->_secondaryDnsType;
    if (secondaryDnsType >= 8)
    {
      v15 = [NSString stringWithFormat:@"(unknown: %i)", self->_secondaryDnsType];
    }

    else
    {
      v15 = off_100318FC0[secondaryDnsType];
    }

    [v3 setObject:v15 forKey:@"secondary_dns_type"];
  }

  secondaryDnsAddr = self->_secondaryDnsAddr;
  if (secondaryDnsAddr)
  {
    [v3 setObject:secondaryDnsAddr forKey:@"secondary_dns_addr"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v17 = [NSNumber numberWithBool:self->_isAddrIratMobile];
    [v3 setObject:v17 forKey:@"is_addr_irat_mobile"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    cid = self->_cid;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    nsapi = self->_nsapi;
    PBDataWriterWriteUint32Field();
  }

  if (self->_apn)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    pdpType = self->_pdpType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_pdpAddr)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 8) != 0)
  {
    primaryDnsType = self->_primaryDnsType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_primaryDnsAddr)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    secondaryDnsType = self->_secondaryDnsType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_secondaryDnsAddr)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isAddrIratMobile = self->_isAddrIratMobile;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[4] = self->_cid;
    *(toCopy + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[5] = self->_nsapi;
    *(toCopy + 72) |= 2u;
  }

  v6 = toCopy;
  if (self->_apn)
  {
    [toCopy setApn:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[8] = self->_pdpType;
    *(toCopy + 72) |= 4u;
  }

  if (self->_pdpAddr)
  {
    [v6 setPdpAddr:?];
    toCopy = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    toCopy[12] = self->_primaryDnsType;
    *(toCopy + 72) |= 8u;
  }

  if (self->_primaryDnsAddr)
  {
    [v6 setPrimaryDnsAddr:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    toCopy[16] = self->_secondaryDnsType;
    *(toCopy + 72) |= 0x10u;
  }

  if (self->_secondaryDnsAddr)
  {
    [v6 setSecondaryDnsAddr:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 68) = self->_isAddrIratMobile;
    *(toCopy + 72) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[4] = self->_cid;
    *(v5 + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[5] = self->_nsapi;
    *(v5 + 72) |= 2u;
  }

  v8 = [(NSString *)self->_apn copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 8) = self->_pdpType;
    *(v6 + 72) |= 4u;
  }

  v10 = [(NSData *)self->_pdpAddr copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 12) = self->_primaryDnsType;
    *(v6 + 72) |= 8u;
  }

  v12 = [(NSData *)self->_primaryDnsAddr copyWithZone:zone];
  v13 = v6[5];
  v6[5] = v12;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 16) = self->_secondaryDnsType;
    *(v6 + 72) |= 0x10u;
  }

  v14 = [(NSData *)self->_secondaryDnsAddr copyWithZone:zone];
  v15 = v6[7];
  v6[7] = v14;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 68) = self->_isAddrIratMobile;
    *(v6 + 72) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  has = self->_has;
  v6 = *(equalCopy + 72);
  if (has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_cid != *(equalCopy + 4))
    {
      goto LABEL_41;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_nsapi != *(equalCopy + 5))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_41;
  }

  apn = self->_apn;
  if (apn | *(equalCopy + 1))
  {
    if (![(NSString *)apn isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 72);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_pdpType != *(equalCopy + 8))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_41;
  }

  pdpAddr = self->_pdpAddr;
  if (pdpAddr | *(equalCopy + 3))
  {
    if (![(NSData *)pdpAddr isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 72);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_primaryDnsType != *(equalCopy + 12))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_41;
  }

  primaryDnsAddr = self->_primaryDnsAddr;
  if (primaryDnsAddr | *(equalCopy + 5))
  {
    if (![(NSData *)primaryDnsAddr isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v12 = *(equalCopy + 72);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 72) & 0x10) == 0 || self->_secondaryDnsType != *(equalCopy + 16))
    {
      goto LABEL_41;
    }
  }

  else if ((*(equalCopy + 72) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  secondaryDnsAddr = self->_secondaryDnsAddr;
  if (secondaryDnsAddr | *(equalCopy + 7))
  {
    if (![(NSData *)secondaryDnsAddr isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v14 = (*(equalCopy + 72) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 72) & 0x20) != 0)
    {
      if (self->_isAddrIratMobile)
      {
        if ((*(equalCopy + 68) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (*(equalCopy + 68))
      {
        goto LABEL_41;
      }

      v14 = 1;
      goto LABEL_42;
    }

LABEL_41:
    v14 = 0;
  }

LABEL_42:

  return v14;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_cid;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_nsapi;
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = [(NSString *)self->_apn hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_pdpType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_pdpAddr hash];
  if ((*&self->_has & 8) != 0)
  {
    v7 = 2654435761 * self->_primaryDnsType;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSData *)self->_primaryDnsAddr hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v9 = 2654435761 * self->_secondaryDnsType;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSData *)self->_secondaryDnsAddr hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isAddrIratMobile;
  }

  else
  {
    v11 = 0;
  }

  return v3 ^ v13 ^ v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 72);
  if (v5)
  {
    self->_cid = *(fromCopy + 4);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 72);
  }

  if ((v5 & 2) != 0)
  {
    self->_nsapi = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(BearerContext *)self setApn:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 72) & 4) != 0)
  {
    self->_pdpType = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 3))
  {
    [(BearerContext *)self setPdpAddr:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 72) & 8) != 0)
  {
    self->_primaryDnsType = *(fromCopy + 12);
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 5))
  {
    [(BearerContext *)self setPrimaryDnsAddr:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 72) & 0x10) != 0)
  {
    self->_secondaryDnsType = *(fromCopy + 16);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 7))
  {
    [(BearerContext *)self setSecondaryDnsAddr:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 72) & 0x20) != 0)
  {
    self->_isAddrIratMobile = *(fromCopy + 68);
    *&self->_has |= 0x20u;
  }
}

@end