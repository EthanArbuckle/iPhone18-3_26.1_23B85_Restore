@interface PDDPMultipleChoiceOptionItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPMultipleChoiceOptionItem

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPMultipleChoiceOptionItem;
  v3 = [(PDDPMultipleChoiceOptionItem *)&v7 description];
  v4 = [(PDDPMultipleChoiceOptionItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  objectId = self->_objectId;
  if (objectId)
  {
    [v3 setObject:objectId forKey:@"object_id"];
  }

  dateCreated = self->_dateCreated;
  if (dateCreated)
  {
    v7 = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    v9 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"date_last_modified"];
  }

  text = self->_text;
  if (text)
  {
    [v4 setObject:text forKey:@"text"];
  }

  if (*&self->_has)
  {
    v11 = [NSNumber numberWithInt:self->_displayOrder];
    [v4 setObject:v11 forKey:@"display_order"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_objectId)
  {
    [v4 setObjectId:?];
    v4 = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    v4 = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    v4 = v5;
  }

  if (self->_text)
  {
    [v5 setText:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_displayOrder;
    *(v4 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PDDPDate *)self->_dateCreated copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PDDPDate *)self->_dateLastModified copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_text copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_displayOrder;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  objectId = self->_objectId;
  if (objectId | *(v4 + 4))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(v4 + 1))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_14;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(v4 + 2))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_14;
    }
  }

  text = self->_text;
  if (text | *(v4 + 5))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(v4 + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) != 0 && self->_displayOrder == *(v4 + 6))
    {
      v9 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
  }

LABEL_15:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_objectId hash];
  v4 = [(PDDPDate *)self->_dateCreated hash];
  v5 = [(PDDPDate *)self->_dateLastModified hash];
  v6 = [(NSString *)self->_text hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_displayOrder;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*(v4 + 4))
  {
    [(PDDPMultipleChoiceOptionItem *)self setObjectId:?];
    v4 = v9;
  }

  dateCreated = self->_dateCreated;
  v6 = *(v4 + 1);
  if (dateCreated)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDDPDate *)dateCreated mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(PDDPMultipleChoiceOptionItem *)self setDateCreated:?];
  }

  v4 = v9;
LABEL_9:
  dateLastModified = self->_dateLastModified;
  v8 = *(v4 + 2);
  if (dateLastModified)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    dateLastModified = [(PDDPDate *)dateLastModified mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    dateLastModified = [(PDDPMultipleChoiceOptionItem *)self setDateLastModified:?];
  }

  v4 = v9;
LABEL_15:
  if (*(v4 + 5))
  {
    dateLastModified = [(PDDPMultipleChoiceOptionItem *)self setText:?];
    v4 = v9;
  }

  if (v4[12])
  {
    self->_displayOrder = v4[6];
    *&self->_has |= 1u;
  }

  _objc_release_x1(dateLastModified, v4);
}

@end