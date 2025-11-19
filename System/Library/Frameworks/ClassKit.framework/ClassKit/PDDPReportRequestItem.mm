@interface PDDPReportRequestItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDesiredGranularity:(id)a3;
- (int)desiredGranularity;
- (unint64_t)hash;
- (void)addHandoutIds:(id)a3;
- (void)addStudentIds:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPReportRequestItem

- (void)addHandoutIds:(id)a3
{
  v4 = a3;
  handoutIds = self->_handoutIds;
  v8 = v4;
  if (!handoutIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_handoutIds;
    self->_handoutIds = v6;

    v4 = v8;
    handoutIds = self->_handoutIds;
  }

  [(NSMutableArray *)handoutIds addObject:v4];
}

- (void)addStudentIds:(id)a3
{
  v4 = a3;
  studentIds = self->_studentIds;
  v8 = v4;
  if (!studentIds)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_studentIds;
    self->_studentIds = v6;

    v4 = v8;
    studentIds = self->_studentIds;
  }

  [(NSMutableArray *)studentIds addObject:v4];
}

- (int)desiredGranularity
{
  if (*&self->_has)
  {
    return self->_desiredGranularity;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDesiredGranularity:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_GRANULARITY"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DAILY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EVERY_7_DAY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"EVERY_30_DAY"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"COMPLETE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPReportRequestItem;
  v3 = [(PDDPReportRequestItem *)&v7 description];
  v4 = [(PDDPReportRequestItem *)self dictionaryRepresentation];
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

  handoutIds = self->_handoutIds;
  if (handoutIds)
  {
    [v4 setObject:handoutIds forKey:@"handout_ids"];
  }

  studentIds = self->_studentIds;
  if (studentIds)
  {
    [v4 setObject:studentIds forKey:@"student_ids"];
  }

  if (*&self->_has)
  {
    desiredGranularity = self->_desiredGranularity;
    if (desiredGranularity >= 5)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_desiredGranularity];
    }

    else
    {
      v9 = off_100204D10[desiredGranularity];
    }

    [v4 setObject:v9 forKey:@"desired_granularity"];
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

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_handoutIds;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    desiredGranularity = self->_desiredGranularity;
    PBDataWriterWriteInt32Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_studentIds;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)copyTo:(id)a3
{
  v12 = a3;
  if (self->_classId)
  {
    [v12 setClassId:?];
  }

  if ([(PDDPReportRequestItem *)self handoutIdsCount])
  {
    [v12 clearHandoutIds];
    v4 = [(PDDPReportRequestItem *)self handoutIdsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PDDPReportRequestItem *)self handoutIdsAtIndex:i];
        [v12 addHandoutIds:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v12 + 4) = self->_desiredGranularity;
    *(v12 + 40) |= 1u;
  }

  if ([(PDDPReportRequestItem *)self studentIdsCount])
  {
    [v12 clearStudentIds];
    v8 = [(PDDPReportRequestItem *)self studentIdsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PDDPReportRequestItem *)self studentIdsAtIndex:j];
        [v12 addStudentIds:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_classId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_handoutIds;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addHandoutIds:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 4) = self->_desiredGranularity;
    *(v5 + 40) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_studentIds;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{a3, v21}];
        [v5 addStudentIds:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  classId = self->_classId;
  if (classId | *(v4 + 1))
  {
    if (![(NSString *)classId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  handoutIds = self->_handoutIds;
  if (handoutIds | *(v4 + 3))
  {
    if (![(NSMutableArray *)handoutIds isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_desiredGranularity != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  studentIds = self->_studentIds;
  if (studentIds | *(v4 + 4))
  {
    v9 = [(NSMutableArray *)studentIds isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_classId hash];
  v4 = [(NSMutableArray *)self->_handoutIds hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_desiredGranularity;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_studentIds hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    [(PDDPReportRequestItem *)self setClassId:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(v4 + 3);
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

        [(PDDPReportRequestItem *)self addHandoutIds:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*(v4 + 40))
  {
    self->_desiredGranularity = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(v4 + 4);
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

        [(PDDPReportRequestItem *)self addStudentIds:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end