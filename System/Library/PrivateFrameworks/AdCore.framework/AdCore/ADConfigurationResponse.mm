@interface ADConfigurationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBannerProxyType:(id)type;
- (int)bannerProxyType;
- (unint64_t)hash;
- (void)addTheConfiguration:(id)configuration;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADConfigurationResponse

- (void)addTheConfiguration:(id)configuration
{
  configurationCopy = configuration;
  theConfigurations = self->_theConfigurations;
  v8 = configurationCopy;
  if (!theConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_theConfigurations;
    self->_theConfigurations = v6;

    configurationCopy = v8;
    theConfigurations = self->_theConfigurations;
  }

  [(NSMutableArray *)theConfigurations addObject:configurationCopy];
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

- (int)StringAsBannerProxyType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Legacy"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Connect"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADConfigurationResponse;
  v4 = [(ADConfigurationResponse *)&v8 description];
  dictionaryRepresentation = [(ADConfigurationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"theConfiguration"];
  }

  resourceProxyURL = self->_resourceProxyURL;
  if (resourceProxyURL)
  {
    [dictionary setObject:resourceProxyURL forKey:@"resourceProxyURL"];
  }

  resourceConnectProxyURL = self->_resourceConnectProxyURL;
  if (resourceConnectProxyURL)
  {
    [dictionary setObject:resourceConnectProxyURL forKey:@"resourceConnectProxyURL"];
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

    [dictionary setObject:v14 forKey:@"bannerProxyType"];
  }

  configVersion = self->_configVersion;
  if (configVersion)
  {
    [dictionary setObject:configVersion forKey:@"configVersion"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ADConfigurationResponse *)self theConfigurationsCount])
  {
    [toCopy clearTheConfigurations];
    theConfigurationsCount = [(ADConfigurationResponse *)self theConfigurationsCount];
    if (theConfigurationsCount)
    {
      v5 = theConfigurationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ADConfigurationResponse *)self theConfigurationAtIndex:i];
        [toCopy addTheConfiguration:v7];
      }
    }
  }

  if (self->_resourceProxyURL)
  {
    [toCopy setResourceProxyURL:?];
  }

  v8 = toCopy;
  if (self->_resourceConnectProxyURL)
  {
    [toCopy setResourceConnectProxyURL:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[2] = self->_bannerProxyType;
    *(v8 + 48) |= 1u;
  }

  if (self->_configVersion)
  {
    [toCopy setConfigVersion:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v20 + 1) + 8 * v10) copyWithZone:{zone, v20}];
        [v5 addTheConfiguration:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_resourceProxyURL copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_resourceConnectProxyURL copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_bannerProxyType;
    *(v5 + 48) |= 1u;
  }

  v16 = [(NSString *)self->_configVersion copyWithZone:zone, v20];
  v17 = *(v5 + 16);
  *(v5 + 16) = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  theConfigurations = self->_theConfigurations;
  if (theConfigurations | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)theConfigurations isEqual:?])
    {
      goto LABEL_15;
    }
  }

  resourceProxyURL = self->_resourceProxyURL;
  if (resourceProxyURL | *(equalCopy + 5))
  {
    if (![(NSString *)resourceProxyURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  resourceConnectProxyURL = self->_resourceConnectProxyURL;
  if (resourceConnectProxyURL | *(equalCopy + 4))
  {
    if (![(NSString *)resourceConnectProxyURL isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_bannerProxyType != *(equalCopy + 2))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  configVersion = self->_configVersion;
  if (configVersion | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 3);
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

  if (*(fromCopy + 5))
  {
    [(ADConfigurationResponse *)self setResourceProxyURL:?];
  }

  if (*(fromCopy + 4))
  {
    [(ADConfigurationResponse *)self setResourceConnectProxyURL:?];
  }

  if (*(fromCopy + 48))
  {
    self->_bannerProxyType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(ADConfigurationResponse *)self setConfigVersion:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end