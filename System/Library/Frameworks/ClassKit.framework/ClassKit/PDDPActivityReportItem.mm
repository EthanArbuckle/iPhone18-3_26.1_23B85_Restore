@interface PDDPActivityReportItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPActivityReportItem

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BINARY"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"QUANTITY"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SCORE"])
  {
    v4 = 3;
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
  v7.super_class = PDDPActivityReportItem;
  v3 = [(PDDPActivityReportItem *)&v7 description];
  dictionaryRepresentation = [(PDDPActivityReportItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v8 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v8 = off_100204038[type];
    }

    [v4 setObject:v8 forKey:@"type"];
  }

  binaryValue = self->_binaryValue;
  if (binaryValue)
  {
    dictionaryRepresentation = [(PDDPBinaryValue *)binaryValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"binary_value"];
  }

  quantityValue = self->_quantityValue;
  if (quantityValue)
  {
    dictionaryRepresentation2 = [(PDDPQuantityValue *)quantityValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"quantity_value"];
  }

  scoreValue = self->_scoreValue;
  if (scoreValue)
  {
    dictionaryRepresentation3 = [(PDDPScoreValue *)scoreValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"score_value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_binaryValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_scoreValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_title)
  {
    [toCopy setTitle:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_type;
    *(toCopy + 52) |= 1u;
  }

  if (self->_binaryValue)
  {
    [v5 setBinaryValue:?];
    toCopy = v5;
  }

  if (self->_quantityValue)
  {
    [v5 setQuantityValue:?];
    toCopy = v5;
  }

  if (self->_scoreValue)
  {
    [v5 setScoreValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    *(v5 + 12) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v10 = [(PDDPBinaryValue *)self->_binaryValue copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPQuantityValue *)self->_quantityValue copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(PDDPScoreValue *)self->_scoreValue copyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  title = self->_title;
  if (title | *(equalCopy + 5))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_17;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 2))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_type != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  binaryValue = self->_binaryValue;
  if (binaryValue | *(equalCopy + 1) && ![(PDDPBinaryValue *)binaryValue isEqual:?])
  {
    goto LABEL_17;
  }

  quantityValue = self->_quantityValue;
  if (quantityValue | *(equalCopy + 3))
  {
    if (![(PDDPQuantityValue *)quantityValue isEqual:?])
    {
      goto LABEL_17;
    }
  }

  scoreValue = self->_scoreValue;
  if (scoreValue | *(equalCopy + 4))
  {
    v11 = [(PDDPScoreValue *)scoreValue isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(PDDPBinaryValue *)self->_binaryValue hash];
  v7 = [(PDDPQuantityValue *)self->_quantityValue hash];
  return v6 ^ v7 ^ [(PDDPScoreValue *)self->_scoreValue hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v11 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(PDDPActivityReportItem *)self setTitle:?];
    fromCopy = v11;
  }

  if (*(fromCopy + 2))
  {
    [(PDDPActivityReportItem *)self setIdentifier:?];
    fromCopy = v11;
  }

  if (fromCopy[13])
  {
    self->_type = fromCopy[12];
    *&self->_has |= 1u;
  }

  binaryValue = self->_binaryValue;
  v6 = *(fromCopy + 1);
  if (binaryValue)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(PDDPBinaryValue *)binaryValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    [(PDDPActivityReportItem *)self setBinaryValue:?];
  }

  fromCopy = v11;
LABEL_13:
  quantityValue = self->_quantityValue;
  v8 = *(fromCopy + 3);
  if (quantityValue)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(PDDPQuantityValue *)quantityValue mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    [(PDDPActivityReportItem *)self setQuantityValue:?];
  }

  fromCopy = v11;
LABEL_19:
  scoreValue = self->_scoreValue;
  v10 = *(fromCopy + 4);
  if (scoreValue)
  {
    if (v10)
    {
      [(PDDPScoreValue *)scoreValue mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PDDPActivityReportItem *)self setScoreValue:?];
  }

  _objc_release_x1();
}

@end