@interface BearerContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPdpType:(id)a3;
- (int)StringAsPrimaryDnsType:(id)a3;
- (int)StringAsSecondaryDnsType:(id)a3;
- (int)pdpType;
- (int)primaryDnsType;
- (int)secondaryDnsType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsAddrIratMobile:(BOOL)a3;
- (void)setHasNsapi:(BOOL)a3;
- (void)setHasPdpType:(BOOL)a3;
- (void)setHasPrimaryDnsType:(BOOL)a3;
- (void)setHasSecondaryDnsType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BearerContext

- (void)setHasNsapi:(BOOL)a3
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

- (void)setHasPdpType:(BOOL)a3
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

- (int)StringAsPdpType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PDP_TYPE_IPv4"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv6"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4v6"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4_PDN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv6_PDN"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4v6_PDN"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_PPP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_NONE"])
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

- (void)setHasPrimaryDnsType:(BOOL)a3
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

- (int)StringAsPrimaryDnsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PDP_TYPE_IPv4"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv6"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4v6"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4_PDN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv6_PDN"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4v6_PDN"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_PPP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_NONE"])
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

- (void)setHasSecondaryDnsType:(BOOL)a3
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

- (int)StringAsSecondaryDnsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PDP_TYPE_IPv4"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv6"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4v6"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4_PDN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv6_PDN"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_IPv4v6_PDN"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_PPP"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"PDP_TYPE_NONE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsAddrIratMobile:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = BearerContext;
  v3 = [(BearerContext *)&v7 description];
  v4 = [(BearerContext *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[4] = self->_cid;
    *(v4 + 72) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[5] = self->_nsapi;
    *(v4 + 72) |= 2u;
  }

  v6 = v4;
  if (self->_apn)
  {
    [v4 setApn:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[8] = self->_pdpType;
    *(v4 + 72) |= 4u;
  }

  if (self->_pdpAddr)
  {
    [v6 setPdpAddr:?];
    v4 = v6;
  }

  if ((*&self->_has & 8) != 0)
  {
    v4[12] = self->_primaryDnsType;
    *(v4 + 72) |= 8u;
  }

  if (self->_primaryDnsAddr)
  {
    [v6 setPrimaryDnsAddr:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v4[16] = self->_secondaryDnsType;
    *(v4 + 72) |= 0x10u;
  }

  if (self->_secondaryDnsAddr)
  {
    [v6 setSecondaryDnsAddr:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 68) = self->_isAddrIratMobile;
    *(v4 + 72) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v8 = [(NSString *)self->_apn copyWithZone:a3];
  v9 = v6[1];
  v6[1] = v8;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 8) = self->_pdpType;
    *(v6 + 72) |= 4u;
  }

  v10 = [(NSData *)self->_pdpAddr copyWithZone:a3];
  v11 = v6[3];
  v6[3] = v10;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 12) = self->_primaryDnsType;
    *(v6 + 72) |= 8u;
  }

  v12 = [(NSData *)self->_primaryDnsAddr copyWithZone:a3];
  v13 = v6[5];
  v6[5] = v12;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 16) = self->_secondaryDnsType;
    *(v6 + 72) |= 0x10u;
  }

  v14 = [(NSData *)self->_secondaryDnsAddr copyWithZone:a3];
  v15 = v6[7];
  v6[7] = v14;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 68) = self->_isAddrIratMobile;
    *(v6 + 72) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  has = self->_has;
  v6 = *(v4 + 72);
  if (has)
  {
    if ((*(v4 + 72) & 1) == 0 || self->_cid != *(v4 + 4))
    {
      goto LABEL_41;
    }
  }

  else if (*(v4 + 72))
  {
    goto LABEL_41;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 72) & 2) == 0 || self->_nsapi != *(v4 + 5))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 72) & 2) != 0)
  {
    goto LABEL_41;
  }

  apn = self->_apn;
  if (apn | *(v4 + 1))
  {
    if (![(NSString *)apn isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v8 = *(v4 + 72);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 72) & 4) == 0 || self->_pdpType != *(v4 + 8))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 72) & 4) != 0)
  {
    goto LABEL_41;
  }

  pdpAddr = self->_pdpAddr;
  if (pdpAddr | *(v4 + 3))
  {
    if (![(NSData *)pdpAddr isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v10 = *(v4 + 72);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 72) & 8) == 0 || self->_primaryDnsType != *(v4 + 12))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_41;
  }

  primaryDnsAddr = self->_primaryDnsAddr;
  if (primaryDnsAddr | *(v4 + 5))
  {
    if (![(NSData *)primaryDnsAddr isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v12 = *(v4 + 72);
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 72) & 0x10) == 0 || self->_secondaryDnsType != *(v4 + 16))
    {
      goto LABEL_41;
    }
  }

  else if ((*(v4 + 72) & 0x10) != 0)
  {
    goto LABEL_41;
  }

  secondaryDnsAddr = self->_secondaryDnsAddr;
  if (secondaryDnsAddr | *(v4 + 7))
  {
    if (![(NSData *)secondaryDnsAddr isEqual:?])
    {
      goto LABEL_41;
    }

    has = self->_has;
  }

  v14 = (*(v4 + 72) & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((*(v4 + 72) & 0x20) != 0)
    {
      if (self->_isAddrIratMobile)
      {
        if ((*(v4 + 68) & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else if (*(v4 + 68))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 72);
  if (v5)
  {
    self->_cid = *(v4 + 4);
    *&self->_has |= 1u;
    v5 = *(v4 + 72);
  }

  if ((v5 & 2) != 0)
  {
    self->_nsapi = *(v4 + 5);
    *&self->_has |= 2u;
  }

  v6 = v4;
  if (*(v4 + 1))
  {
    [(BearerContext *)self setApn:?];
    v4 = v6;
  }

  if ((*(v4 + 72) & 4) != 0)
  {
    self->_pdpType = *(v4 + 8);
    *&self->_has |= 4u;
  }

  if (*(v4 + 3))
  {
    [(BearerContext *)self setPdpAddr:?];
    v4 = v6;
  }

  if ((*(v4 + 72) & 8) != 0)
  {
    self->_primaryDnsType = *(v4 + 12);
    *&self->_has |= 8u;
  }

  if (*(v4 + 5))
  {
    [(BearerContext *)self setPrimaryDnsAddr:?];
    v4 = v6;
  }

  if ((*(v4 + 72) & 0x10) != 0)
  {
    self->_secondaryDnsType = *(v4 + 16);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 7))
  {
    [(BearerContext *)self setSecondaryDnsAddr:?];
    v4 = v6;
  }

  if ((*(v4 + 72) & 0x20) != 0)
  {
    self->_isAddrIratMobile = *(v4 + 68);
    *&self->_has |= 0x20u;
  }
}

@end