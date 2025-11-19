@interface PDDPActivityReportItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BINARY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"QUANTITY"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SCORE"])
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
  v4 = [(PDDPActivityReportItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v10 = [(PDDPBinaryValue *)binaryValue dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"binary_value"];
  }

  quantityValue = self->_quantityValue;
  if (quantityValue)
  {
    v12 = [(PDDPQuantityValue *)quantityValue dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"quantity_value"];
  }

  scoreValue = self->_scoreValue;
  if (scoreValue)
  {
    v14 = [(PDDPScoreValue *)scoreValue dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"score_value"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_binaryValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_scoreValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 12) = self->_type;
    *(v4 + 52) |= 1u;
  }

  if (self->_binaryValue)
  {
    [v5 setBinaryValue:?];
    v4 = v5;
  }

  if (self->_quantityValue)
  {
    [v5 setQuantityValue:?];
    v4 = v5;
  }

  if (self->_scoreValue)
  {
    [v5 setScoreValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    *(v5 + 12) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v10 = [(PDDPBinaryValue *)self->_binaryValue copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(PDDPQuantityValue *)self->_quantityValue copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(PDDPScoreValue *)self->_scoreValue copyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  title = self->_title;
  if (title | *(v4 + 5))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_17;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 2))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  binaryValue = self->_binaryValue;
  if (binaryValue | *(v4 + 1) && ![(PDDPBinaryValue *)binaryValue isEqual:?])
  {
    goto LABEL_17;
  }

  quantityValue = self->_quantityValue;
  if (quantityValue | *(v4 + 3))
  {
    if (![(PDDPQuantityValue *)quantityValue isEqual:?])
    {
      goto LABEL_17;
    }
  }

  scoreValue = self->_scoreValue;
  if (scoreValue | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (*(v4 + 5))
  {
    [(PDDPActivityReportItem *)self setTitle:?];
    v4 = v11;
  }

  if (*(v4 + 2))
  {
    [(PDDPActivityReportItem *)self setIdentifier:?];
    v4 = v11;
  }

  if (v4[13])
  {
    self->_type = v4[12];
    *&self->_has |= 1u;
  }

  binaryValue = self->_binaryValue;
  v6 = *(v4 + 1);
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

  v4 = v11;
LABEL_13:
  quantityValue = self->_quantityValue;
  v8 = *(v4 + 3);
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

  v4 = v11;
LABEL_19:
  scoreValue = self->_scoreValue;
  v10 = *(v4 + 4);
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