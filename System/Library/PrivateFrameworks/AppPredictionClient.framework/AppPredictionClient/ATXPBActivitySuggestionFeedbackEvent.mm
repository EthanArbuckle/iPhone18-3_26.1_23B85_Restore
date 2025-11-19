@interface ATXPBActivitySuggestionFeedbackEvent
+ (uint64_t)serializedAcceptedTriggersType;
- (BOOL)hasActivity;
- (BOOL)isEqual:(id)a3;
- (__CFString)eventTypeAsString:(__CFString *)a1;
- (__CFString)locationAsString:(__CFString *)a1;
- (__CFString)suggestionTypeAsString:(__CFString *)a1;
- (double)date;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)serializedAcceptedTriggersAtIndex:(id *)a1;
- (uint64_t)StringAsEventType:(uint64_t)a1;
- (uint64_t)StringAsLocation:(uint64_t)a1;
- (uint64_t)StringAsSuggestionType:(uint64_t)a1;
- (uint64_t)activity;
- (uint64_t)addSerializedAcceptedTriggers:(uint64_t)a1;
- (uint64_t)clearSerializedAcceptedTriggers;
- (uint64_t)eventType;
- (uint64_t)hasDate;
- (uint64_t)hasEventType;
- (uint64_t)hasLocation;
- (uint64_t)hasSuggestionType;
- (uint64_t)location;
- (uint64_t)serializedAcceptedTriggers;
- (uint64_t)serializedAcceptedTriggersCount;
- (uint64_t)setDate:(uint64_t)result;
- (uint64_t)setEventType:(uint64_t)result;
- (uint64_t)setHasDate:(uint64_t)result;
- (uint64_t)setHasEventType:(uint64_t)result;
- (uint64_t)setHasLocation:(uint64_t)result;
- (uint64_t)setHasSuggestionType:(uint64_t)result;
- (uint64_t)setLocation:(uint64_t)result;
- (uint64_t)setSuggestionType:(uint64_t)result;
- (uint64_t)suggestionType;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setActivity:(uint64_t)a1;
- (void)setSerializedAcceptedTriggers:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBActivitySuggestionFeedbackEvent

+ (uint64_t)serializedAcceptedTriggersType
{
  objc_opt_self();

  return objc_opt_class();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBActivitySuggestionFeedbackEvent;
  v4 = [(ATXPBActivitySuggestionFeedbackEvent *)&v8 description];
  v5 = [(ATXPBActivitySuggestionFeedbackEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [v3 setObject:v5 forKey:@"date"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  eventType = self->_eventType;
  if (eventType >= 5)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v7 = off_1E80C07B0[eventType];
  }

  [v3 setObject:v7 forKey:@"eventType"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    suggestionType = self->_suggestionType;
    if (suggestionType >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_suggestionType];
    }

    else
    {
      v9 = off_1E80C07D8[suggestionType];
    }

    [v3 setObject:v9 forKey:@"suggestionType"];
  }

LABEL_14:
  activity = self->_activity;
  if (activity)
  {
    v11 = [(ATXPBActivity *)activity dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"activity"];
  }

  serializedAcceptedTriggers = self->_serializedAcceptedTriggers;
  if (serializedAcceptedTriggers)
  {
    [v3 setObject:serializedAcceptedTriggers forKey:@"serializedAcceptedTriggers"];
  }

  if ((*&self->_has & 4) != 0)
  {
    location = self->_location;
    if (location)
    {
      if (location == 1)
      {
        v14 = @"LockScreen";
      }

      else
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_location];
      }
    }

    else
    {
      v14 = @"ControlCenter";
    }

    [v3 setObject:v14 forKey:@"location"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  if (self->_activity)
  {
    PBDataWriterWriteSubmessage();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_serializedAcceptedTriggers;
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

        PBDataWriterWriteDataField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_eventType;
  *(v5 + 44) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_suggestionType;
    *(v5 + 44) |= 8u;
  }

LABEL_5:
  v8 = [(ATXPBActivity *)self->_activity copyWithZone:a3];
  v9 = *(v6 + 16);
  *(v6 + 16) = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_serializedAcceptedTriggers;
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

        v15 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{a3, v17}];
        [(ATXPBActivitySuggestionFeedbackEvent *)v6 addSerializedAcceptedTriggers:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 28) = self->_location;
    *(v6 + 44) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_eventType != *(v4 + 6))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0 || self->_suggestionType != *(v4 + 10))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_25;
  }

  activity = self->_activity;
  if (activity | *(v4 + 2) && ![(ATXPBActivity *)activity isEqual:?])
  {
    goto LABEL_25;
  }

  serializedAcceptedTriggers = self->_serializedAcceptedTriggers;
  if (serializedAcceptedTriggers | *(v4 + 4))
  {
    if (![(NSMutableArray *)serializedAcceptedTriggers isEqual:?])
    {
      goto LABEL_25;
    }
  }

  v7 = (*(v4 + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_location != *(v4 + 7))
    {
      goto LABEL_25;
    }

    v7 = 1;
  }

LABEL_26:

  return v7;
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

  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_eventType;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_11:
      v10 = 2654435761 * self->_suggestionType;
      goto LABEL_14;
    }
  }

  v10 = 0;
LABEL_14:
  v11 = [(ATXPBActivity *)self->_activity hash];
  v12 = [(NSMutableArray *)self->_serializedAcceptedTriggers hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_location;
  }

  else
  {
    v13 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (uint64_t)setDate:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasDate:(uint64_t)result
{
  if (result)
  {
    *(result + 44) = *(result + 44) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasDate
{
  if (result)
  {
    return *(result + 44) & 1;
  }

  return result;
}

- (uint64_t)eventType
{
  if (result)
  {
    if ((*(result + 44) & 2) != 0)
    {
      return *(result + 24);
    }

    else
    {
      return OUTLINED_FUNCTION_3_1();
    }
  }

  return result;
}

- (uint64_t)setEventType:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 2u;
    *(result + 24) = a2;
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

    *(result + 44) = *(result + 44) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasEventType
{
  if (result)
  {
    return (*(result + 44) >> 1) & 1;
  }

  return result;
}

- (__CFString)eventTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 5)
  {
    a1 = off_1E80C07B0[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsEventType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"Suggested"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"Seen"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Accepted"])
    {
      v6 = 2;
    }

    else if ([v5 isEqualToString:@"Rejected"])
    {
      v6 = 3;
    }

    else if ([v5 isEqualToString:@"SetUpFinished"])
    {
      v6 = 4;
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

- (uint64_t)suggestionType
{
  if (result)
  {
    if ((*(result + 44) & 8) != 0)
    {
      return *(result + 40);
    }

    else
    {
      return OUTLINED_FUNCTION_3_1();
    }
  }

  return result;
}

- (uint64_t)setSuggestionType:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 8u;
    *(result + 40) = a2;
  }

  return result;
}

- (uint64_t)setHasSuggestionType:(uint64_t)result
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

    *(result + 44) = *(result + 44) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasSuggestionType
{
  if (result)
  {
    return (*(result + 44) >> 3) & 1;
  }

  return result;
}

- (__CFString)suggestionTypeAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (a2 < 3)
  {
    a1 = off_1E80C07D8[a2];
    goto LABEL_4;
  }

  a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return a1;
}

- (uint64_t)StringAsSuggestionType:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    if ([v5 isEqualToString:@"SetUp"])
    {
      v6 = 0;
    }

    else if ([v5 isEqualToString:@"EnterAnAlreadyConfiguredActivity"])
    {
      v6 = 1;
    }

    else if ([v5 isEqualToString:@"Trigger"])
    {
      v6 = 2;
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

- (BOOL)hasActivity
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)clearSerializedAcceptedTriggers
{
  if (result)
  {
    return [*(result + 32) removeAllObjects];
  }

  return result;
}

- (uint64_t)addSerializedAcceptedTriggers:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 32);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 32);
      *(a1 + 32) = v6;

      v5 = *(a1 + 32);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (uint64_t)serializedAcceptedTriggersCount
{
  if (result)
  {
    return [*(result + 32) count];
  }

  return result;
}

- (id)serializedAcceptedTriggersAtIndex:(id *)a1
{
  if (a1)
  {
    a1 = [a1[4] objectAtIndex:a2];
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)location
{
  if (result)
  {
    if ((*(result + 44) & 4) != 0)
    {
      return *(result + 28);
    }

    else
    {
      return OUTLINED_FUNCTION_3_1();
    }
  }

  return result;
}

- (uint64_t)setLocation:(uint64_t)result
{
  if (result)
  {
    *(result + 44) |= 4u;
    *(result + 28) = a2;
  }

  return result;
}

- (uint64_t)setHasLocation:(uint64_t)result
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

    *(result + 44) = *(result + 44) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasLocation
{
  if (result)
  {
    return (*(result + 44) >> 2) & 1;
  }

  return result;
}

- (__CFString)locationAsString:(__CFString *)a1
{
  if (!a1)
  {
LABEL_11:

    return a1;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      a1 = @"LockScreen";

      return a1;
    }

    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
    goto LABEL_11;
  }

  a1 = @"ControlCenter";

  return a1;
}

- (uint64_t)StringAsLocation:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqualToString:@"ControlCenter"])
    {
      a1 = 0;
    }

    else
    {
      a1 = [v4 isEqualToString:@"LockScreen"];
    }
  }

  return a1;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 44);
  if ((v4 & 1) == 0)
  {
    if ((*(a1 + 44) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    v3 = OUTLINED_FUNCTION_0_7(v3, 24);
    v3[v15] = v14 | 2;
    if ((*(a1 + 44) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(v3 + 1) = *(a1 + 8);
  v3[44] |= 1u;
  v4 = *(a1 + 44);
  if ((v4 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v4 & 8) != 0)
  {
LABEL_5:
    v3 = OUTLINED_FUNCTION_0_7(v3, 40);
    v3[v6] = v5 | 8;
  }

LABEL_6:
  v16 = v3;
  v7 = *(a1 + 16);
  if (v7)
  {
    [(ATXPBActivitySuggestionFeedbackEvent *)v3 setActivity:v7];
  }

  if ([*(a1 + 32) count])
  {
    if (v16)
    {
      [*(v16 + 32) removeAllObjects];
    }

    v8 = [*(a1 + 32) count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [*(a1 + 32) objectAtIndex:i];
        [(ATXPBActivitySuggestionFeedbackEvent *)v16 addSerializedAcceptedTriggers:v11];
      }
    }
  }

  v3 = v16;
  if ((*(a1 + 44) & 4) != 0)
  {
    v3 = OUTLINED_FUNCTION_0_7(v16, 28);
    v3[v13] = v12 | 4;
  }

LABEL_16:
}

- (void)setActivity:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 16);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_23;
  }

  v5 = v3[44];
  if ((v5 & 1) == 0)
  {
    if ((v3[44] & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    OUTLINED_FUNCTION_1_5(24);
    *(a1 + v11) = v10 | 2;
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a1 + 8) = *(v3 + 1);
  *(a1 + 44) |= 1u;
  v5 = v3[44];
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 8) != 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_1_5(40);
    *(a1 + v7) = v6 | 8;
  }

LABEL_6:
  v8 = *(a1 + 16);
  v9 = *(v4 + 2);
  if (v8)
  {
    if (v9)
    {
      [(ATXPBActivity *)v8 mergeFrom:v9];
    }
  }

  else if (v9)
  {
    objc_storeStrong((a1 + 16), v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(v4 + 4);
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ATXPBActivitySuggestionFeedbackEvent *)a1 addSerializedAcceptedTriggers:?];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  if ((*(v4 + 44) & 4) != 0)
  {
    OUTLINED_FUNCTION_1_5(28);
    *(a1 + v18) = v17 | 4;
  }

LABEL_23:
}

- (double)date
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)activity
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)serializedAcceptedTriggers
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setSerializedAcceptedTriggers:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2(a1, a2, 32);
  }
}

@end