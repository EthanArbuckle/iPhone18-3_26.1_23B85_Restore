@interface SiriLinkRRProvisionalLinkEntityPresent
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SiriLinkRRProvisionalLinkEntityPresent)initWithDictionary:(id)a3;
- (SiriLinkRRProvisionalLinkEntityPresent)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setHasEntityPresent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SiriLinkRRProvisionalLinkEntityPresent

- (SiriLinkRRProvisionalLinkEntityPresent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SiriLinkRRProvisionalLinkEntityPresent;
  v5 = [(SiriLinkRRProvisionalLinkEntityPresent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sourceBundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SiriLinkRRProvisionalLinkEntityPresent *)v5 setSourceBundleId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SiriLinkRRProvisionalLinkEntityPresent *)v5 setLinkEntityType:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"executionStage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkRRProvisionalLinkEntityPresent setExecutionStage:](v5, "setExecutionStage:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"entityPresent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SiriLinkRRProvisionalLinkEntityPresent setEntityPresent:](v5, "setEntityPresent:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (SiriLinkRRProvisionalLinkEntityPresent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SiriLinkRRProvisionalLinkEntityPresent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SiriLinkRRProvisionalLinkEntityPresent *)self dictionaryRepresentation];
  if ([NSJSONSerialization isValidJSONObject:v2])
  {
    v3 = [NSJSONSerialization dataWithJSONObject:v2 options:0 error:0];
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
    v8 = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"linkEntityType"];
  }

  if (self->_sourceBundleId)
  {
    v10 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
    v11 = [v10 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
  v6 = [v4 sourceBundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];
    v10 = [v4 sourceBundleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
  v6 = [v4 linkEntityType];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
  if (v12)
  {
    v13 = v12;
    v14 = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];
    v15 = [v4 linkEntityType];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((v20 & 1) == (*&has & 1))
  {
    if (*&has)
    {
      executionStage = self->_executionStage;
      if (executionStage != [v4 executionStage])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    if (((v20 ^ *&has) & 2) == 0)
    {
      if ((*&has & 2) == 0 || (entityPresent = self->_entityPresent, entityPresent == [v4 entityPresent]))
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

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(SiriLinkRRProvisionalLinkEntityPresent *)self sourceBundleId];

  if (v4)
  {
    sourceBundleId = self->_sourceBundleId;
    PBDataWriterWriteStringField();
  }

  v6 = [(SiriLinkRRProvisionalLinkEntityPresent *)self linkEntityType];

  if (v6)
  {
    linkEntityType = self->_linkEntityType;
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v9 = v12;
  if (has)
  {
    executionStage = self->_executionStage;
    PBDataWriterWriteInt32Field();
    v9 = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    entityPresent = self->_entityPresent;
    PBDataWriterWriteBOOLField();
    v9 = v12;
  }
}

- (void)setHasEntityPresent:(BOOL)a3
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

@end