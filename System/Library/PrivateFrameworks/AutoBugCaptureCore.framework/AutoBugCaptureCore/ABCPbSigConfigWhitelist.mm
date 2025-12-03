@interface ABCPbSigConfigWhitelist
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsGlobalDecision:(id)decision;
- (int)globalDecision;
- (unint64_t)hash;
- (void)addSigConfig:(id)config;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSigConfigWhitelist

- (int)globalDecision
{
  if (*&self->_has)
  {
    return self->_globalDecision;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsGlobalDecision:(id)decision
{
  decisionCopy = decision;
  if ([decisionCopy isEqualToString:@"NO_WHITELIST"])
  {
    v4 = 0;
  }

  else if ([decisionCopy isEqualToString:@"USE_OLD_ONE"])
  {
    v4 = 1;
  }

  else if ([decisionCopy isEqualToString:@"FOLLOW_SIG_CONFIG"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSigConfig:(id)config
{
  configCopy = config;
  sigConfigs = self->_sigConfigs;
  v8 = configCopy;
  if (!sigConfigs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sigConfigs;
    self->_sigConfigs = v6;

    configCopy = v8;
    sigConfigs = self->_sigConfigs;
  }

  [(NSMutableArray *)sigConfigs addObject:configCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigConfigWhitelist;
  v4 = [(ABCPbSigConfigWhitelist *)&v8 description];
  dictionaryRepresentation = [(ABCPbSigConfigWhitelist *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    globalDecision = self->_globalDecision;
    if (globalDecision >= 3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_globalDecision];
    }

    else
    {
      v5 = off_278CF1538[globalDecision];
    }

    [dictionary setObject:v5 forKey:@"global_decision"];
  }

  build = self->_build;
  if (build)
  {
    [dictionary setObject:build forKey:@"build"];
  }

  buildVariant = self->_buildVariant;
  if (buildVariant)
  {
    [dictionary setObject:buildVariant forKey:@"build_variant"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [dictionary setObject:deviceModel forKey:@"device_model"];
  }

  if ([(NSMutableArray *)self->_sigConfigs count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sigConfigs, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_sigConfigs;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:v9 forKey:@"sig_config"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    globalDecision = self->_globalDecision;
    PBDataWriterWriteInt32Field();
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_buildVariant)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_sigConfigs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_globalDecision;
    *(toCopy + 48) |= 1u;
  }

  v9 = toCopy;
  if (self->_build)
  {
    [toCopy setBuild:?];
  }

  if (self->_buildVariant)
  {
    [v9 setBuildVariant:?];
  }

  if (self->_deviceModel)
  {
    [v9 setDeviceModel:?];
  }

  if ([(ABCPbSigConfigWhitelist *)self sigConfigsCount])
  {
    [v9 clearSigConfigs];
    sigConfigsCount = [(ABCPbSigConfigWhitelist *)self sigConfigsCount];
    if (sigConfigsCount)
    {
      v6 = sigConfigsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ABCPbSigConfigWhitelist *)self sigConfigAtIndex:i];
        [v9 addSigConfig:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_globalDecision;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_build copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_buildVariant copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v12 = v6[3];
  v6[3] = v11;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_sigConfigs;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{zone, v21}];
        [v6 addSigConfig:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_globalDecision != *(equalCopy + 8))
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

  build = self->_build;
  if (build | *(equalCopy + 1) && ![(NSString *)build isEqual:?])
  {
    goto LABEL_15;
  }

  buildVariant = self->_buildVariant;
  if (buildVariant | *(equalCopy + 2))
  {
    if (![(NSString *)buildVariant isEqual:?])
    {
      goto LABEL_15;
    }
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 3))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_15;
    }
  }

  sigConfigs = self->_sigConfigs;
  if (sigConfigs | *(equalCopy + 5))
  {
    v10 = [(NSMutableArray *)sigConfigs isEqual:?];
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
    v3 = 2654435761 * self->_globalDecision;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_build hash]^ v3;
  v5 = [(NSString *)self->_buildVariant hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_deviceModel hash];
  return v6 ^ [(NSMutableArray *)self->_sigConfigs hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[12])
  {
    self->_globalDecision = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(ABCPbSigConfigWhitelist *)self setBuild:?];
  }

  if (*(v5 + 2))
  {
    [(ABCPbSigConfigWhitelist *)self setBuildVariant:?];
  }

  if (*(v5 + 3))
  {
    [(ABCPbSigConfigWhitelist *)self setDeviceModel:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 5);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ABCPbSigConfigWhitelist *)self addSigConfig:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end