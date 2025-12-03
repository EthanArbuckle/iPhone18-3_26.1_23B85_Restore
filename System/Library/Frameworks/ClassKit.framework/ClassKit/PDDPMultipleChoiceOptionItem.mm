@interface PDDPMultipleChoiceOptionItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPMultipleChoiceOptionItem

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPMultipleChoiceOptionItem;
  v3 = [(PDDPMultipleChoiceOptionItem *)&v7 description];
  dictionaryRepresentation = [(PDDPMultipleChoiceOptionItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(PDDPDate *)dateCreated dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"date_created"];
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified)
  {
    dictionaryRepresentation2 = [(PDDPDate *)dateLastModified dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"date_last_modified"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_objectId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_dateCreated)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_dateLastModified)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    displayOrder = self->_displayOrder;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_objectId)
  {
    [toCopy setObjectId:?];
    toCopy = v5;
  }

  if (self->_dateCreated)
  {
    [v5 setDateCreated:?];
    toCopy = v5;
  }

  if (self->_dateLastModified)
  {
    [v5 setDateLastModified:?];
    toCopy = v5;
  }

  if (self->_text)
  {
    [v5 setText:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_displayOrder;
    *(toCopy + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_objectId copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PDDPDate *)self->_dateCreated copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(PDDPDate *)self->_dateLastModified copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_text copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  if (*&self->_has)
  {
    *(v5 + 6) = self->_displayOrder;
    *(v5 + 48) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  objectId = self->_objectId;
  if (objectId | *(equalCopy + 4))
  {
    if (![(NSString *)objectId isEqual:?])
    {
      goto LABEL_14;
    }
  }

  dateCreated = self->_dateCreated;
  if (dateCreated | *(equalCopy + 1))
  {
    if (![(PDDPDate *)dateCreated isEqual:?])
    {
      goto LABEL_14;
    }
  }

  dateLastModified = self->_dateLastModified;
  if (dateLastModified | *(equalCopy + 2))
  {
    if (![(PDDPDate *)dateLastModified isEqual:?])
    {
      goto LABEL_14;
    }
  }

  text = self->_text;
  if (text | *(equalCopy + 5))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v9 = (*(equalCopy + 48) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) != 0 && self->_displayOrder == *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PDDPMultipleChoiceOptionItem *)self setObjectId:?];
    fromCopy = v9;
  }

  dateCreated = self->_dateCreated;
  v6 = *(fromCopy + 1);
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

  fromCopy = v9;
LABEL_9:
  dateLastModified = self->_dateLastModified;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_15:
  if (*(fromCopy + 5))
  {
    dateLastModified = [(PDDPMultipleChoiceOptionItem *)self setText:?];
    fromCopy = v9;
  }

  if (fromCopy[12])
  {
    self->_displayOrder = fromCopy[6];
    *&self->_has |= 1u;
  }

  _objc_release_x1(dateLastModified, fromCopy);
}

@end