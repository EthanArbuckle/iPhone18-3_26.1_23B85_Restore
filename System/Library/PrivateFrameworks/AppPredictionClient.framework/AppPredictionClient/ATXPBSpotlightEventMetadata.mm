@interface ATXPBSpotlightEventMetadata
- (BOOL)hasEngagedAppString;
- (BOOL)hasQueryAtEngagement;
- (BOOL)hasSearchEngagedBundleId;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setEngagedAppString:(uint64_t)string;
- (void)setQueryAtEngagement:(uint64_t)engagement;
- (void)setSearchEngagedBundleId:(uint64_t)id;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSpotlightEventMetadata

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSpotlightEventMetadata;
  v4 = [(ATXPBSpotlightEventMetadata *)&v8 description];
  dictionaryRepresentation = [(ATXPBSpotlightEventMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  queryAtEngagement = self->_queryAtEngagement;
  if (queryAtEngagement)
  {
    [dictionary setObject:queryAtEngagement forKey:@"queryAtEngagement"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_queryAtEngagement)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_searchEngagedBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v5;
  }

  if (self->_engagedAppString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_queryAtEngagement copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_didSearchDuringSession;
    *(v5 + 44) |= 2u;
  }

  v8 = [(NSString *)self->_searchEngagedBundleId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_searchEngagedActionType;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSString *)self->_engagedAppString copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  queryAtEngagement = self->_queryAtEngagement;
  if (queryAtEngagement | *(equalCopy + 3))
  {
    if (![(NSString *)queryAtEngagement isEqual:?])
    {
      goto LABEL_21;
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_21;
    }

    if (self->_didSearchDuringSession)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  searchEngagedBundleId = self->_searchEngagedBundleId;
  if (!(searchEngagedBundleId | *(equalCopy + 4)))
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
    if ((*(equalCopy + 44) & 1) == 0 || self->_searchEngagedActionType != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_21;
  }

  engagedAppString = self->_engagedAppString;
  if (engagedAppString | *(equalCopy + 2))
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

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    v4 = *(to + 24);
    if (v4)
    {
      v7 = v3;
      [(ATXPBSpotlightEventMetadata *)v3 setQueryAtEngagement:v4];
      v3 = v7;
    }

    if ((*(to + 44) & 2) != 0)
    {
      v3[40] = *(to + 40);
      v3[44] |= 2u;
    }

    v5 = *(to + 32);
    if (v5)
    {
      v8 = v3;
      [(ATXPBSpotlightEventMetadata *)v3 setSearchEngagedBundleId:v5];
      v3 = v8;
    }

    if (*(to + 44))
    {
      *(v3 + 1) = *(to + 8);
      v3[44] |= 1u;
    }

    v6 = *(to + 16);
    if (v6)
    {
      v9 = v3;
      [(ATXPBSpotlightEventMetadata *)v3 setEngagedAppString:v6];
      v3 = v9;
    }
  }
}

- (void)setQueryAtEngagement:(uint64_t)engagement
{
  if (engagement)
  {
    OUTLINED_FUNCTION_2(engagement, a2, 24);
  }
}

- (void)setSearchEngagedBundleId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 32);
  }
}

- (void)setEngagedAppString:(uint64_t)string
{
  if (string)
  {
    OUTLINED_FUNCTION_2(string, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[3];
    v7 = v3;
    if (v4)
    {
      objc_storeStrong((from + 24), v4);
      v3 = v7;
    }

    if ((*(v3 + 44) & 2) != 0)
    {
      *(from + 40) = *(v3 + 40);
      *(from + 44) |= 2u;
    }

    v5 = v3[4];
    if (v5)
    {
      objc_storeStrong((from + 32), v5);
      v3 = v7;
    }

    if (*(v3 + 44))
    {
      *(from + 8) = v3[1];
      *(from + 44) |= 1u;
    }

    v6 = v3[2];
    if (v6)
    {
      objc_storeStrong((from + 16), v6);
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
  if (self)
  {
    v1 = *(self + 40);
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