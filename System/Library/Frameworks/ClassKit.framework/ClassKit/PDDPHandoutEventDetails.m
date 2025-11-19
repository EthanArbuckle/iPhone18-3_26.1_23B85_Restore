@interface PDDPHandoutEventDetails
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttachmentDetails:(id)a3;
- (void)addRecipientIds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPHandoutEventDetails

- (void)addAttachmentDetails:(id)a3
{
  v4 = a3;
  attachmentDetails = self->_attachmentDetails;
  v8 = v4;
  if (!attachmentDetails)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_attachmentDetails;
    self->_attachmentDetails = v6;

    v4 = v8;
    attachmentDetails = self->_attachmentDetails;
  }

  [(NSMutableArray *)attachmentDetails addObject:v4];
}

- (void)addRecipientIds:(id)a3
{
  v4 = a3;
  recipientIds = self->_recipientIds;
  v8 = v4;
  if (!recipientIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_recipientIds;
    self->_recipientIds = v6;

    v4 = v8;
    recipientIds = self->_recipientIds;
  }

  [(NSMutableArray *)recipientIds addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPHandoutEventDetails;
  v3 = [(PDDPHandoutEventDetails *)&v7 description];
  v4 = [(PDDPHandoutEventDetails *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  classId = self->_classId;
  if (classId)
  {
    [v3 setObject:classId forKey:@"class_id"];
  }

  handoutId = self->_handoutId;
  if (handoutId)
  {
    [v4 setObject:handoutId forKey:@"handout_id"];
  }

  if ([(NSMutableArray *)self->_attachmentDetails count])
  {
    v7 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_attachmentDetails, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_attachmentDetails;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"attachment_details"];
  }

  dueDate = self->_dueDate;
  if (dueDate)
  {
    v15 = [(PDDPDate *)dueDate dictionaryRepresentation];
    [v4 setObject:v15 forKey:@"due_date"];
  }

  recipientIds = self->_recipientIds;
  if (recipientIds)
  {
    [v4 setObject:recipientIds forKey:@"recipient_ids"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_classId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_handoutId)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_attachmentDetails;
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
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  if (self->_dueDate)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_recipientIds;
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
        PBDataWriterWriteStringField();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_classId)
  {
    [v12 setClassId:?];
  }

  if (self->_handoutId)
  {
    [v12 setHandoutId:?];
  }

  if ([(PDDPHandoutEventDetails *)self attachmentDetailsCount])
  {
    [v12 clearAttachmentDetails];
    v4 = [(PDDPHandoutEventDetails *)self attachmentDetailsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPHandoutEventDetails *)self attachmentDetailsAtIndex:i];
        [v12 addAttachmentDetails:v7];
      }
    }
  }

  if (self->_dueDate)
  {
    [v12 setDueDate:?];
  }

  if ([(PDDPHandoutEventDetails *)self recipientIdsCount])
  {
    [v12 clearRecipientIds];
    v8 = [(PDDPHandoutEventDetails *)self recipientIdsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDDPHandoutEventDetails *)self recipientIdsAtIndex:j];
        [v12 addRecipientIds:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_classId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_handoutId copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = self->_attachmentDetails;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v29 + 1) + 8 * v14) copyWithZone:a3];
        [v5 addAttachmentDetails:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v12);
  }

  v16 = [(PDDPDate *)self->_dueDate copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_recipientIds;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{a3, v25}];
        [v5 addRecipientIds:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((classId = self->_classId, !(classId | v4[2])) || -[NSString isEqual:](classId, "isEqual:")) && ((handoutId = self->_handoutId, !(handoutId | v4[4])) || -[NSString isEqual:](handoutId, "isEqual:")) && ((attachmentDetails = self->_attachmentDetails, !(attachmentDetails | v4[1])) || -[NSMutableArray isEqual:](attachmentDetails, "isEqual:")) && ((dueDate = self->_dueDate, !(dueDate | v4[3])) || -[PDDPDate isEqual:](dueDate, "isEqual:")))
  {
    recipientIds = self->_recipientIds;
    if (recipientIds | v4[5])
    {
      v10 = [(NSMutableArray *)recipientIds isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_classId hash];
  v4 = [(NSString *)self->_handoutId hash]^ v3;
  v5 = [(NSMutableArray *)self->_attachmentDetails hash];
  v6 = v4 ^ v5 ^ [(PDDPDate *)self->_dueDate hash];
  return v6 ^ [(NSMutableArray *)self->_recipientIds hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    [(PDDPHandoutEventDetails *)self setClassId:?];
  }

  if (*(v4 + 4))
  {
    [(PDDPHandoutEventDetails *)self setHandoutId:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PDDPHandoutEventDetails *)self addAttachmentDetails:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  dueDate = self->_dueDate;
  v11 = *(v4 + 3);
  if (dueDate)
  {
    if (v11)
    {
      [(PDDPDate *)dueDate mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PDDPHandoutEventDetails *)self setDueDate:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(v4 + 5);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(PDDPHandoutEventDetails *)self addRecipientIds:*(*(&v17 + 1) + 8 * j), v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

@end