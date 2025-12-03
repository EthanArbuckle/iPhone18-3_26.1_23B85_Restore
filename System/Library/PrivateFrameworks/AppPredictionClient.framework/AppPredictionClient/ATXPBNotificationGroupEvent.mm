@interface ATXPBNotificationGroupEvent
- (BOOL)hasUuid;
- (BOOL)isEqual:(id)equal;
- (__CFString)eventTypeAsString:(__CFString *)string;
- (double)secondsSinceReferenceDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)StringAsEventType:(uint64_t)type;
- (uint64_t)eventType;
- (uint64_t)hasEventType;
- (uint64_t)hasSecondsSinceReferenceDate;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (uint64_t)setHasSecondsSinceReferenceDate:(uint64_t)result;
- (uint64_t)setSecondsSinceReferenceDate:(uint64_t)result;
- (uint64_t)uuid;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setUuid:(uint64_t)uuid;
- (void)writeTo:(id)to;
@end

@implementation ATXPBNotificationGroupEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBNotificationGroupEvent;
  v4 = [(ATXPBNotificationGroupEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBNotificationGroupEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    eventType = self->_eventType;
    if (eventType >= 0x16)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
    }

    else
    {
      v5 = off_1E80C3070[eventType];
    }

    [dictionary setObject:v5 forKey:@"eventType"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secondsSinceReferenceDate];
    [dictionary setObject:v7 forKey:@"secondsSinceReferenceDate"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_eventType;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_uuid copyWithZone:zone];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

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
    goto LABEL_14;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_eventType != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 3))
  {
    if (![(NSString *)uuid isEqual:?])
    {
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_secondsSinceReferenceDate != *(equalCopy + 1))
    {
      goto LABEL_14;
    }

    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_eventType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_uuid hash];
  if (*&self->_has)
  {
    secondsSinceReferenceDate = self->_secondsSinceReferenceDate;
    if (secondsSinceReferenceDate < 0.0)
    {
      secondsSinceReferenceDate = -secondsSinceReferenceDate;
    }

    *v5.i64 = floor(secondsSinceReferenceDate + 0.5);
    v9 = (secondsSinceReferenceDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
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

  if (a2 < 0x16)
  {
    string = off_1E80C3070[a2];
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

    else if ([v5 isEqualToString:@"NotificationCenterAppeared"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"NotificationCenterDisappeared"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"NotificationCenterClearAll"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"MissedBundleAppeared"])
    {
      v6 = 4;
    }

    else if ([v5 isEqualToString:@"MissedBundleExpired"])
    {
      v6 = 5;
    }

    else if ([v5 isEqualToString:@"MissedBundleExpanded"])
    {
      v6 = 6;
    }

    else if ([v5 isEqualToString:@"MissedBundleCollapsed"])
    {
      v6 = 13;
    }

    else if ([v5 isEqualToString:@"MissedBundleDismissed"])
    {
      v6 = 7;
    }

    else if ([v5 isEqualToString:@"DigestAppeared"])
    {
      v6 = 8;
    }

    else if ([v5 isEqualToString:@"DigestExpired"])
    {
      v6 = 9;
    }

    else if ([v5 isEqualToString:@"DigestExpanded"])
    {
      v6 = 10;
    }

    else if ([v5 isEqualToString:@"DigestCollapsed"])
    {
      v6 = 14;
    }

    else if ([v5 isEqualToString:@"DigestDismissed"])
    {
      v6 = 11;
    }

    else if ([v5 isEqualToString:@"DigestClearAll"])
    {
      v6 = 12;
    }

    else if ([v5 isEqualToString:@"SpringboardRestart"])
    {
      v6 = 15;
    }

    else if ([v5 isEqualToString:@"PriorityNotificationsSectionAppeared"])
    {
      v6 = 16;
    }

    else if ([v5 isEqualToString:@"PriorityNotificationsSectionDisappeared"])
    {
      v6 = 17;
    }

    else if ([v5 isEqualToString:@"PriorityNotificationsSectionExpanded"])
    {
      v6 = 18;
    }

    else if ([v5 isEqualToString:@"PriorityNotificationsSectionCollapsed"])
    {
      v6 = 19;
    }

    else if ([v5 isEqualToString:@"PriorityNotificationsSectionClearAll"])
    {
      v6 = 20;
    }

    else if ([v5 isEqualToString:@"Total"])
    {
      v6 = 21;
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

- (BOOL)hasUuid
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
    if ((*(to + 32) & 2) != 0)
    {
      v3[4] = *(to + 16);
      *(v3 + 32) |= 2u;
    }

    v4 = *(to + 24);
    if (v4)
    {
      v5 = v3;
      [(ATXPBNotificationGroupEvent *)v3 setUuid:v4];
      v3 = v5;
    }

    if (*(to + 32))
    {
      *(v3 + 1) = *(to + 8);
      *(v3 + 32) |= 1u;
    }
  }
}

- (void)setUuid:(uint64_t)uuid
{
  if (uuid)
  {
    objc_storeStrong((uuid + 24), a2);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (from)
  {
    if ((v3[8] & 2) != 0)
    {
      *(from + 16) = v3[4];
      *(from + 32) |= 2u;
    }

    v4 = *(v3 + 3);
    if (v4)
    {
      v5 = v3;
      objc_storeStrong((from + 24), v4);
      v3 = v5;
    }

    if (v3[8])
    {
      *(from + 8) = *(v3 + 1);
      *(from + 32) |= 1u;
    }
  }
}

- (uint64_t)uuid
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