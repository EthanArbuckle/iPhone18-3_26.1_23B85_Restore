@interface ACProtobufDataclassAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAffectedContainers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ACProtobufDataclassAction

- (void)addAffectedContainers:(id)a3
{
  v4 = a3;
  affectedContainers = self->_affectedContainers;
  v8 = v4;
  if (!affectedContainers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_affectedContainers;
    self->_affectedContainers = v6;

    v4 = v8;
    affectedContainers = self->_affectedContainers;
  }

  [(NSMutableArray *)affectedContainers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufDataclassAction;
  v4 = [(ACProtobufDataclassAction *)&v8 description];
  v5 = [(ACProtobufDataclassAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
  [v3 setObject:v4 forKey:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_destructive];
  [v3 setObject:v5 forKey:@"destructive"];

  affectedContainers = self->_affectedContainers;
  if (affectedContainers)
  {
    [v3 setObject:affectedContainers forKey:@"affectedContainers"];
  }

  undoAlertTitle = self->_undoAlertTitle;
  if (undoAlertTitle)
  {
    [v3 setObject:undoAlertTitle forKey:@"undoAlertTitle"];
  }

  undoAlertMessage = self->_undoAlertMessage;
  if (undoAlertMessage)
  {
    [v3 setObject:undoAlertMessage forKey:@"undoAlertMessage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteInt32Field();
  destructive = self->_destructive;
  PBDataWriterWriteBOOLField();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_affectedContainers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (self->_undoAlertTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_undoAlertMessage)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_type;
  v10 = v4;
  *(v4 + 40) = self->_destructive;
  if ([(ACProtobufDataclassAction *)self affectedContainersCount])
  {
    [v10 clearAffectedContainers];
    v5 = [(ACProtobufDataclassAction *)self affectedContainersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ACProtobufDataclassAction *)self affectedContainersAtIndex:i];
        [v10 addAffectedContainers:v8];
      }
    }
  }

  if (self->_undoAlertTitle)
  {
    [v10 setUndoAlertTitle:?];
  }

  v9 = v10;
  if (self->_undoAlertMessage)
  {
    [v10 setUndoAlertMessage:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_type;
  *(v5 + 40) = self->_destructive;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_affectedContainers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{a3, v18}];
        [v5 addAffectedContainers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_undoAlertTitle copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_undoAlertMessage copyWithZone:a3];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_type != *(v4 + 4))
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (self->_destructive)
  {
    if ((*(v4 + 40) & 1) == 0)
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

  affectedContainers = self->_affectedContainers;
  if (affectedContainers | *(v4 + 1) && ![(NSMutableArray *)affectedContainers isEqual:?])
  {
    goto LABEL_13;
  }

  undoAlertTitle = self->_undoAlertTitle;
  if (undoAlertTitle | *(v4 + 4))
  {
    if (![(NSString *)undoAlertTitle isEqual:?])
    {
      goto LABEL_13;
    }
  }

  undoAlertMessage = self->_undoAlertMessage;
  if (undoAlertMessage | *(v4 + 3))
  {
    v9 = [(NSString *)undoAlertMessage isEqual:?];
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
  v3 = 2654435761 * self->_type;
  v4 = 2654435761 * self->_destructive;
  v5 = v4 ^ [(NSMutableArray *)self->_affectedContainers hash]^ v3;
  v6 = [(NSString *)self->_undoAlertTitle hash];
  return v5 ^ v6 ^ [(NSString *)self->_undoAlertMessage hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_type = *(v4 + 4);
  self->_destructive = *(v4 + 40);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [(ACProtobufDataclassAction *)self addAffectedContainers:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 4))
  {
    [(ACProtobufDataclassAction *)self setUndoAlertTitle:?];
  }

  if (*(v4 + 3))
  {
    [(ACProtobufDataclassAction *)self setUndoAlertMessage:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end