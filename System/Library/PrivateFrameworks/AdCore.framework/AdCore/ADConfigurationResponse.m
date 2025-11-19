@interface ADConfigurationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBannerProxyType:(id)a3;
- (int)bannerProxyType;
- (unint64_t)hash;
- (void)addTheConfiguration:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ADConfigurationResponse

- (void)addTheConfiguration:(id)a3
{
  v4 = a3;
  theConfigurations = self->_theConfigurations;
  v8 = v4;
  if (!theConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_theConfigurations;
    self->_theConfigurations = v6;

    v4 = v8;
    theConfigurations = self->_theConfigurations;
  }

  [(NSMutableArray *)theConfigurations addObject:v4];
}

- (int)bannerProxyType
{
  if (*&self->_has)
  {
    return self->_bannerProxyType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsBannerProxyType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Legacy"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Connect"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADConfigurationResponse;
  v4 = [(ADConfigurationResponse *)&v8 description];
  v5 = [(ADConfigurationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_theConfigurations count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_theConfigurations, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_theConfigurations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"theConfiguration"];
  }

  resourceProxyURL = self->_resourceProxyURL;
  if (resourceProxyURL)
  {
    [v3 setObject:resourceProxyURL forKey:@"resourceProxyURL"];
  }

  resourceConnectProxyURL = self->_resourceConnectProxyURL;
  if (resourceConnectProxyURL)
  {
    [v3 setObject:resourceConnectProxyURL forKey:@"resourceConnectProxyURL"];
  }

  if (*&self->_has)
  {
    bannerProxyType = self->_bannerProxyType;
    if (bannerProxyType)
    {
      if (bannerProxyType == 1)
      {
        v14 = @"Connect";
      }

      else
      {
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_bannerProxyType];
      }
    }

    else
    {
      v14 = @"Legacy";
    }

    [v3 setObject:v14 forKey:@"bannerProxyType"];
  }

  configVersion = self->_configVersion;
  if (configVersion)
  {
    [v3 setObject:configVersion forKey:@"configVersion"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_theConfigurations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_resourceProxyURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_resourceConnectProxyURL)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    bannerProxyType = self->_bannerProxyType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_configVersion)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(ADConfigurationResponse *)self theConfigurationsCount])
  {
    [v9 clearTheConfigurations];
    v4 = [(ADConfigurationResponse *)self theConfigurationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ADConfigurationResponse *)self theConfigurationAtIndex:i];
        [v9 addTheConfiguration:v7];
      }
    }
  }

  if (self->_resourceProxyURL)
  {
    [v9 setResourceProxyURL:?];
  }

  v8 = v9;
  if (self->_resourceConnectProxyURL)
  {
    [v9 setResourceConnectProxyURL:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[2] = self->_bannerProxyType;
    *(v8 + 48) |= 1u;
  }

  if (self->_configVersion)
  {
    [v9 setConfigVersion:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_theConfigurations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) copyWithZone:{a3, v20}];
        [v5 addTheConfiguration:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_resourceProxyURL copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_resourceConnectProxyURL copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_bannerProxyType;
    *(v5 + 48) |= 1u;
  }

  v16 = [(NSString *)self->_configVersion copyWithZone:a3, v20];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  theConfigurations = self->_theConfigurations;
  if (theConfigurations | *(v4 + 3))
  {
    if (![(NSMutableArray *)theConfigurations isEqual:?])
    {
      goto LABEL_15;
    }
  }

  resourceProxyURL = self->_resourceProxyURL;
  if (resourceProxyURL | *(v4 + 5))
  {
    if (![(NSString *)resourceProxyURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  resourceConnectProxyURL = self->_resourceConnectProxyURL;
  if (resourceConnectProxyURL | *(v4 + 4))
  {
    if (![(NSString *)resourceConnectProxyURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_bannerProxyType != *(v4 + 2))
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

  configVersion = self->_configVersion;
  if (configVersion | *(v4 + 2))
  {
    v10 = [(NSString *)configVersion isEqual:?];
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
  v3 = [(NSMutableArray *)self->_theConfigurations hash];
  v4 = [(NSString *)self->_resourceProxyURL hash];
  v5 = [(NSString *)self->_resourceConnectProxyURL hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_bannerProxyType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_configVersion hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ADConfigurationResponse *)self addTheConfiguration:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 5))
  {
    [(ADConfigurationResponse *)self setResourceProxyURL:?];
  }

  if (*(v4 + 4))
  {
    [(ADConfigurationResponse *)self setResourceConnectProxyURL:?];
  }

  if (*(v4 + 48))
  {
    self->_bannerProxyType = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(ADConfigurationResponse *)self setConfigVersion:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end