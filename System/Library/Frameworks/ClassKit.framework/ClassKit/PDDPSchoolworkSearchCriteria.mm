@interface PDDPSchoolworkSearchCriteria
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSearchOperator:(id)operator;
- (int)searchOperator;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPSchoolworkSearchCriteria

- (int)searchOperator
{
  if (*&self->_has)
  {
    return self->_searchOperator;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSearchOperator:(id)operator
{
  operatorCopy = operator;
  if ([operatorCopy isEqualToString:@"UNKNOWN_SEARCH_OPERATOR"])
  {
    v4 = 0;
  }

  else if ([operatorCopy isEqualToString:@"LIKE"])
  {
    v4 = 1;
  }

  else if ([operatorCopy isEqualToString:@"EQ"])
  {
    v4 = 2;
  }

  else if ([operatorCopy isEqualToString:@"LT"])
  {
    v4 = 3;
  }

  else if ([operatorCopy isEqualToString:@"LT_EQ"])
  {
    v4 = 4;
  }

  else if ([operatorCopy isEqualToString:@"GT"])
  {
    v4 = 5;
  }

  else if ([operatorCopy isEqualToString:@"GT_EQ"])
  {
    v4 = 6;
  }

  else if ([operatorCopy isEqualToString:@"IN"])
  {
    v4 = 7;
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
  v7.super_class = PDDPSchoolworkSearchCriteria;
  v3 = [(PDDPSchoolworkSearchCriteria *)&v7 description];
  dictionaryRepresentation = [(PDDPSchoolworkSearchCriteria *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  fieldName = self->_fieldName;
  if (fieldName)
  {
    [v3 setObject:fieldName forKey:@"field_name"];
  }

  if (*&self->_has)
  {
    searchOperator = self->_searchOperator;
    if (searchOperator >= 8)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_searchOperator];
    }

    else
    {
      v7 = off_100204DC0[searchOperator];
    }

    [v4 setObject:v7 forKey:@"search_operator"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(PDDPTypedValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    searchOperator = self->_searchOperator;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fieldName)
  {
    [toCopy setFieldName:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_searchOperator;
    *(toCopy + 32) |= 1u;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_searchOperator;
    *(v5 + 32) |= 1u;
  }

  v8 = [(PDDPTypedValue *)self->_value copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  fieldName = self->_fieldName;
  if (fieldName | *(equalCopy + 1))
  {
    if (![(NSString *)fieldName isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_searchOperator != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  value = self->_value;
  if (value | *(equalCopy + 3))
  {
    v8 = [(PDDPTypedValue *)value isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_fieldName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_searchOperator;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ [(PDDPTypedValue *)self->_value hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PDDPSchoolworkSearchCriteria *)self setFieldName:?];
    fromCopy = v7;
  }

  if (fromCopy[8])
  {
    self->_searchOperator = fromCopy[4];
    *&self->_has |= 1u;
  }

  value = self->_value;
  v6 = *(fromCopy + 3);
  if (value)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    value = [(PDDPTypedValue *)value mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    value = [(PDDPSchoolworkSearchCriteria *)self setValue:?];
  }

  fromCopy = v7;
LABEL_11:

  _objc_release_x1(value, fromCopy);
}

@end