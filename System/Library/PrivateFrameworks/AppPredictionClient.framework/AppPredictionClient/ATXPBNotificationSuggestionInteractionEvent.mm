@interface ATXPBNotificationSuggestionInteractionEvent
- (BOOL)hasSuggestionUUID;
- (BOOL)isEqual:(id)equal;
- (__CFString)eventTypeAsString:(__CFString *)string;
- (__CFString)suggestionTypeAsString:(__CFString *)string;
- (double)secondsSinceReferenceDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsEventType:(uint64_t)type;
- (uint64_t)StringAsSuggestionType:(uint64_t)type;
- (uint64_t)eventType;
- (uint64_t)hasEventType;
- (uint64_t)hasSecondsSinceReferenceDate;
- (uint64_t)hasSuggestionType;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (uint64_t)setHasSecondsSinceReferenceDate:(uint64_t)result;
- (uint64_t)setHasSuggestionType:(uint64_t)result;
- (uint64_t)setSecondsSinceReferenceDate:(uint64_t)result;
- (uint64_t)setSuggestionType:(uint64_t)result;
- (uint64_t)suggestionType;
- (uint64_t)suggestionUUID;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setSuggestionUUID:(uint64_t)d;
- (void)writeTo:(id)to;
@end

@implementation ATXPBNotificationSuggestionInteractionEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBNotificationSuggestionInteractionEvent;
  v4 = [(ATXPBNotificationSuggestionInteractionEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBNotificationSuggestionInteractionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    suggestionType = self->_suggestionType;
    if (suggestionType >= 0xB)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suggestionType];
    }

    else
    {
      v6 = off_1E80C1120[suggestionType];
    }

    [dictionary setObject:v6 forKey:@"suggestionType"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 0xA)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v8 = off_1E80C1178[eventType];
    }

    [dictionary setObject:v8 forKey:@"eventType"];
  }

  suggestionUUID = self->_suggestionUUID;
  if (suggestionUUID)
  {
    [dictionary setObject:suggestionUUID forKey:@"suggestionUUID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secondsSinceReferenceDate];
    [dictionary setObject:v10 forKey:@"secondsSinceReferenceDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_suggestionUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 20) = self->_suggestionType;
    *(v5 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 32) |= 2u;
  }

  v8 = [(NSString *)self->_suggestionUUID copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_secondsSinceReferenceDate;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_suggestionType != *(equalCopy + 5))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_eventType != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  suggestionUUID = self->_suggestionUUID;
  if (suggestionUUID | *(equalCopy + 3))
  {
    if (![(NSString *)suggestionUUID isEqual:?])
    {
LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_secondsSinceReferenceDate != *(equalCopy + 1))
    {
      goto LABEL_19;
    }

    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_suggestionType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_eventType;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_suggestionUUID hash];
  if (*&self->_has)
  {
    secondsSinceReferenceDate = self->_secondsSinceReferenceDate;
    if (secondsSinceReferenceDate < 0.0)
    {
      secondsSinceReferenceDate = -secondsSinceReferenceDate;
    }

    *v6.i64 = floor(secondsSinceReferenceDate + 0.5);
    v10 = (secondsSinceReferenceDate - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v8 ^ v5;
}

- (uint64_t)suggestionType
{
  if (result)
  {
    if ((*(result + 32) & 4) != 0)
    {
      return *(result + 20);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)setSuggestionType:(uint64_t)result
{
  if (result)
  {
    *(result + 32) |= 4u;
    *(result + 20) = a2;
  }

  return result;
}

- (uint64_t)setHasSuggestionType:(uint64_t)result
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

    *(result + 32) = *(result + 32) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasSuggestionType
{
  if (result)
  {
    return (*(result + 32) >> 2) & 1;
  }

  return result;
}

- (__CFString)suggestionTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 0xB)
  {
    string = off_1E80C1120[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsSuggestionType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unused"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Quieting"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Promoting"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"RealTimeTuning"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"SmartPause"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"InterruptionManagement"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"SendToDigest"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"UrgencyTuningSuggestion"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"SendMessagesToDigest"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"TurnOffNotificationsForAppSuggestion"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"Total"])
    {
      v6 = 10;
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

- (uint64_t)eventType
{
  if (result)
  {
    if ((*(result + 32) & 2) != 0)
    {
      return *(result + 16);
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
    *(result + 32) |= 2u;
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setHasEventType:(uint64_t)result
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

    *(result + 32) = *(result + 32) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return (*(result + 32) >> 1) & 1;
  }

  return result;
}

- (__CFString)eventTypeAsString:(__CFString *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if (a2 < 0xA)
  {
    string = off_1E80C1178[a2];
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)StringAsEventType:(uint64_t)type
{
  v3 = a2;
  v4 = v3;
  if (type)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Unused"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Rejected"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Accepted"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"Appeared"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"Cleared"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"Removed"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"Expired"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"Created"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"CouldNotShow"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"Total"])
    {
      v6 = 9;
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

- (BOOL)hasSuggestionUUID
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (uint64_t)setSecondsSinceReferenceDate:(uint64_t)result
{
  if (result)
  {
    *(result + 32) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasSecondsSinceReferenceDate:(uint64_t)result
{
  if (result)
  {
    *(result + 32) = *(result + 32) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasSecondsSinceReferenceDate
{
  if (result)
  {
    return *(result + 32) & 1;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (to)
  {
    v4 = *(to + 32);
    if ((v4 & 4) != 0)
    {
      v3 = OUTLINED_FUNCTION_1_8(v3, 20);
      v3[v6] = v5 | 4;
      v4 = *(to + 32);
    }

    if ((v4 & 2) != 0)
    {
      v3 = OUTLINED_FUNCTION_1_8(v3, 16);
      v3[v8] = v7 | 2;
    }

    v9 = *(to + 24);
    if (v9)
    {
      v10 = v3;
      [(ATXPBNotificationSuggestionInteractionEvent *)v3 setSuggestionUUID:v9];
      v3 = v10;
    }

    if (*(to + 32))
    {
      *(v3 + 1) = *(to + 8);
      v3[32] |= 1u;
    }
  }
}

- (void)setSuggestionUUID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 24), a2);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    v4 = v3[32];
    if ((v4 & 4) != 0)
    {
      v3 = OUTLINED_FUNCTION_0_12(v3, 20);
      *(from + v6) = v5 | 4;
      v4 = v3[32];
    }

    if ((v4 & 2) != 0)
    {
      v3 = OUTLINED_FUNCTION_0_12(v3, 16);
      *(from + v8) = v7 | 2;
    }

    v9 = *(v3 + 3);
    if (v9)
    {
      v10 = v3;
      objc_storeStrong((from + 24), v9);
      v3 = v10;
    }

    if (v3[32])
    {
      *(from + 8) = *(v3 + 1);
      *(from + 32) |= 1u;
    }
  }
}

- (uint64_t)suggestionUUID
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (double)secondsSinceReferenceDate
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

@end