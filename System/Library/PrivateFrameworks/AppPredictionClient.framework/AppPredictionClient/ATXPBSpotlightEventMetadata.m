@interface ATXPBSpotlightEventMetadata
- (BOOL)hasEngagedAppString;
- (BOOL)hasQueryAtEngagement;
- (BOOL)hasSearchEngagedBundleId;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)didSearchDuringSession;
- (uint64_t)engagedAppString;
- (uint64_t)hasDidSearchDuringSession;
- (uint64_t)hasSearchEngagedActionType;
- (uint64_t)queryAtEngagement;
- (uint64_t)searchEngagedActionType;
- (uint64_t)searchEngagedBundleId;
- (uint64_t)setDidSearchDuringSession:(uint64_t)result;
- (uint64_t)setHasDidSearchDuringSession:(uint64_t)result;
- (uint64_t)setHasSearchEngagedActionType:(uint64_t)result;
- (uint64_t)setSearchEngagedActionType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setEngagedAppString:(uint64_t)a1;
- (void)setQueryAtEngagement:(uint64_t)a1;
- (void)setSearchEngagedBundleId:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBSpotlightEventMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSpotlightEventMetadata;
  v4 = [(ATXPBSpotlightEventMetadata *)&v8 description];
  v5 = [(ATXPBSpotlightEventMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  queryAtEngagement = self->_queryAtEngagement;
  if (queryAtEngagement)
  {
    [v3 setObject:queryAtEngagement forKey:@"queryAtEngagement"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSearchDuringSession];
    [v4 setObject:v6 forKey:@"didSearchDuringSession"];
  }

  searchEngagedBundleId = self->_searchEngagedBundleId;
  if (searchEngagedBundleId)
  {
    [v4 setObject:searchEngagedBundleId forKey:@"searchEngagedBundleId"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_searchEngagedActionType];
    [v4 setObject:v8 forKey:@"searchEngagedActionType"];
  }

  engagedAppString = self->_engagedAppString;
  if (engagedAppString)
  {
    [v4 setObject:engagedAppString forKey:@"engagedAppString"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_queryAtEngagement)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }

  if (self->_searchEngagedBundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v5;
  }

  if (self->_engagedAppString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_queryAtEngagement copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_didSearchDuringSession;
    *(v5 + 44) |= 2u;
  }

  v8 = [(NSString *)self->_searchEngagedBundleId copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_searchEngagedActionType;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSString *)self->_engagedAppString copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  queryAtEngagement = self->_queryAtEngagement;
  if (queryAtEngagement | *(v4 + 3))
  {
    if (![(NSString *)queryAtEngagement isEqual:?])
    {
      goto LABEL_21;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0)
    {
      goto LABEL_21;
    }

    if (self->_didSearchDuringSession)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  searchEngagedBundleId = self->_searchEngagedBundleId;
  if (!(searchEngagedBundleId | *(v4 + 4)))
  {
    goto LABEL_9;
  }

  if (![(NSString *)searchEngagedBundleId isEqual:?])
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  has = self->_has;
LABEL_9:
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_searchEngagedActionType != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_21;
  }

  engagedAppString = self->_engagedAppString;
  if (engagedAppString | *(v4 + 2))
  {
    v9 = [(NSString *)engagedAppString isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_22:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_queryAtEngagement hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_didSearchDuringSession;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_searchEngagedBundleId hash];
  if (*&self->_has)
  {
    v6 = 2654435761u * self->_searchEngagedActionType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSString *)self->_engagedAppString hash];
}

- (BOOL)hasQueryAtEngagement
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (uint64_t)setDidSearchDuringSession:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 2u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasDidSearchDuringSession:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 44) = *(result + 44) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasDidSearchDuringSession
{
  if (result)
  {
    return (*(result + 44) >> 1) & 1;
  }

  return result;
}

- (BOOL)hasSearchEngagedBundleId
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (uint64_t)setSearchEngagedActionType:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasSearchEngagedActionType:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = *(result + 44) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasSearchEngagedActionType
{
  if (result)
  {
    return *(result + 44) & 1;
  }

  return result;
}

- (BOOL)hasEngagedAppString
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      v7 = v3;
      [(ATXPBSpotlightEventMetadata *)v3 setQueryAtEngagement:v4];
      v3 = v7;
    }

    if ((*(a1 + 44) & 2) != 0)
    {
      v3[40] = *(a1 + 40);
      v3[44] |= 2u;
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v8 = v3;
      [(ATXPBSpotlightEventMetadata *)v3 setSearchEngagedBundleId:v5];
      v3 = v8;
    }

    if (*(a1 + 44))
    {
      *(v3 + 1) = *(a1 + 8);
      v3[44] |= 1u;
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v9 = v3;
      [(ATXPBSpotlightEventMetadata *)v3 setEngagedAppString:v6];
      v3 = v9;
    }
  }
}

- (void)setQueryAtEngagement:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 24);
  }
}

- (void)setSearchEngagedBundleId:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 32);
  }
}

- (void)setEngagedAppString:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = v3[3];
    v7 = v3;
    if (v4)
    {
      objc_storeStrong((a1 + 24), v4);
      v3 = v7;
    }

    if ((*(v3 + 44) & 2) != 0)
    {
      *(a1 + 40) = *(v3 + 40);
      *(a1 + 44) |= 2u;
    }

    v5 = v3[4];
    if (v5)
    {
      objc_storeStrong((a1 + 32), v5);
      v3 = v7;
    }

    if (*(v3 + 44))
    {
      *(a1 + 8) = v3[1];
      *(a1 + 44) |= 1u;
    }

    v6 = v3[2];
    if (v6)
    {
      objc_storeStrong((a1 + 16), v6);
      v3 = v7;
    }
  }
}

- (uint64_t)queryAtEngagement
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)didSearchDuringSession
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)searchEngagedBundleId
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)searchEngagedActionType
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)engagedAppString
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

@end