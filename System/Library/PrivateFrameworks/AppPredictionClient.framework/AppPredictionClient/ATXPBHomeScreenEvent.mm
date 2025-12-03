@interface ATXPBHomeScreenEvent
- (BOOL)hasAppBundleId;
- (BOOL)hasBlendingCacheId;
- (BOOL)hasEventTypeString;
- (BOOL)hasIntentDescription;
- (BOOL)hasMetadata;
- (BOOL)hasReason;
- (BOOL)hasStackId;
- (BOOL)hasWidgetBundleId;
- (BOOL)hasWidgetKind;
- (BOOL)hasWidgetUniqueId;
- (BOOL)isEqual:(id)equal;
- (__CFString)stackKindAsString:(__CFString *)string;
- (__CFString)stackLocationAsString:(__CFString *)string;
- (__CFString)widgetSizeAsString:(__CFString *)string;
- (double)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)suggestionIdsAtIndex:(id *)index;
- (uint64_t)StringAsStackKind:(uint64_t)kind;
- (uint64_t)StringAsStackLocation:(uint64_t)location;
- (uint64_t)StringAsWidgetSize:(uint64_t)size;
- (uint64_t)addSuggestionIds:(uint64_t)ids;
- (uint64_t)appBundleId;
- (uint64_t)blendingCacheId;
- (uint64_t)clearSuggestionIds;
- (uint64_t)eventTypeString;
- (uint64_t)hasDate;
- (uint64_t)hasIsSuggestedWidget;
- (uint64_t)hasStackKind;
- (uint64_t)hasStackLocation;
- (uint64_t)hasWidgetSize;
- (uint64_t)intentDescription;
- (uint64_t)isSuggestedWidget;
- (uint64_t)metadata;
- (uint64_t)reason;
- (uint64_t)setDate:(uint64_t)result;
- (uint64_t)setHasDate:(uint64_t)result;
- (uint64_t)setHasIsSuggestedWidget:(uint64_t)result;
- (uint64_t)setHasStackKind:(uint64_t)result;
- (uint64_t)setHasStackLocation:(uint64_t)result;
- (uint64_t)setHasWidgetSize:(uint64_t)result;
- (uint64_t)setIsSuggestedWidget:(uint64_t)result;
- (uint64_t)setStackKind:(uint64_t)result;
- (uint64_t)setStackLocation:(uint64_t)result;
- (uint64_t)setWidgetSize:(uint64_t)result;
- (uint64_t)stackId;
- (uint64_t)stackKind;
- (uint64_t)stackLocation;
- (uint64_t)suggestionIds;
- (uint64_t)suggestionIdsCount;
- (uint64_t)widgetBundleId;
- (uint64_t)widgetKind;
- (uint64_t)widgetSize;
- (uint64_t)widgetUniqueId;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setAppBundleId:(uint64_t)id;
- (void)setBlendingCacheId:(uint64_t)id;
- (void)setEventTypeString:(uint64_t)string;
- (void)setIntentDescription:(uint64_t)description;
- (void)setMetadata:(uint64_t)metadata;
- (void)setReason:(uint64_t)reason;
- (void)setStackId:(uint64_t)id;
- (void)setSuggestionIds:(uint64_t)ids;
- (void)setWidgetBundleId:(uint64_t)id;
- (void)setWidgetKind:(uint64_t)kind;
- (void)setWidgetUniqueId:(uint64_t)id;
- (void)writeTo:(id)to;
@end

@implementation ATXPBHomeScreenEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBHomeScreenEvent;
  v4 = [(ATXPBHomeScreenEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBHomeScreenEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [dictionary setObject:v4 forKey:@"date"];
  }

  eventTypeString = self->_eventTypeString;
  if (eventTypeString)
  {
    [dictionary setObject:eventTypeString forKey:@"eventTypeString"];
  }

  reason = self->_reason;
  if (reason)
  {
    [dictionary setObject:reason forKey:@"reason"];
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId)
  {
    [dictionary setObject:blendingCacheId forKey:@"blendingCacheId"];
  }

  stackId = self->_stackId;
  if (stackId)
  {
    [dictionary setObject:stackId forKey:@"stackId"];
  }

  widgetBundleId = self->_widgetBundleId;
  if (widgetBundleId)
  {
    [dictionary setObject:widgetBundleId forKey:@"widgetBundleId"];
  }

  widgetKind = self->_widgetKind;
  if (widgetKind)
  {
    [dictionary setObject:widgetKind forKey:@"widgetKind"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v11 = self->_widgetSize - 1;
    if (v11 >= 5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_widgetSize];
    }

    else
    {
      v12 = off_1E80C5B58[v11];
    }

    [dictionary setObject:v12 forKey:@"widgetSize"];
  }

  intentDescription = self->_intentDescription;
  if (intentDescription)
  {
    [dictionary setObject:intentDescription forKey:@"intentDescription"];
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId)
  {
    [dictionary setObject:widgetUniqueId forKey:@"widgetUniqueId"];
  }

  suggestionIds = self->_suggestionIds;
  if (suggestionIds)
  {
    [dictionary setObject:suggestionIds forKey:@"suggestionIds"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(ATXPBHomeScreenEventMetadata *)metadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  appBundleId = self->_appBundleId;
  if (appBundleId)
  {
    [dictionary setObject:appBundleId forKey:@"appBundleId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    stackKind = self->_stackKind;
    if (stackKind >= 8)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_stackKind];
    }

    else
    {
      v23 = off_1E80C5B80[stackKind];
    }

    [dictionary setObject:v23 forKey:@"stackKind"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_32:
      if ((has & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_32;
  }

  stackLocation = self->_stackLocation;
  if (stackLocation >= 6)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_stackLocation];
  }

  else
  {
    v25 = off_1E80C5BC0[stackLocation];
  }

  [dictionary setObject:v25 forKey:@"stackLocation"];

  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_34;
  }

LABEL_33:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSuggestedWidget];
  [dictionary setObject:v20 forKey:@"isSuggestedWidget"];

LABEL_34:

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_eventTypeString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_blendingCacheId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stackId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_widgetBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_widgetKind)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_intentDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_widgetUniqueId)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_suggestionIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appBundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_34;
    }

LABEL_38:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_38;
  }

LABEL_34:
  if ((has & 0x10) != 0)
  {
LABEL_35:
    PBDataWriterWriteBOOLField();
  }

LABEL_36:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 124) |= 1u;
  }

  v7 = [(NSString *)self->_eventTypeString copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSString *)self->_reason copyWithZone:zone];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  v11 = [(NSString *)self->_blendingCacheId copyWithZone:zone];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(NSString *)self->_stackId copyWithZone:zone];
  v14 = *(v6 + 64);
  *(v6 + 64) = v13;

  v15 = [(NSString *)self->_widgetBundleId copyWithZone:zone];
  v16 = *(v6 + 88);
  *(v6 + 88) = v15;

  v17 = [(NSString *)self->_widgetKind copyWithZone:zone];
  v18 = *(v6 + 96);
  *(v6 + 96) = v17;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 104) = self->_widgetSize;
    *(v6 + 124) |= 8u;
  }

  v19 = [(NSString *)self->_intentDescription copyWithZone:zone];
  v20 = *(v6 + 40);
  *(v6 + 40) = v19;

  v21 = [(NSString *)self->_widgetUniqueId copyWithZone:zone];
  v22 = *(v6 + 112);
  *(v6 + 112) = v21;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = self->_suggestionIds;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v35 + 1) + 8 * i) copyWithZone:{zone, v35}];
        [(ATXPBHomeScreenEvent *)v6 addSuggestionIds:v28];
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v25);
  }

  v29 = [(ATXPBHomeScreenEventMetadata *)self->_metadata copyWithZone:zone];
  v30 = *(v6 + 48);
  *(v6 + 48) = v29;

  v31 = [(NSString *)self->_appBundleId copyWithZone:zone];
  v32 = *(v6 + 16);
  *(v6 + 16) = v31;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    *(v6 + 76) = self->_stackLocation;
    *(v6 + 124) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_15;
  }

  *(v6 + 72) = self->_stackKind;
  *(v6 + 124) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if ((has & 0x10) != 0)
  {
LABEL_15:
    *(v6 + 120) = self->_isSuggestedWidget;
    *(v6 + 124) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 124) & 1) == 0 || self->_date != *(equalCopy + 1))
    {
      goto LABEL_46;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_46;
  }

  eventTypeString = self->_eventTypeString;
  if (eventTypeString | *(equalCopy + 4) && ![(NSString *)eventTypeString isEqual:?])
  {
    goto LABEL_46;
  }

  reason = self->_reason;
  if (reason | *(equalCopy + 7))
  {
    if (![(NSString *)reason isEqual:?])
    {
      goto LABEL_46;
    }
  }

  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId | *(equalCopy + 3))
  {
    if (![(NSString *)blendingCacheId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  stackId = self->_stackId;
  if (stackId | *(equalCopy + 8))
  {
    if (![(NSString *)stackId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  widgetBundleId = self->_widgetBundleId;
  if (widgetBundleId | *(equalCopy + 11))
  {
    if (![(NSString *)widgetBundleId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  widgetKind = self->_widgetKind;
  if (widgetKind | *(equalCopy + 12))
  {
    if (![(NSString *)widgetKind isEqual:?])
    {
      goto LABEL_46;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 124) & 8) == 0 || self->_widgetSize != *(equalCopy + 26))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 124) & 8) != 0)
  {
    goto LABEL_46;
  }

  intentDescription = self->_intentDescription;
  if (intentDescription | *(equalCopy + 5) && ![(NSString *)intentDescription isEqual:?])
  {
    goto LABEL_46;
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId | *(equalCopy + 14))
  {
    if (![(NSString *)widgetUniqueId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  suggestionIds = self->_suggestionIds;
  if (suggestionIds | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)suggestionIds isEqual:?])
    {
      goto LABEL_46;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 6))
  {
    if (![(ATXPBHomeScreenEventMetadata *)metadata isEqual:?])
    {
      goto LABEL_46;
    }
  }

  appBundleId = self->_appBundleId;
  if (appBundleId | *(equalCopy + 2))
  {
    if (![(NSString *)appBundleId isEqual:?])
    {
      goto LABEL_46;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 124) & 2) == 0 || self->_stackKind != *(equalCopy + 18))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 124) & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 124) & 4) == 0 || self->_stackLocation != *(equalCopy + 19))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 124) & 4) != 0)
  {
    goto LABEL_46;
  }

  v16 = (*(equalCopy + 124) & 0x10) == 0;
  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 124) & 0x10) == 0)
    {
LABEL_46:
      v16 = 0;
      goto LABEL_47;
    }

    if (self->_isSuggestedWidget)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_46;
    }

    v16 = 1;
  }

LABEL_47:

  return v16;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v7 = (date - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  v24 = [(NSString *)self->_eventTypeString hash];
  v23 = [(NSString *)self->_reason hash];
  v22 = [(NSString *)self->_blendingCacheId hash];
  v21 = [(NSString *)self->_stackId hash];
  v9 = [(NSString *)self->_widgetBundleId hash];
  v10 = [(NSString *)self->_widgetKind hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_widgetSize;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSString *)self->_intentDescription hash];
  v13 = [(NSString *)self->_widgetUniqueId hash];
  v14 = [(NSMutableArray *)self->_suggestionIds hash];
  v15 = [(ATXPBHomeScreenEventMetadata *)self->_metadata hash];
  v16 = [(NSString *)self->_appBundleId hash];
  if ((*&self->_has & 2) == 0)
  {
    v17 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v18 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v19 = 0;
    return v24 ^ v5 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

  v17 = 2654435761 * self->_stackKind;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v18 = 2654435761 * self->_stackLocation;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v19 = 2654435761 * self->_isSuggestedWidget;
  return v24 ^ v5 ^ v23 ^ v22 ^ v21 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (uint64_t)setDate:(uint64_t)result
{
  if (result)
  {
    *(result + 124) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasDate:(uint64_t)result
{
  if (result)
  {
    *(result + 124) = *(result + 124) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasDate
{
  if (result)
  {
    return *(result + 124) & 1;
  }

  return result;
}

- (BOOL)hasEventTypeString
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (BOOL)hasReason
{
  if (result)
  {
    return *(result + 56) != 0;
  }

  return result;
}

- (BOOL)hasBlendingCacheId
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasStackId
{
  if (result)
  {
    return *(result + 64) != 0;
  }

  return result;
}

- (BOOL)hasWidgetBundleId
{
  if (result)
  {
    return *(result + 88) != 0;
  }

  return result;
}

- (BOOL)hasWidgetKind
{
  if (result)
  {
    return *(result + 96) != 0;
  }

  return result;
}

- (uint64_t)widgetSize
{
  if (result)
  {
    if ((*(result + 124) & 8) != 0)
    {
      return *(result + 104);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)setWidgetSize:(uint64_t)result
{
  if (result)
  {
    *(result + 124) |= 8u;
    *(result + 104) = a2;
  }

  return result;
}

- (uint64_t)setHasWidgetSize:(uint64_t)result
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

    *(result + 124) = *(result + 124) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasWidgetSize
{
  if (result)
  {
    return (*(result + 124) >> 3) & 1;
  }

  return result;
}

- (__CFString)widgetSizeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if ((a2 - 1) < 5)
  {
    string = off_1E80C5B58[(a2 - 1)];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsWidgetSize:(uint64_t)size
{
  v3 = a2;
  v4 = v3;
  if (size)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"TwoByTwo"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"TwoByFour"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"FourByFour"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"SixByFour"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"FourByEight"])
    {
      v6 = 5;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasIntentDescription
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (BOOL)hasWidgetUniqueId
{
  if (result)
  {
    return *(result + 112) != 0;
  }

  return result;
}

- (uint64_t)clearSuggestionIds
{
  if (result)
  {
    return [*(result + 80) removeAllObjects];
  }

  return result;
}

- (uint64_t)addSuggestionIds:(uint64_t)ids
{
  v3 = a2;
  v4 = v3;
  if (ids)
  {
    v5 = OUTLINED_FUNCTION_5_9();
    v10 = v6;
    if (!v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = *(ids + 80);
      *(ids + 80) = v7;

      v5 = OUTLINED_FUNCTION_5_9();
    }

    v3 = [v5 addObject:v10];
    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)suggestionIdsCount
{
  if (result)
  {
    return [*(result + 80) count];
  }

  return result;
}

- (id)suggestionIdsAtIndex:(id *)index
{
  if (index)
  {
    index = [index[10] objectAtIndex:a2];
    v2 = vars8;
  }

  return index;
}

- (BOOL)hasMetadata
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

- (BOOL)hasAppBundleId
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)stackKind
{
  if (result)
  {
    if ((*(result + 124) & 2) != 0)
    {
      return *(result + 72);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setStackKind:(uint64_t)result
{
  if (result)
  {
    *(result + 124) |= 2u;
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)setHasStackKind:(uint64_t)result
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

    *(result + 124) = *(result + 124) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasStackKind
{
  if (result)
  {
    return (*(result + 124) >> 1) & 1;
  }

  return result;
}

- (__CFString)stackKindAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 8)
  {
    string = off_1E80C5B80[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsStackKind:(uint64_t)kind
{
  v3 = a2;
  v4 = v3;
  if (kind)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"PinnedWidget"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"SmartStack"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"NonSmartStack"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"RotatableSuggestibleStack"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"NonRotatableSuggestibleStack"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"RotatableNonSuggestibleStack"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"NonRotatableNonSuggestibleStack"])
    {
      v6 = 7;
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

- (uint64_t)stackLocation
{
  if (result)
  {
    if ((*(result + 124) & 4) != 0)
    {
      return *(result + 76);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setStackLocation:(uint64_t)result
{
  if (result)
  {
    *(result + 124) |= 4u;
    *(result + 76) = a2;
  }

  return result;
}

- (uint64_t)setHasStackLocation:(uint64_t)result
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

    *(result + 124) = *(result + 124) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasStackLocation
{
  if (result)
  {
    return (*(result + 124) >> 2) & 1;
  }

  return result;
}

- (__CFString)stackLocationAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 6)
  {
    string = off_1E80C5BC0[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsStackLocation:(uint64_t)location
{
  v3 = a2;
  v4 = v3;
  if (location)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unknown"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"TodayPage"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"HomeScreenPage1"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"HomeScreenOtherPages"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"HomeScreenPage2"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"HomeScreenPage3"])
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

- (uint64_t)setIsSuggestedWidget:(uint64_t)result
{
  if (result)
  {
    *(result + 124) |= 0x10u;
    *(result + 120) = a2;
  }

  return result;
}

- (uint64_t)setHasIsSuggestedWidget:(uint64_t)result
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

    *(result + 124) = *(result + 124) & 0xEF | v2;
  }

  return result;
}

- (uint64_t)hasIsSuggestedWidget
{
  if (result)
  {
    return (*(result + 124) >> 4) & 1;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    if (*(to + 124))
    {
      v3[1] = *(to + 8);
      *(v3 + 124) |= 1u;
    }

    v4 = *(to + 32);
    v31 = v3;
    if (v4)
    {
      [(ATXPBHomeScreenEvent *)v3 setEventTypeString:v4];
    }

    v5 = *(to + 56);
    if (v5)
    {
      [(ATXPBHomeScreenEvent *)v31 setReason:v5];
    }

    v6 = *(to + 24);
    if (v6)
    {
      [(ATXPBHomeScreenEvent *)v31 setBlendingCacheId:v6];
    }

    v7 = *(to + 64);
    if (v7)
    {
      [(ATXPBHomeScreenEvent *)v31 setStackId:v7];
    }

    v8 = *(to + 88);
    if (v8)
    {
      [(ATXPBHomeScreenEvent *)v31 setWidgetBundleId:v8];
    }

    v9 = *(to + 96);
    if (v9)
    {
      [(ATXPBHomeScreenEvent *)v31 setWidgetKind:v9];
    }

    OUTLINED_FUNCTION_4_9();
    if ((v11 & 8) != 0)
    {
      v12 = OUTLINED_FUNCTION_2_11(v10, 104);
      *(v12 + v14) = v13 | 8;
    }

    v15 = *(to + 40);
    if (v15)
    {
      [(ATXPBHomeScreenEvent *)v31 setIntentDescription:v15];
    }

    v16 = *(to + 112);
    if (v16)
    {
      [(ATXPBHomeScreenEvent *)v31 setWidgetUniqueId:v16];
    }

    if ([OUTLINED_FUNCTION_5_9() count])
    {
      if (v31)
      {
        [*(v31 + 80) removeAllObjects];
      }

      v17 = [OUTLINED_FUNCTION_5_9() count];
      if (v17)
      {
        v18 = v17;
        for (i = 0; i != v18; ++i)
        {
          v20 = [(ATXPBHomeScreenEvent *)to suggestionIdsAtIndex:?];
          [(ATXPBHomeScreenEvent *)v31 addSuggestionIds:v20];
        }
      }
    }

    v21 = *(to + 48);
    if (v21)
    {
      [(ATXPBHomeScreenEvent *)v31 setMetadata:v21];
    }

    v22 = *(to + 16);
    if (v22)
    {
      [(ATXPBHomeScreenEvent *)v31 setAppBundleId:v22];
    }

    OUTLINED_FUNCTION_4_9();
    if ((v23 & 2) != 0)
    {
      v24 = OUTLINED_FUNCTION_2_11(v3, 72);
      *(v24 + v26) = v25 | 2;
      OUTLINED_FUNCTION_4_9();
      if ((v23 & 4) == 0)
      {
LABEL_34:
        if ((v23 & 0x10) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else if ((v23 & 4) == 0)
    {
      goto LABEL_34;
    }

    v27 = OUTLINED_FUNCTION_2_11(v3, 76);
    *(v27 + v29) = v28 | 4;
    OUTLINED_FUNCTION_4_9();
    if ((v30 & 0x10) != 0)
    {
LABEL_35:
      *(v3 + 120) = *(to + 120);
      *(v3 + 124) |= 0x10u;
    }
  }

LABEL_36:
}

- (void)setEventTypeString:(uint64_t)string
{
  if (string)
  {
    OUTLINED_FUNCTION_2(string, a2, 32);
  }
}

- (void)setReason:(uint64_t)reason
{
  if (reason)
  {
    OUTLINED_FUNCTION_2(reason, a2, 56);
  }
}

- (void)setBlendingCacheId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 24);
  }
}

- (void)setStackId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 64);
  }
}

- (void)setWidgetBundleId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 88);
  }
}

- (void)setWidgetKind:(uint64_t)kind
{
  if (kind)
  {
    OUTLINED_FUNCTION_2(kind, a2, 96);
  }
}

- (void)setIntentDescription:(uint64_t)description
{
  if (description)
  {
    OUTLINED_FUNCTION_2(description, a2, 40);
  }
}

- (void)setWidgetUniqueId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 112);
  }
}

- (void)setMetadata:(uint64_t)metadata
{
  if (metadata)
  {
    OUTLINED_FUNCTION_2(metadata, a2, 48);
  }
}

- (void)setAppBundleId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!from)
  {
    goto LABEL_40;
  }

  if (*(v3 + 124))
  {
    *(from + 8) = v3[1];
    *(from + 124) |= 1u;
  }

  v5 = v3[4];
  if (v5)
  {
    [(ATXPBHomeScreenEvent *)from setEventTypeString:v5];
  }

  v6 = *(v4 + 7);
  if (v6)
  {
    [(ATXPBHomeScreenEvent *)from setReason:v6];
  }

  v7 = *(v4 + 3);
  if (v7)
  {
    [(ATXPBHomeScreenEvent *)from setBlendingCacheId:v7];
  }

  v8 = *(v4 + 8);
  if (v8)
  {
    [(ATXPBHomeScreenEvent *)from setStackId:v8];
  }

  v9 = *(v4 + 11);
  if (v9)
  {
    [(ATXPBHomeScreenEvent *)from setWidgetBundleId:v9];
  }

  v10 = *(v4 + 12);
  if (v10)
  {
    [(ATXPBHomeScreenEvent *)from setWidgetKind:v10];
  }

  OUTLINED_FUNCTION_3_8();
  if ((v11 & 8) != 0)
  {
    OUTLINED_FUNCTION_1_20(104);
    *(from + v13) = v12 | 8;
  }

  v14 = *(v4 + 5);
  if (v14)
  {
    [(ATXPBHomeScreenEvent *)from setIntentDescription:v14];
  }

  v15 = *(v4 + 14);
  if (v15)
  {
    [(ATXPBHomeScreenEvent *)from setWidgetUniqueId:v15];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = *(v4 + 10);
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(ATXPBHomeScreenEvent *)from addSuggestionIds:?];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v21 = *(from + 48);
  v22 = *(v4 + 6);
  if (v21)
  {
    if (v22)
    {
      [(ATXPBHomeScreenEventMetadata *)v21 mergeFrom:v22];
    }
  }

  else if (v22)
  {
    [(ATXPBHomeScreenEvent *)from setMetadata:v22];
  }

  v23 = *(v4 + 2);
  if (v23)
  {
    [(ATXPBHomeScreenEvent *)from setAppBundleId:v23];
  }

  OUTLINED_FUNCTION_3_8();
  if ((v24 & 2) == 0)
  {
    if ((v24 & 4) == 0)
    {
      goto LABEL_38;
    }

LABEL_42:
    OUTLINED_FUNCTION_1_20(76);
    *(from + v28) = v27 | 4;
    OUTLINED_FUNCTION_3_8();
    if ((v29 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_1_20(72);
  *(from + v26) = v25 | 2;
  OUTLINED_FUNCTION_3_8();
  if ((v24 & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_38:
  if ((v24 & 0x10) != 0)
  {
LABEL_39:
    *(from + 120) = *(v4 + 120);
    *(from + 124) |= 0x10u;
  }

LABEL_40:
}

- (double)date
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

- (uint64_t)eventTypeString
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)reason
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)blendingCacheId
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)stackId
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)widgetBundleId
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)widgetKind
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)intentDescription
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)widgetUniqueId
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)suggestionIds
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)setSuggestionIds:(uint64_t)ids
{
  if (ids)
  {
    OUTLINED_FUNCTION_2(ids, a2, 80);
  }
}

- (uint64_t)metadata
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)appBundleId
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)isSuggestedWidget
{
  if (self)
  {
    v1 = *(self + 120);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end