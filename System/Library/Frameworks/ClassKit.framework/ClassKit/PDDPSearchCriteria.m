@interface PDDPSearchCriteria
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompareOptions:(id)a3;
- (int)StringAsSearchOperator:(id)a3;
- (int)compareOptions;
- (int)searchOperator;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSearchOperator:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasSearchOperator:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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

- (int)StringAsCompareOptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SC_OPTIONS_NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_CASE_INSENSITIVE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_LITERAL"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_BACKWARDS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_ANCHORED"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_NUMERIC"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_DIACRITIC_INSENSITIVE"])
  {
    v4 = 128;
  }

  else if ([v3 isEqualToString:@"SC_OPTIONS_WIDTH_INSENSITIVE"])
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
  v4 = [(PDDPSearchCriteria *)self dictionaryRepresentation];
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
    v9 = [(PDDPTypedValue *)value dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"value"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    searchOperator = self->_searchOperator;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (*&self->_has)
  {
    compareOptions = self->_compareOptions;
    PBDataWriterWriteInt32Field();
    v4 = v7;
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

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 6) = self->_searchOperator;
    *(v4 + 40) |= 2u;
  }

  if (self->_value)
  {
    [v5 setValue:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_compareOptions;
    *(v4 + 40) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_fieldName copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 6) = self->_searchOperator;
    *(v5 + 40) |= 2u;
  }

  v8 = [(PDDPTypedValue *)self->_value copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_compareOptions;
    *(v5 + 40) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  fieldName = self->_fieldName;
  if (fieldName | *(v4 + 2))
  {
    if (![(NSString *)fieldName isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v7 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_searchOperator != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  value = self->_value;
  if (value | *(v4 + 4))
  {
    if (![(PDDPTypedValue *)value isEqual:?])
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    has = self->_has;
    v7 = *(v4 + 40);
  }

  v9 = (v7 & 1) == 0;
  if (has)
  {
    if ((v7 & 1) == 0 || self->_compareOptions != *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(PDDPSearchCriteria *)self setFieldName:?];
    v4 = v7;
  }

  if ((v4[10] & 2) != 0)
  {
    self->_searchOperator = v4[6];
    *&self->_has |= 2u;
  }

  value = self->_value;
  v6 = *(v4 + 4);
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

  v4 = v7;
LABEL_11:
  if (v4[10])
  {
    self->_compareOptions = v4[2];
    *&self->_has |= 1u;
  }

  _objc_release_x1(value, v4);
}

@end