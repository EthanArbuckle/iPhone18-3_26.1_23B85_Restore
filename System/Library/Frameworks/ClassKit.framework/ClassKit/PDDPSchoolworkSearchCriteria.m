@interface PDDPSchoolworkSearchCriteria
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSearchOperator:(id)a3;
- (int)searchOperator;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsSearchOperator:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_SEARCH_OPERATOR"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LIKE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EQ"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LT"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LT_EQ"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GT"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"GT_EQ"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"IN"])
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
  v4 = [(PDDPSchoolworkSearchCriteria *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v9 = [(PDDPTypedValue *)value dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    searchOperator = self->_searchOperator;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fieldName)
  {
    [v4 setFieldName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_searchOperator;
    *(v4 + 32) |= 1u;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  if (*&self->_has)
  {
    *(v5 + 4) = self->_searchOperator;
    *(v5 + 32) |= 1u;
  }

  v8 = [(PDDPTypedValue *)self->_value copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  fieldName = self->_fieldName;
  if (fieldName | *(v4 + 1))
  {
    if (![(NSString *)fieldName isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_searchOperator != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  value = self->_value;
  if (value | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 1))
  {
    [(PDDPSchoolworkSearchCriteria *)self setFieldName:?];
    v4 = v7;
  }

  if (v4[8])
  {
    self->_searchOperator = v4[4];
    *&self->_has |= 1u;
  }

  value = self->_value;
  v6 = *(v4 + 3);
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

  v4 = v7;
LABEL_11:

  _objc_release_x1(value, v4);
}

@end