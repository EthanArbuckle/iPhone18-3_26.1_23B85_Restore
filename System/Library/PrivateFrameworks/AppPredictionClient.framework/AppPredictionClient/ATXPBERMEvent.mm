@interface ATXPBERMEvent
+ (uint64_t)clientModelIdType;
- (BOOL)hasExecutable;
- (BOOL)isEqual:(id)equal;
- (__CFString)eventTypeAsString:(__CFString *)string;
- (__CFString)executableTypeAsString:(__CFString *)string;
- (double)dateEngaged;
- (double)eventDate;
- (id)clientModelIdAtIndex:(id *)index;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsEventType:(uint64_t)type;
- (uint64_t)StringAsExecutableType:(uint64_t)type;
- (uint64_t)addClientModelId:(uint64_t)id;
- (uint64_t)clearClientModelIds;
- (uint64_t)clientModelIds;
- (uint64_t)clientModelIdsCount;
- (uint64_t)engagementType;
- (uint64_t)eventType;
- (uint64_t)executable;
- (uint64_t)executableType;
- (uint64_t)hasDateEngaged;
- (uint64_t)hasEngagementType;
- (uint64_t)hasEventDate;
- (uint64_t)hasEventType;
- (uint64_t)hasExecutableType;
- (uint64_t)setDateEngaged:(uint64_t)result;
- (uint64_t)setEngagementType:(uint64_t)result;
- (uint64_t)setEventDate:(uint64_t)result;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setExecutableType:(uint64_t)result;
- (uint64_t)setHasDateEngaged:(uint64_t)result;
- (uint64_t)setHasEngagementType:(uint64_t)result;
- (uint64_t)setHasEventDate:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (uint64_t)setHasExecutableType:(uint64_t)result;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setClientModelIds:(uint64_t)ids;
- (void)setExecutable:(uint64_t)executable;
- (void)writeTo:(id)to;
@end

@implementation ATXPBERMEvent

+ (uint64_t)clientModelIdType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBERMEvent;
  v4 = [(ATXPBERMEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBERMEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_eventDate];
    [dictionary setObject:v5 forKey:@"eventDate"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    if (eventType == 1)
    {
      v7 = @"AddedEntry";
    }

    else
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }
  }

  else
  {
    v7 = @"Unknown";
  }

  [dictionary setObject:v7 forKey:@"eventType"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateEngaged];
  [dictionary setObject:v8 forKey:@"dateEngaged"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_engagementType];
  [dictionary setObject:v9 forKey:@"engagementType"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  executableType = self->_executableType;
  if (executableType >= 6)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_executableType];
  }

  else
  {
    v11 = off_1E80C1A20[executableType];
  }

  [dictionary setObject:v11 forKey:@"executableType"];

LABEL_20:
  executable = self->_executable;
  if (executable)
  {
    [dictionary setObject:executable forKey:@"executable"];
  }

  clientModelIds = self->_clientModelIds;
  if (clientModelIds)
  {
    [dictionary setObject:clientModelIds forKey:@"clientModelId"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_20:
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
  if (self->_executable)
  {
    PBDataWriterWriteDataField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_clientModelIds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_eventDate;
    *(v5 + 60) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_eventType;
  *(v5 + 60) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 8) = self->_dateEngaged;
  *(v5 + 60) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_18:
  *(v5 + 16) = self->_engagementType;
  *(v5 + 60) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 56) = self->_executableType;
    *(v5 + 60) |= 0x10u;
  }

LABEL_7:
  v8 = [(NSData *)self->_executable copyWithZone:zone];
  v9 = v6[6];
  v6[6] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_clientModelIds;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [(ATXPBERMEvent *)v6 addClientModelId:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_eventDate != *(equalCopy + 3))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
LABEL_31:
    v7 = 0;
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_eventType != *(equalCopy + 10))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_dateEngaged != *(equalCopy + 1))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_engagementType != *(equalCopy + 2))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 60) & 0x10) == 0 || self->_executableType != *(equalCopy + 14))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 60) & 0x10) != 0)
  {
    goto LABEL_31;
  }

  executable = self->_executable;
  if (executable | *(equalCopy + 6) && ![(NSData *)executable isEqual:?])
  {
    goto LABEL_31;
  }

  clientModelIds = self->_clientModelIds;
  if (clientModelIds | *(equalCopy + 4))
  {
    v7 = [(NSMutableArray *)clientModelIds isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_32:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    eventDate = self->_eventDate;
    if (eventDate < 0.0)
    {
      eventDate = -eventDate;
    }

    *v2.i64 = floor(eventDate + 0.5);
    v7 = (eventDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    v9 = 2654435761 * self->_eventType;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  dateEngaged = self->_dateEngaged;
  if (dateEngaged < 0.0)
  {
    dateEngaged = -dateEngaged;
  }

  *v2.i64 = floor(dateEngaged + 0.5);
  v11 = (dateEngaged - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_17:
  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761u * self->_engagementType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v14 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = 2654435761 * self->_executableType;
LABEL_22:
  v16 = v9 ^ v5 ^ v13 ^ v14 ^ v15 ^ [(NSData *)self->_executable hash];
  return v16 ^ [(NSMutableArray *)self->_clientModelIds hash];
}

- (uint64_t)setEventDate:(uint64_t)result
{
  if (result)
  {
    *(result + 60) |= 4u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setHasEventDate:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 60) = *(result + 60) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasEventDate
{
  if (result)
  {
    return (*(result + 60) >> 2) & 1;
  }

  return result;
}

- (uint64_t)eventType
{
  if (result)
  {
    if ((*(result + 60) & 8) != 0)
    {
      return *(result + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setEventType:(uint64_t)result
{
  if (result)
  {
    *(result + 60) |= 8u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasEventType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 60) = *(result + 60) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return (*(result + 60) >> 3) & 1;
  }

  return result;
}

- (__CFString)eventTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_11:

    return string;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      string = @"AddedEntry";

      return string;
    }

    string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
    goto LABEL_11;
  }

  string = @"Unknown";

  return string;
}

- (uint64_t)StringAsEventType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    if ([v3 isEqualToString:@"Unknown"])
    {
      type = 0;
    }

    else
    {
      type = [v4 isEqualToString:@"AddedEntry"];
    }
  }

  return type;
}

- (uint64_t)setDateEngaged:(uint64_t)result
{
  if (result)
  {
    *(result + 60) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasDateEngaged:(uint64_t)result
{
  if (result)
  {
    *(result + 60) = *(result + 60) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasDateEngaged
{
  if (result)
  {
    return *(result + 60) & 1;
  }

  return result;
}

- (uint64_t)setEngagementType:(uint64_t)result
{
  if (result)
  {
    *(result + 60) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasEngagementType:(uint64_t)result
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

    *(result + 60) = *(result + 60) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasEngagementType
{
  if (result)
  {
    return (*(result + 60) >> 1) & 1;
  }

  return result;
}

- (uint64_t)executableType
{
  if (result)
  {
    if ((*(result + 60) & 0x10) != 0)
    {
      return *(result + 56);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setExecutableType:(uint64_t)result
{
  if (result)
  {
    *(result + 60) |= 0x10u;
    *(result + 56) = a2;
  }

  return result;
}

- (uint64_t)setHasExecutableType:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 60) = *(result + 60) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasExecutableType
{
  if (result)
  {
    return (*(result + 60) >> 4) & 1;
  }

  return result;
}

- (__CFString)executableTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 6)
  {
    string = off_1E80C1A20[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsExecutableType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"string"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"action"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"heroAppPrediction"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"infoSuggestion"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"linkAction"])
    {
      v6 = 5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasExecutable
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (uint64_t)clearClientModelIds
{
  if (result)
  {
    return [*(result + 32) removeAllObjects];
  }

  return result;
}

- (uint64_t)addClientModelId:(uint64_t)id
{
  v3 = a2;
  v4 = v3;
  if (id)
  {
    v5 = *(id + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(id + 32);
      *(id + 32) = v6;

      v5 = *(id + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)clientModelIdsCount
{
  if (result)
  {
    return [*(result + 32) count];
  }

  return result;
}

- (id)clientModelIdAtIndex:(id *)index
{
  if (index)
  {
    index = [index[4] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (void)copyTo:(uint64_t)to
{
  v13 = a2;
  if (!to)
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0_14();
  if ((v5 & 4) != 0)
  {
    *(v13 + 3) = *(to + 24);
    *(v13 + v4) |= 4u;
    OUTLINED_FUNCTION_0_14();
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = v13;
  if ((v5 & 8) != 0)
  {
LABEL_6:
    v6[10] = *(to + 40);
    *(v6 + *(v3 + 2408)) |= 8u;
    OUTLINED_FUNCTION_0_14();
  }

LABEL_7:
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    *(v6 + 2) = *(to + 16);
    *(v6 + v4) |= 2u;
    OUTLINED_FUNCTION_0_14();
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(v6 + 1) = *(to + 8);
  *(v6 + v4) |= 1u;
  OUTLINED_FUNCTION_0_14();
  if ((v5 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  if ((v5 & 0x10) != 0)
  {
LABEL_10:
    v6[14] = *(to + 56);
    *(v6 + *(v3 + 2408)) |= 0x10u;
  }

LABEL_11:
  v7 = *(to + 48);
  if (v7)
  {
    [(ATXPBERMEvent *)v13 setExecutable:v7];
  }

  if ([*(to + 32) count])
  {
    if (v13)
    {
      [*(v13 + 4) removeAllObjects];
    }

    v8 = [*(to + 32) count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [*(to + 32) objectAtIndex:i];
        [(ATXPBERMEvent *)v13 addClientModelId:v11];
      }
    }
  }

LABEL_19:
}

- (void)setExecutable:(uint64_t)executable
{
  if (executable)
  {
    OUTLINED_FUNCTION_2(executable, a2, 48);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!from)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_14();
  if ((v6 & 4) != 0)
  {
    *(from + 24) = *(v3 + 3);
    *(from + v5) |= 4u;
    OUTLINED_FUNCTION_0_14();
    if ((v6 & 8) == 0)
    {
LABEL_4:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_4;
  }

  *(from + 40) = *(v3 + 10);
  *(from + *(v4 + 2408)) |= 8u;
  OUTLINED_FUNCTION_0_14();
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    *(from + 16) = *(v3 + 2);
    *(from + v5) |= 2u;
    OUTLINED_FUNCTION_0_14();
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_21:
  *(from + 8) = *(v3 + 1);
  *(from + v5) |= 1u;
  OUTLINED_FUNCTION_0_14();
  if ((v6 & 2) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v6 & 0x10) != 0)
  {
LABEL_7:
    *(from + 56) = *(v3 + 14);
    *(from + *(v4 + 2408)) |= 0x10u;
  }

LABEL_8:
  v7 = *(v3 + 6);
  if (v7)
  {
    objc_storeStrong((from + 48), v7);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v3 + 4);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(ATXPBERMEvent *)from addClientModelId:?];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

LABEL_18:
}

- (double)eventDate
{
  if (self)
  {
    return *(self + 24);
  }

  else
  {
    return 0.0;
  }
}

- (double)dateEngaged
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)engagementType
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)executable
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)clientModelIds
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setClientModelIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 32);
  }
}

@end