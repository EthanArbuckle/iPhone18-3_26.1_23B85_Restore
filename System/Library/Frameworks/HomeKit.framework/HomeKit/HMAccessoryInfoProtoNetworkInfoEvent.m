@interface HMAccessoryInfoProtoNetworkInfoEvent
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

@implementation HMAccessoryInfoProtoNetworkInfoEvent

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 1))
  {
    [(HMAccessoryInfoProtoNetworkInfoEvent *)self setIfaceName:?];
  }

  if (*(v4 + 4))
  {
    [(HMAccessoryInfoProtoNetworkInfoEvent *)self setMacAddress:?];
  }

  if (*(v4 + 5))
  {
    [(HMAccessoryInfoProtoNetworkInfoEvent *)self setType:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HMAccessoryInfoProtoNetworkInfoEvent *)self addIpv4Addresses:*(*(&v22 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(HMAccessoryInfoProtoNetworkInfoEvent *)self addIpv6Addresses:*(*(&v18 + 1) + 8 * j), v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  wifiInfo = self->_wifiInfo;
  v16 = *(v4 + 6);
  if (wifiInfo)
  {
    if (v16)
    {
      [(HMAccessoryInfoProtoAirportInfoEvent *)wifiInfo mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(HMAccessoryInfoProtoNetworkInfoEvent *)self setWifiInfo:?];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ifaceName hash];
  v4 = [(NSString *)self->_macAddress hash]^ v3;
  v5 = [(NSString *)self->_type hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_ipv4Addresses hash];
  v7 = [(NSMutableArray *)self->_ipv6Addresses hash];
  return v6 ^ v7 ^ [(HMAccessoryInfoProtoAirportInfoEvent *)self->_wifiInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ifaceName = self->_ifaceName, !(ifaceName | v4[1])) || -[NSString isEqual:](ifaceName, "isEqual:")) && ((macAddress = self->_macAddress, !(macAddress | v4[4])) || -[NSString isEqual:](macAddress, "isEqual:")) && ((type = self->_type, !(type | v4[5])) || -[NSString isEqual:](type, "isEqual:")) && ((ipv4Addresses = self->_ipv4Addresses, !(ipv4Addresses | v4[2])) || -[NSMutableArray isEqual:](ipv4Addresses, "isEqual:")) && ((ipv6Addresses = self->_ipv6Addresses, !(ipv6Addresses | v4[3])) || -[NSMutableArray isEqual:](ipv6Addresses, "isEqual:")))
  {
    wifiInfo = self->_wifiInfo;
    if (wifiInfo | v4[6])
    {
      v11 = [(HMAccessoryInfoProtoAirportInfoEvent *)wifiInfo isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_ifaceName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_macAddress copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_type copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_ipv4Addresses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addIpv4Addresses:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_ipv6Addresses;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * v22) copyWithZone:{a3, v28}];
        [v5 addIpv6Addresses:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v20);
  }

  v24 = [(HMAccessoryInfoProtoAirportInfoEvent *)self->_wifiInfo copyWithZone:a3];
  v25 = v5[6];
  v5[6] = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_ifaceName)
  {
    [v12 setIfaceName:?];
  }

  if (self->_macAddress)
  {
    [v12 setMacAddress:?];
  }

  if (self->_type)
  {
    [v12 setType:?];
  }

  if ([(HMAccessoryInfoProtoNetworkInfoEvent *)self ipv4AddressesCount])
  {
    [v12 clearIpv4Addresses];
    v4 = [(HMAccessoryInfoProtoNetworkInfoEvent *)self ipv4AddressesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMAccessoryInfoProtoNetworkInfoEvent *)self ipv4AddressesAtIndex:i];
        [v12 addIpv4Addresses:v7];
      }
    }
  }

  if ([(HMAccessoryInfoProtoNetworkInfoEvent *)self ipv6AddressesCount])
  {
    [v12 clearIpv6Addresses];
    v8 = [(HMAccessoryInfoProtoNetworkInfoEvent *)self ipv6AddressesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(HMAccessoryInfoProtoNetworkInfoEvent *)self ipv6AddressesAtIndex:j];
        [v12 addIpv6Addresses:v11];
      }
    }
  }

  if (self->_wifiInfo)
  {
    [v12 setWifiInfo:?];
  }
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_ifaceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_macAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_ipv4Addresses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_ipv6Addresses;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  if (self->_wifiInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = *MEMORY[0x1E69E9840];
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

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  ipv4Addresses = self->_ipv4Addresses;
  if (ipv4Addresses)
  {
    [v4 setObject:ipv4Addresses forKey:@"ipv4Addresses"];
  }

  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses)
  {
    [v4 setObject:ipv6Addresses forKey:@"ipv6Addresses"];
  }

  wifiInfo = self->_wifiInfo;
  if (wifiInfo)
  {
    v11 = [(HMAccessoryInfoProtoAirportInfoEvent *)wifiInfo dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"wifiInfo"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoNetworkInfoEvent;
  v4 = [(HMAccessoryInfoProtoNetworkInfoEvent *)&v8 description];
  v5 = [(HMAccessoryInfoProtoNetworkInfoEvent *)self dictionaryRepresentation];
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