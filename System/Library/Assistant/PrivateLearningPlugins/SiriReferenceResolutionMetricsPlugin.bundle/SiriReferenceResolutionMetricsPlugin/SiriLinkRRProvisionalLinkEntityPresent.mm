@interface SiriLinkRRProvisionalLinkEntityPresent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SiriLinkRRProvisionalLinkEntityPresent)initWithDictionary:(id)dictionary;
- (SiriLinkRRProvisionalLinkEntityPresent)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasEntityPresent:(BOOL)present;
- (void)writeTo:(id)to;
@end

@implementation SiriLinkRRProvisionalLinkEntityPresent

- (SiriLinkRRProvisionalLinkEntityPresent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SiriLinkRRProvisionalLinkEntityPresent;
  v5 = [(SiriLinkRRProvisionalLinkEntityPresent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkRRProvisionalLinkEntityPresent *)v5 setSourceBundleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SiriLinkRRProvisionalLinkEntityPresent *)v5 setLinkEntityType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"executionStage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkRRProvisionalLinkEntityPresent setExecutionStage:](v5, "setExecutionStage:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"entityPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkRRProvisionalLinkEntityPresent setEntityPresent:](v5, "setEntityPresent:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (SiriLinkRRProvisionalLinkEntityPresent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SiriLinkRRProvisionalLinkEntityPresent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SiriLinkRRProvisionalLinkEntityPresent *)self dictionaryRepresentation];
  if ([NSJSONSerialization isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [NSJSONSerialization dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [NSNumber numberWithBool:[(SiriLinkRRProvisionalLinkEntityPresent *)self entityPresent]];
    [v3 setObject:v5 forKeyedSubscript:@"entityPresent"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(SiriLinkRRProvisionalLinkEntityPresent *)self executionStage]- 1;
    if (v6 > 6)
    {
      v7 = @"LINK_EXECUTION_STAGE_UNKNOWN";
    }

    else
    {
      v7 = *(&off_14BC8 + v6);
    }

    [v3 setObject:v7 forKeyedSubscript:@"executionStage"];
  }

  if (self->_linkEntityType)
  {
    linkEntityType = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
    v9 = [linkEntityType copy];
    [v3 setObject:v9 forKeyedSubscript:@"linkEntityType"];
  }

  if (self->_sourceBundleId)
  {
    sourceBundleId = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
    v11 = [sourceBundleId copy];
    [v3 setObject:v11 forKeyedSubscript:@"sourceBundleId"];
  }

  [(SiriLinkRRProvisionalLinkEntityPresent *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceBundleId hash];
  v4 = [(NSString *)self->_linkEntityType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_executionStage;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_entityPresent;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  sourceBundleId = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
  sourceBundleId2 = [equalCopy sourceBundleId];
  if ((sourceBundleId != 0) == (sourceBundleId2 == 0))
  {
    goto LABEL_11;
  }

  sourceBundleId3 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
  if (sourceBundleId3)
  {
    v8 = sourceBundleId3;
    sourceBundleId4 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
    sourceBundleId5 = [equalCopy sourceBundleId];
    v11 = [sourceBundleId4 isEqual:sourceBundleId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sourceBundleId = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
  sourceBundleId2 = [equalCopy linkEntityType];
  if ((sourceBundleId != 0) == (sourceBundleId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  linkEntityType = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
  if (linkEntityType)
  {
    v13 = linkEntityType;
    linkEntityType2 = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
    linkEntityType3 = [equalCopy linkEntityType];
    v16 = [linkEntityType2 isEqual:linkEntityType3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[32];
  if ((v20 & 1) == (*&has & 1))
  {
    if (*&has)
    {
      executionStage = self->_executionStage;
      if (executionStage != [equalCopy executionStage])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    if (((v20 ^ *&has) & 2) == 0)
    {
      if ((*&has & 2) == 0 || (entityPresent = self->_entityPresent, entityPresent == [equalCopy entityPresent]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sourceBundleId = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];

  if (sourceBundleId)
  {
    sourceBundleId = self->_sourceBundleId;
    PBDataWriterWriteStringField();
  }

  linkEntityType = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];

  if (linkEntityType)
  {
    linkEntityType = self->_linkEntityType;
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    executionStage = self->_executionStage;
    PBDataWriterWriteInt32Field();
    v9 = toCopy;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    entityPresent = self->_entityPresent;
    PBDataWriterWriteBOOLField();
    v9 = toCopy;
  }
}

- (void)setHasEntityPresent:(BOOL)present
{
  if (present)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end