@interface PDDPSearchCriteria
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompareOptions:(id)options;
- (int)StringAsSearchOperator:(id)operator;
- (int)compareOptions;
- (int)searchOperator;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSearchOperator:(BOOL)operator;
- (void)writeTo:(id)to;
@end

@implementation PDDPSearchCriteria

- (int)searchOperator
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_searchOperator;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSearchOperator:(BOOL)operator
{
  if (operator)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (int)compareOptions
{
  if (*&self->_has)
  {
    return self->_compareOptions;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsCompareOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy isEqualToString:@"SC_OPTIONS_NONE"])
  {
    v4 = 0;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_CASE_INSENSITIVE"])
  {
    v4 = 1;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_LITERAL"])
  {
    v4 = 2;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_BACKWARDS"])
  {
    v4 = 4;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_ANCHORED"])
  {
    v4 = 8;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_NUMERIC"])
  {
    v4 = 64;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_DIACRITIC_INSENSITIVE"])
  {
    v4 = 128;
  }

  else if ([optionsCopy isEqualToString:@"SC_OPTIONS_WIDTH_INSENSITIVE"])
  {
    v4 = 256;
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
  v7.super_class = PDDPSearchCriteria;
  v3 = [(PDDPSearchCriteria *)&v7 description];
  dictionaryRepresentation = [(PDDPSearchCriteria *)self dictionaryRepresentation];
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

  if ((*&self->_has & 2) != 0)
  {
    searchOperator = self->_searchOperator;
    if (searchOperator >= 8)
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_searchOperator];
    }

    else
    {
      v7 = off_1002058B0[searchOperator];
    }

    [v4 setObject:v7 forKey:@"search_operator"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(PDDPTypedValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
  }

  if (*&self->_has)
  {
    compareOptions = self->_compareOptions;
    if (compareOptions > 7)
    {
      if (compareOptions > 127)
      {
        if (compareOptions == 128)
        {
          v11 = @"SC_OPTIONS_DIACRITIC_INSENSITIVE";
          goto LABEL_31;
        }

        if (compareOptions == 256)
        {
          v11 = @"SC_OPTIONS_WIDTH_INSENSITIVE";
          goto LABEL_31;
        }
      }

      else
      {
        if (compareOptions == 8)
        {
          v11 = @"SC_OPTIONS_ANCHORED";
          goto LABEL_31;
        }

        if (compareOptions == 64)
        {
          v11 = @"SC_OPTIONS_NUMERIC";
          goto LABEL_31;
        }
      }
    }

    else if (compareOptions > 1)
    {
      if (compareOptions == 2)
      {
        v11 = @"SC_OPTIONS_LITERAL";
        goto LABEL_31;
      }

      if (compareOptions == 4)
      {
        v11 = @"SC_OPTIONS_BACKWARDS";
        goto LABEL_31;
      }
    }

    else
    {
      if (!compareOptions)
      {
        v11 = @"SC_OPTIONS_NONE";
        goto LABEL_31;
      }

      if (compareOptions == 1)
      {
        v11 = @"SC_OPTIONS_CASE_INSENSITIVE";
LABEL_31:
        [v4 setObject:v11 forKey:@"compareOptions"];

        goto LABEL_32;
      }
    }

    v11 = [NSString stringWithFormat:@"(unknown: %i)", self->_compareOptions];
    goto LABEL_31;
  }

LABEL_32:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    searchOperator = self->_searchOperator;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    compareOptions = self->_compareOptions;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
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

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 6) = self->_searchOperator;
    *(toCopy + 40) |= 2u;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_compareOptions;
    *(toCopy + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 6) = self->_searchOperator;
    *(v5 + 40) |= 2u;
  }

  v8 = [(PDDPTypedValue *)self->_value copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_compareOptions;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  fieldName = self->_fieldName;
  if (fieldName | *(equalCopy + 2))
  {
    if (![(NSString *)fieldName isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 40);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_searchOperator != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  value = self->_value;
  if (value | *(equalCopy + 4))
  {
    if (![(PDDPTypedValue *)value isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(equalCopy + 40);
  }

  v9 = (v7 & 1) == 0;
  if (has)
  {
    if ((v7 & 1) == 0 || self->_compareOptions != *(equalCopy + 2))
    {
      goto LABEL_16;
    }

    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_fieldName hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_searchOperator;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(PDDPTypedValue *)self->_value hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_compareOptions;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(PDDPSearchCriteria *)self setFieldName:?];
    fromCopy = v7;
  }

  if ((fromCopy[10] & 2) != 0)
  {
    self->_searchOperator = fromCopy[6];
    *&self->_has |= 2u;
  }

  value = self->_value;
  v6 = *(fromCopy + 4);
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

    value = [(PDDPSearchCriteria *)self setValue:?];
  }

  fromCopy = v7;
LABEL_11:
  if (fromCopy[10])
  {
    self->_compareOptions = fromCopy[2];
    *&self->_has |= 1u;
  }

  _objc_release_x1(value, fromCopy);
}

@end