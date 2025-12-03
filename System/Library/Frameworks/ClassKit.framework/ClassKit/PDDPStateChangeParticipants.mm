@interface PDDPStateChangeParticipants
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecipientGroups:(id)groups;
- (void)addRecipientPersonIds:(id)ids;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPStateChangeParticipants

- (void)addRecipientPersonIds:(id)ids
{
  idsCopy = ids;
  recipientPersonIds = self->_recipientPersonIds;
  v8 = idsCopy;
  if (!recipientPersonIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_recipientPersonIds;
    self->_recipientPersonIds = v6;

    idsCopy = v8;
    recipientPersonIds = self->_recipientPersonIds;
  }

  [(NSMutableArray *)recipientPersonIds addObject:idsCopy];
}

- (void)addRecipientGroups:(id)groups
{
  groupsCopy = groups;
  recipientGroups = self->_recipientGroups;
  v8 = groupsCopy;
  if (!recipientGroups)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_recipientGroups;
    self->_recipientGroups = v6;

    groupsCopy = v8;
    recipientGroups = self->_recipientGroups;
  }

  [(NSMutableArray *)recipientGroups addObject:groupsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPStateChangeParticipants;
  v3 = [(PDDPStateChangeParticipants *)&v7 description];
  dictionaryRepresentation = [(PDDPStateChangeParticipants *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  senderPersonId = self->_senderPersonId;
  if (senderPersonId)
  {
    [v3 setObject:senderPersonId forKey:@"sender_person_id"];
  }

  recipientPersonIds = self->_recipientPersonIds;
  if (recipientPersonIds)
  {
    [v4 setObject:recipientPersonIds forKey:@"recipient_person_ids"];
  }

  if ([(NSMutableArray *)self->_recipientGroups count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_recipientGroups, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_recipientGroups;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"recipient_groups"];
  }

  recipientPersonId = self->_recipientPersonId;
  if (recipientPersonId)
  {
    [v4 setObject:recipientPersonId forKey:@"recipient_person_id"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_senderPersonId)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_recipientPersonIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_recipientGroups;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  if (self->_recipientPersonId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_senderPersonId)
  {
    [toCopy setSenderPersonId:?];
  }

  if ([(PDDPStateChangeParticipants *)self recipientPersonIdsCount])
  {
    [toCopy clearRecipientPersonIds];
    recipientPersonIdsCount = [(PDDPStateChangeParticipants *)self recipientPersonIdsCount];
    if (recipientPersonIdsCount)
    {
      v5 = recipientPersonIdsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPStateChangeParticipants *)self recipientPersonIdsAtIndex:i];
        [toCopy addRecipientPersonIds:v7];
      }
    }
  }

  if ([(PDDPStateChangeParticipants *)self recipientGroupsCount])
  {
    [toCopy clearRecipientGroups];
    recipientGroupsCount = [(PDDPStateChangeParticipants *)self recipientGroupsCount];
    if (recipientGroupsCount)
    {
      v9 = recipientGroupsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDDPStateChangeParticipants *)self recipientGroupsAtIndex:j];
        [toCopy addRecipientGroups:v11];
      }
    }
  }

  if (self->_recipientPersonId)
  {
    [toCopy setRecipientPersonId:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_senderPersonId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = self->_recipientPersonIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v27 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addRecipientPersonIds:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_recipientGroups;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * v18) copyWithZone:{zone, v23}];
        [v5 addRecipientGroups:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_recipientPersonId copyWithZone:zone];
  v21 = v5[2];
  v5[2] = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((senderPersonId = self->_senderPersonId, !(senderPersonId | equalCopy[4])) || -[NSString isEqual:](senderPersonId, "isEqual:")) && ((recipientPersonIds = self->_recipientPersonIds, !(recipientPersonIds | equalCopy[3])) || -[NSMutableArray isEqual:](recipientPersonIds, "isEqual:")) && ((recipientGroups = self->_recipientGroups, !(recipientGroups | equalCopy[1])) || -[NSMutableArray isEqual:](recipientGroups, "isEqual:")))
  {
    recipientPersonId = self->_recipientPersonId;
    if (recipientPersonId | equalCopy[2])
    {
      v9 = [(NSString *)recipientPersonId isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_senderPersonId hash];
  v4 = [(NSMutableArray *)self->_recipientPersonIds hash]^ v3;
  v5 = [(NSMutableArray *)self->_recipientGroups hash];
  return v4 ^ v5 ^ [(NSString *)self->_recipientPersonId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(PDDPStateChangeParticipants *)self setSenderPersonId:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPStateChangeParticipants *)self addRecipientPersonIds:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 1);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PDDPStateChangeParticipants *)self addRecipientGroups:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 2))
  {
    [(PDDPStateChangeParticipants *)self setRecipientPersonId:?];
  }
}

@end