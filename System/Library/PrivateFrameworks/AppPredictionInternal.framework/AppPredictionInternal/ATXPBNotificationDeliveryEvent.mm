@interface ATXPBNotificationDeliveryEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDeliveryUI:(id)i;
- (int)deliveryUI;
- (unint64_t)hash;
- (void)addSuggestionUUID:(id)d;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBNotificationDeliveryEvent

- (int)deliveryUI
{
  if (*&self->_has)
  {
    return self->_deliveryUI;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDeliveryUI:(id)i
{
  iCopy = i;
  if ([iCopy isEqualToString:@"Digest"])
  {
    v4 = 0;
  }

  else if ([iCopy isEqualToString:@"MissedNotificationBundle"])
  {
    v4 = 1;
  }

  else if ([iCopy isEqualToString:@"NotificationCenter"])
  {
    v4 = 2;
  }

  else if ([iCopy isEqualToString:@"Banner"])
  {
    v4 = 3;
  }

  else if ([iCopy isEqualToString:@"LockScreen"])
  {
    v4 = 4;
  }

  else if ([iCopy isEqualToString:@"Other"])
  {
    v4 = 5;
  }

  else if ([iCopy isEqualToString:@"PriorityNotification"])
  {
    v4 = 6;
  }

  else if ([iCopy isEqualToString:@"Total"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addSuggestionUUID:(id)d
{
  dCopy = d;
  suggestionUUIDs = self->_suggestionUUIDs;
  v8 = dCopy;
  if (!suggestionUUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_suggestionUUIDs;
    self->_suggestionUUIDs = v6;

    dCopy = v8;
    suggestionUUIDs = self->_suggestionUUIDs;
  }

  [(NSMutableArray *)suggestionUUIDs addObject:dCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBNotificationDeliveryEvent;
  v4 = [(ATXPBNotificationDeliveryEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBNotificationDeliveryEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    deliveryUI = self->_deliveryUI;
    if (deliveryUI >= 8)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deliveryUI];
    }

    else
    {
      v5 = off_2785A1460[deliveryUI];
    }

    [dictionary setObject:v5 forKey:@"deliveryUI"];
  }

  suggestionUUIDs = self->_suggestionUUIDs;
  if (suggestionUUIDs)
  {
    [dictionary setObject:suggestionUUIDs forKey:@"suggestionUUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    deliveryUI = self->_deliveryUI;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_suggestionUUIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_deliveryUI;
    *(toCopy + 24) |= 1u;
  }

  v9 = toCopy;
  if ([(ATXPBNotificationDeliveryEvent *)self suggestionUUIDsCount])
  {
    [v9 clearSuggestionUUIDs];
    suggestionUUIDsCount = [(ATXPBNotificationDeliveryEvent *)self suggestionUUIDsCount];
    if (suggestionUUIDsCount)
    {
      v6 = suggestionUUIDsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBNotificationDeliveryEvent *)self suggestionUUIDAtIndex:i];
        [v9 addSuggestionUUID:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_deliveryUI;
    *(v5 + 24) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_suggestionUUIDs;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:{zone, v15}];
        [v6 addSuggestionUUID:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_deliveryUI != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  suggestionUUIDs = self->_suggestionUUIDs;
  if (suggestionUUIDs | *(equalCopy + 2))
  {
    v7 = [(NSMutableArray *)suggestionUUIDs isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_deliveryUI;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_suggestionUUIDs hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 24))
  {
    self->_deliveryUI = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 2);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ATXPBNotificationDeliveryEvent *)self addSuggestionUUID:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end