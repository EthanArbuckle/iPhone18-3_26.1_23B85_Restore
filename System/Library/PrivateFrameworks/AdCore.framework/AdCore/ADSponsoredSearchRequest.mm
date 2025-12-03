@interface ADSponsoredSearchRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasClientExclusive:(BOOL)exclusive;
- (void)setHasEnableImagesForDupes:(BOOL)dupes;
- (void)setHasInAllocation:(BOOL)allocation;
- (void)setHasIsBaseline:(BOOL)baseline;
- (void)setHasIsTest:(BOOL)test;
- (void)setHasSupportedODMLVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation ADSponsoredSearchRequest

+ (id)options
{
  if (options_once_10 != -1)
  {
    +[ADSponsoredSearchRequest options];
  }

  v3 = options_sOptions_10;

  return v3;
}

void __35__ADSponsoredSearchRequest_options__block_invoke()
{
  v0 = options_sOptions_10;
  options_sOptions_10 = &unk_285104DD0;
}

- (void)setHasIsTest:(BOOL)test
{
  if (test)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsBaseline:(BOOL)baseline
{
  if (baseline)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEnableImagesForDupes:(BOOL)dupes
{
  if (dupes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSupportedODMLVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasInAllocation:(BOOL)allocation
{
  if (allocation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasClientExclusive:(BOOL)exclusive
{
  if (exclusive)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADSponsoredSearchRequest;
  v4 = [(ADSponsoredSearchRequest *)&v8 description];
  dictionaryRepresentation = [(ADSponsoredSearchRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  properties = self->_properties;
  if (properties)
  {
    dictionaryRepresentation = [(ADUserTargetingProperties *)properties dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"properties"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_isTest];
    [dictionary setObject:v19 forKey:@"isTest"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBaseline];
  [dictionary setObject:v20 forKey:@"isBaseline"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_29:
  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_enableImagesForDupes];
  [dictionary setObject:v21 forKey:@"enableImagesForDupes"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_supportedODMLVersion];
    [dictionary setObject:v7 forKey:@"supportedODMLVersion"];
  }

LABEL_8:
  experimentID = self->_experimentID;
  if (experimentID)
  {
    [dictionary setObject:experimentID forKey:@"experimentID"];
  }

  treatmentID = self->_treatmentID;
  if (treatmentID)
  {
    [dictionary setObject:treatmentID forKey:@"treatmentID"];
  }

  deploymentID = self->_deploymentID;
  if (deploymentID)
  {
    [dictionary setObject:deploymentID forKey:@"deploymentID"];
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_inAllocation];
    [dictionary setObject:v12 forKey:@"inAllocation"];

    v11 = self->_has;
  }

  if ((v11 & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_clientExclusive];
    [dictionary setObject:v13 forKey:@"clientExclusive"];
  }

  rotatingIdentifiers = self->_rotatingIdentifiers;
  if (rotatingIdentifiers)
  {
    dictionaryRepresentation2 = [(ADRotatingIdentifiers *)rotatingIdentifiers dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"rotatingIdentifiers"];
  }

  if (*&self->_has)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_featureEnabledBitmap];
    [dictionary setObject:v16 forKey:@"featureEnabledBitmap"];
  }

  jsVersion = self->_jsVersion;
  if (jsVersion)
  {
    [dictionary setObject:jsVersion forKey:@"jsVersion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_properties)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v14;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    isTest = self->_isTest;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  isBaseline = self->_isBaseline;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_29:
  enableImagesForDupes = self->_enableImagesForDupes;
  PBDataWriterWriteBOOLField();
  toCopy = v14;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    supportedODMLVersion = self->_supportedODMLVersion;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

LABEL_8:
  if (self->_experimentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_treatmentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  if (self->_deploymentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  v7 = self->_has;
  if ((v7 & 0x10) != 0)
  {
    inAllocation = self->_inAllocation;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
    v7 = self->_has;
  }

  if ((v7 & 4) != 0)
  {
    clientExclusive = self->_clientExclusive;
    PBDataWriterWriteBOOLField();
    toCopy = v14;
  }

  if (self->_rotatingIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v14;
  }

  if (*&self->_has)
  {
    featureEnabledBitmap = self->_featureEnabledBitmap;
    PBDataWriterWriteInt32Field();
    toCopy = v14;
  }

  if (self->_jsVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_properties)
  {
    [toCopy setProperties:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 76) = self->_isTest;
    *(toCopy + 80) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 75) = self->_isBaseline;
  *(toCopy + 80) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_29:
  *(toCopy + 73) = self->_enableImagesForDupes;
  *(toCopy + 80) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(toCopy + 14) = self->_supportedODMLVersion;
    *(toCopy + 80) |= 2u;
  }

LABEL_8:
  if (self->_experimentID)
  {
    [v7 setExperimentID:?];
    toCopy = v7;
  }

  if (self->_treatmentID)
  {
    [v7 setTreatmentID:?];
    toCopy = v7;
  }

  if (self->_deploymentID)
  {
    [v7 setDeploymentID:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 74) = self->_inAllocation;
    *(toCopy + 80) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 4) != 0)
  {
    *(toCopy + 72) = self->_clientExclusive;
    *(toCopy + 80) |= 4u;
  }

  if (self->_rotatingIdentifiers)
  {
    [v7 setRotatingIdentifiers:?];
    toCopy = v7;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_featureEnabledBitmap;
    *(toCopy + 80) |= 1u;
  }

  if (self->_jsVersion)
  {
    [v7 setJsVersion:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ADUserTargetingProperties *)self->_properties copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 76) = self->_isTest;
    *(v5 + 80) |= 0x40u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 75) = self->_isBaseline;
  *(v5 + 80) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  *(v5 + 73) = self->_enableImagesForDupes;
  *(v5 + 80) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(v5 + 56) = self->_supportedODMLVersion;
    *(v5 + 80) |= 2u;
  }

LABEL_6:
  v9 = [(NSString *)self->_experimentID copyWithZone:zone];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  v11 = [(NSString *)self->_treatmentID copyWithZone:zone];
  v12 = *(v5 + 64);
  *(v5 + 64) = v11;

  v13 = [(NSString *)self->_deploymentID copyWithZone:zone];
  v14 = *(v5 + 8);
  *(v5 + 8) = v13;

  v15 = self->_has;
  if ((v15 & 0x10) != 0)
  {
    *(v5 + 74) = self->_inAllocation;
    *(v5 + 80) |= 0x10u;
    v15 = self->_has;
  }

  if ((v15 & 4) != 0)
  {
    *(v5 + 72) = self->_clientExclusive;
    *(v5 + 80) |= 4u;
  }

  v16 = [(ADRotatingIdentifiers *)self->_rotatingIdentifiers copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_featureEnabledBitmap;
    *(v5 + 80) |= 1u;
  }

  v18 = [(NSString *)self->_jsVersion copyWithZone:zone];
  v19 = *(v5 + 32);
  *(v5 + 32) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  properties = self->_properties;
  if (properties | *(equalCopy + 5))
  {
    if (![(ADUserTargetingProperties *)properties isEqual:?])
    {
      goto LABEL_48;
    }
  }

  v6 = *(equalCopy + 80);
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 80) & 0x40) == 0)
    {
      goto LABEL_48;
    }

    v7 = *(equalCopy + 76);
    if (self->_isTest)
    {
      if ((*(equalCopy + 76) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 76))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 0x40) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 80) & 0x20) == 0)
    {
      goto LABEL_48;
    }

    v8 = *(equalCopy + 75);
    if (self->_isBaseline)
    {
      if ((*(equalCopy + 75) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 75))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 0x20) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 80) & 8) == 0)
    {
      goto LABEL_48;
    }

    v9 = *(equalCopy + 73);
    if (self->_enableImagesForDupes)
    {
      if ((*(equalCopy + 73) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 73))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 8) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 80) & 2) == 0 || self->_supportedODMLVersion != *(equalCopy + 14))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 2) != 0)
  {
    goto LABEL_48;
  }

  experimentID = self->_experimentID;
  if (experimentID | *(equalCopy + 2) && ![(NSString *)experimentID isEqual:?])
  {
    goto LABEL_48;
  }

  treatmentID = self->_treatmentID;
  if (treatmentID | *(equalCopy + 8))
  {
    if (![(NSString *)treatmentID isEqual:?])
    {
      goto LABEL_48;
    }
  }

  deploymentID = self->_deploymentID;
  if (deploymentID | *(equalCopy + 1))
  {
    if (![(NSString *)deploymentID isEqual:?])
    {
      goto LABEL_48;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 80);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 80) & 0x10) == 0)
    {
      goto LABEL_48;
    }

    v19 = *(equalCopy + 74);
    if (self->_inAllocation)
    {
      if ((*(equalCopy + 74) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 74))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 0x10) != 0)
  {
    goto LABEL_48;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 80) & 4) == 0)
    {
      goto LABEL_48;
    }

    v20 = *(equalCopy + 72);
    if (self->_clientExclusive)
    {
      if ((*(equalCopy + 72) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else if (*(equalCopy + 72))
    {
      goto LABEL_48;
    }
  }

  else if ((*(equalCopy + 80) & 4) != 0)
  {
    goto LABEL_48;
  }

  rotatingIdentifiers = self->_rotatingIdentifiers;
  if (rotatingIdentifiers | *(equalCopy + 6))
  {
    if (![(ADRotatingIdentifiers *)rotatingIdentifiers isEqual:?])
    {
      goto LABEL_48;
    }

    has = self->_has;
  }

  v16 = *(equalCopy + 80);
  if ((has & 1) == 0)
  {
    if ((*(equalCopy + 80) & 1) == 0)
    {
      goto LABEL_62;
    }

LABEL_48:
    v17 = 0;
    goto LABEL_49;
  }

  if ((*(equalCopy + 80) & 1) == 0 || self->_featureEnabledBitmap != *(equalCopy + 6))
  {
    goto LABEL_48;
  }

LABEL_62:
  jsVersion = self->_jsVersion;
  if (jsVersion | *(equalCopy + 4))
  {
    v17 = [(NSString *)jsVersion isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_49:

  return v17;
}

- (unint64_t)hash
{
  v15 = [(ADUserTargetingProperties *)self->_properties hash];
  if ((*&self->_has & 0x40) != 0)
  {
    v14 = 2654435761 * self->_isTest;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v13 = 2654435761 * self->_isBaseline;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v3 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = 2654435761 * self->_enableImagesForDupes;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_supportedODMLVersion;
    goto LABEL_10;
  }

LABEL_9:
  v4 = 0;
LABEL_10:
  v5 = [(NSString *)self->_experimentID hash];
  v6 = [(NSString *)self->_treatmentID hash];
  v7 = [(NSString *)self->_deploymentID hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_inAllocation;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_12:
      v9 = 2654435761 * self->_clientExclusive;
      goto LABEL_15;
    }
  }

  v9 = 0;
LABEL_15:
  v10 = [(ADRotatingIdentifiers *)self->_rotatingIdentifiers hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_featureEnabledBitmap;
  }

  else
  {
    v11 = 0;
  }

  return v14 ^ v15 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_jsVersion hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  properties = self->_properties;
  v6 = *(fromCopy + 5);
  v11 = fromCopy;
  if (properties)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ADUserTargetingProperties *)properties mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(ADSponsoredSearchRequest *)self setProperties:?];
  }

  fromCopy = v11;
LABEL_7:
  v7 = *(fromCopy + 80);
  if ((v7 & 0x40) != 0)
  {
    self->_isTest = *(fromCopy + 76);
    *&self->_has |= 0x40u;
    v7 = *(fromCopy + 80);
    if ((v7 & 0x20) == 0)
    {
LABEL_9:
      if ((v7 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  else if ((*(fromCopy + 80) & 0x20) == 0)
  {
    goto LABEL_9;
  }

  self->_isBaseline = *(fromCopy + 75);
  *&self->_has |= 0x20u;
  v7 = *(fromCopy + 80);
  if ((v7 & 8) == 0)
  {
LABEL_10:
    if ((v7 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_27:
  self->_enableImagesForDupes = *(fromCopy + 73);
  *&self->_has |= 8u;
  if ((*(fromCopy + 80) & 2) != 0)
  {
LABEL_11:
    self->_supportedODMLVersion = *(fromCopy + 14);
    *&self->_has |= 2u;
  }

LABEL_12:
  if (*(fromCopy + 2))
  {
    [(ADSponsoredSearchRequest *)self setExperimentID:?];
    fromCopy = v11;
  }

  if (*(fromCopy + 8))
  {
    [(ADSponsoredSearchRequest *)self setTreatmentID:?];
    fromCopy = v11;
  }

  if (*(fromCopy + 1))
  {
    [(ADSponsoredSearchRequest *)self setDeploymentID:?];
    fromCopy = v11;
  }

  v8 = *(fromCopy + 80);
  if ((v8 & 0x10) != 0)
  {
    self->_inAllocation = *(fromCopy + 74);
    *&self->_has |= 0x10u;
    v8 = *(fromCopy + 80);
  }

  if ((v8 & 4) != 0)
  {
    self->_clientExclusive = *(fromCopy + 72);
    *&self->_has |= 4u;
  }

  rotatingIdentifiers = self->_rotatingIdentifiers;
  v10 = *(fromCopy + 6);
  if (rotatingIdentifiers)
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    [(ADRotatingIdentifiers *)rotatingIdentifiers mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_32;
    }

    [(ADSponsoredSearchRequest *)self setRotatingIdentifiers:?];
  }

  fromCopy = v11;
LABEL_32:
  if (*(fromCopy + 80))
  {
    self->_featureEnabledBitmap = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(ADSponsoredSearchRequest *)self setJsVersion:?];
  }

  MEMORY[0x2821F96F8]();
}

@end