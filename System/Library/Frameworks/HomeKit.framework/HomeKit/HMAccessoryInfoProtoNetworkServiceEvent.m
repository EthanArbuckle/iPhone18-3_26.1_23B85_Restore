@interface HMAccessoryInfoProtoNetworkServiceEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIpv4Addresses:(id)a3;
- (void)addIpv6Addresses:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoNetworkServiceEvent

- (void)mergeFrom:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setIfaceName:?];
  }

  if (*(v4 + 5))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setMacAddress:?];
  }

  if (*(v4 + 84))
  {
    self->_isPrimary = *(v4 + 80);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setConfirmedIfaceName:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMAccessoryInfoProtoNetworkServiceEvent *)self addIpv4Addresses:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (*(v4 + 6))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setNetworkSignatureV4:?];
  }

  if (*(v4 + 8))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setRouterIPv4:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(v4 + 4);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMAccessoryInfoProtoNetworkServiceEvent *)self addIpv6Addresses:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(v4 + 7))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setNetworkSignatureV6:?];
  }

  if (*(v4 + 9))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setRouterIPv6:?];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ifaceName hash];
  v4 = [(NSString *)self->_macAddress hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isPrimary;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_confirmedIfaceName hash];
  v7 = [(NSMutableArray *)self->_ipv4Addresses hash];
  v8 = v7 ^ [(NSString *)self->_networkSignatureV4 hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_routerIPv4 hash];
  v10 = [(NSMutableArray *)self->_ipv6Addresses hash];
  v11 = v10 ^ [(NSString *)self->_networkSignatureV6 hash];
  return v9 ^ v11 ^ [(NSString *)self->_routerIPv6 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  ifaceName = self->_ifaceName;
  if (ifaceName | *(v4 + 2))
  {
    if (![(NSString *)ifaceName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  macAddress = self->_macAddress;
  if (macAddress | *(v4 + 5))
  {
    if (![(NSString *)macAddress isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(v4 + 84);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(v4 + 84) & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = *(v4 + 80);
  if (!self->_isPrimary)
  {
LABEL_7:
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 80) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  confirmedIfaceName = self->_confirmedIfaceName;
  if (confirmedIfaceName | *(v4 + 1) && ![(NSString *)confirmedIfaceName isEqual:?])
  {
    goto LABEL_23;
  }

  ipv4Addresses = self->_ipv4Addresses;
  if (ipv4Addresses | *(v4 + 3))
  {
    if (![(NSMutableArray *)ipv4Addresses isEqual:?])
    {
      goto LABEL_23;
    }
  }

  networkSignatureV4 = self->_networkSignatureV4;
  if (networkSignatureV4 | *(v4 + 6))
  {
    if (![(NSString *)networkSignatureV4 isEqual:?])
    {
      goto LABEL_23;
    }
  }

  routerIPv4 = self->_routerIPv4;
  if (routerIPv4 | *(v4 + 8))
  {
    if (![(NSString *)routerIPv4 isEqual:?])
    {
      goto LABEL_23;
    }
  }

  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses | *(v4 + 4))
  {
    if (![(NSMutableArray *)ipv6Addresses isEqual:?])
    {
      goto LABEL_23;
    }
  }

  networkSignatureV6 = self->_networkSignatureV6;
  if (networkSignatureV6 | *(v4 + 7))
  {
    if (![(NSString *)networkSignatureV6 isEqual:?])
    {
      goto LABEL_23;
    }
  }

  routerIPv6 = self->_routerIPv6;
  if (routerIPv6 | *(v4 + 9))
  {
    v15 = [(NSString *)routerIPv6 isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_24:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_ifaceName copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_macAddress copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 80) = self->_isPrimary;
    *(v5 + 84) |= 1u;
  }

  v10 = [(NSString *)self->_confirmedIfaceName copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = self->_ipv4Addresses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v39;
    do
    {
      v16 = 0;
      do
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v38 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addIpv4Addresses:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_networkSignatureV4 copyWithZone:a3];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  v20 = [(NSString *)self->_routerIPv4 copyWithZone:a3];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = self->_ipv6Addresses;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      v26 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v34 + 1) + 8 * v26) copyWithZone:{a3, v34}];
        [v5 addIpv6Addresses:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  v28 = [(NSString *)self->_networkSignatureV6 copyWithZone:a3];
  v29 = *(v5 + 56);
  *(v5 + 56) = v28;

  v30 = [(NSString *)self->_routerIPv6 copyWithZone:a3];
  v31 = *(v5 + 72);
  *(v5 + 72) = v30;

  v32 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_ifaceName)
  {
    [v4 setIfaceName:?];
    v4 = v14;
  }

  if (self->_macAddress)
  {
    [v14 setMacAddress:?];
    v4 = v14;
  }

  if (*&self->_has)
  {
    v4[80] = self->_isPrimary;
    v4[84] |= 1u;
  }

  if (self->_confirmedIfaceName)
  {
    [v14 setConfirmedIfaceName:?];
  }

  if ([(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv4AddressesCount])
  {
    [v14 clearIpv4Addresses];
    v5 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv4AddressesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv4AddressesAtIndex:i];
        [v14 addIpv4Addresses:v8];
      }
    }
  }

  if (self->_networkSignatureV4)
  {
    [v14 setNetworkSignatureV4:?];
  }

  if (self->_routerIPv4)
  {
    [v14 setRouterIPv4:?];
  }

  if ([(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv6AddressesCount])
  {
    [v14 clearIpv6Addresses];
    v9 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv6AddressesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv6AddressesAtIndex:j];
        [v14 addIpv6Addresses:v12];
      }
    }
  }

  if (self->_networkSignatureV6)
  {
    [v14 setNetworkSignatureV6:?];
  }

  v13 = v14;
  if (self->_routerIPv6)
  {
    [v14 setRouterIPv6:?];
    v13 = v14;
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_ifaceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_macAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    isPrimary = self->_isPrimary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_confirmedIfaceName)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_ipv4Addresses;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  if (self->_networkSignatureV4)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_routerIPv4)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_ipv6Addresses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  if (self->_networkSignatureV6)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_routerIPv6)
  {
    PBDataWriterWriteStringField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  ifaceName = self->_ifaceName;
  if (ifaceName)
  {
    [v3 setObject:ifaceName forKey:@"ifaceName"];
  }

  macAddress = self->_macAddress;
  if (macAddress)
  {
    [v4 setObject:macAddress forKey:@"macAddress"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPrimary];
    [v4 setObject:v7 forKey:@"isPrimary"];
  }

  confirmedIfaceName = self->_confirmedIfaceName;
  if (confirmedIfaceName)
  {
    [v4 setObject:confirmedIfaceName forKey:@"confirmedIfaceName"];
  }

  ipv4Addresses = self->_ipv4Addresses;
  if (ipv4Addresses)
  {
    [v4 setObject:ipv4Addresses forKey:@"ipv4Addresses"];
  }

  networkSignatureV4 = self->_networkSignatureV4;
  if (networkSignatureV4)
  {
    [v4 setObject:networkSignatureV4 forKey:@"networkSignatureV4"];
  }

  routerIPv4 = self->_routerIPv4;
  if (routerIPv4)
  {
    [v4 setObject:routerIPv4 forKey:@"routerIPv4"];
  }

  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses)
  {
    [v4 setObject:ipv6Addresses forKey:@"ipv6Addresses"];
  }

  networkSignatureV6 = self->_networkSignatureV6;
  if (networkSignatureV6)
  {
    [v4 setObject:networkSignatureV6 forKey:@"networkSignatureV6"];
  }

  routerIPv6 = self->_routerIPv6;
  if (routerIPv6)
  {
    [v4 setObject:routerIPv6 forKey:@"routerIPv6"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoNetworkServiceEvent;
  v4 = [(HMAccessoryInfoProtoNetworkServiceEvent *)&v8 description];
  v5 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addIpv6Addresses:(id)a3
{
  v4 = a3;
  ipv6Addresses = self->_ipv6Addresses;
  v8 = v4;
  if (!ipv6Addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ipv6Addresses;
    self->_ipv6Addresses = v6;

    v4 = v8;
    ipv6Addresses = self->_ipv6Addresses;
  }

  [(NSMutableArray *)ipv6Addresses addObject:v4];
}

- (void)addIpv4Addresses:(id)a3
{
  v4 = a3;
  ipv4Addresses = self->_ipv4Addresses;
  v8 = v4;
  if (!ipv4Addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ipv4Addresses;
    self->_ipv4Addresses = v6;

    v4 = v8;
    ipv4Addresses = self->_ipv4Addresses;
  }

  [(NSMutableArray *)ipv4Addresses addObject:v4];
}

@end