@interface PDDPEESearchRequestZone
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompareOptions:(id)a3;
- (int)compareOptions;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPEESearchRequestZone

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
  v7.super_class = PDDPEESearchRequestZone;
  v3 = [(PDDPEESearchRequestZone *)&v7 description];
  v4 = [(PDDPEESearchRequestZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  requestZone = self->_requestZone;
  if (requestZone)
  {
    v5 = [(PDDPEERequestZone *)requestZone dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_zone"];
  }

  filterQuery = self->_filterQuery;
  if (filterQuery)
  {
    v7 = [(PDDPSearchQuery *)filterQuery dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"filter_query"];
  }

  keyword = self->_keyword;
  if (keyword)
  {
    [v3 setObject:keyword forKey:@"keyword"];
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
          v10 = @"SC_OPTIONS_DIACRITIC_INSENSITIVE";
          goto LABEL_28;
        }

        if (compareOptions == 256)
        {
          v10 = @"SC_OPTIONS_WIDTH_INSENSITIVE";
          goto LABEL_28;
        }
      }

      else
      {
        if (compareOptions == 8)
        {
          v10 = @"SC_OPTIONS_ANCHORED";
          goto LABEL_28;
        }

        if (compareOptions == 64)
        {
          v10 = @"SC_OPTIONS_NUMERIC";
          goto LABEL_28;
        }
      }
    }

    else if (compareOptions > 1)
    {
      if (compareOptions == 2)
      {
        v10 = @"SC_OPTIONS_LITERAL";
        goto LABEL_28;
      }

      if (compareOptions == 4)
      {
        v10 = @"SC_OPTIONS_BACKWARDS";
        goto LABEL_28;
      }
    }

    else
    {
      if (!compareOptions)
      {
        v10 = @"SC_OPTIONS_NONE";
        goto LABEL_28;
      }

      if (compareOptions == 1)
      {
        v10 = @"SC_OPTIONS_CASE_INSENSITIVE";
LABEL_28:
        [v3 setObject:v10 forKey:@"compareOptions"];

        goto LABEL_29;
      }
    }

    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_compareOptions];
    goto LABEL_28;
  }

LABEL_29:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestZone)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_filterQuery)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_keyword)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    compareOptions = self->_compareOptions;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestZone)
  {
    [v4 setRequestZone:?];
    v4 = v5;
  }

  if (self->_filterQuery)
  {
    [v5 setFilterQuery:?];
    v4 = v5;
  }

  if (self->_keyword)
  {
    [v5 setKeyword:?];
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
  v6 = [(PDDPEERequestZone *)self->_requestZone copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PDDPSearchQuery *)self->_filterQuery copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_keyword copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

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
    goto LABEL_12;
  }

  requestZone = self->_requestZone;
  if (requestZone | *(v4 + 4))
  {
    if (![(PDDPEERequestZone *)requestZone isEqual:?])
    {
      goto LABEL_12;
    }
  }

  filterQuery = self->_filterQuery;
  if (filterQuery | *(v4 + 2))
  {
    if (![(PDDPSearchQuery *)filterQuery isEqual:?])
    {
      goto LABEL_12;
    }
  }

  keyword = self->_keyword;
  if (keyword | *(v4 + 3))
  {
    if (![(NSString *)keyword isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_compareOptions == *(v4 + 2))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PDDPEERequestZone *)self->_requestZone hash];
  v4 = [(PDDPSearchQuery *)self->_filterQuery hash];
  v5 = [(NSString *)self->_keyword hash];
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
  requestZone = self->_requestZone;
  v6 = *(v4 + 4);
  v9 = v4;
  if (requestZone)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDDPEERequestZone *)requestZone mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDDPEESearchRequestZone *)self setRequestZone:?];
  }

  v4 = v9;
LABEL_7:
  filterQuery = self->_filterQuery;
  v8 = *(v4 + 2);
  if (filterQuery)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDDPSearchQuery *)filterQuery mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(PDDPEESearchRequestZone *)self setFilterQuery:?];
  }

  v4 = v9;
LABEL_13:
  if (*(v4 + 3))
  {
    [(PDDPEESearchRequestZone *)self setKeyword:?];
    v4 = v9;
  }

  if (*(v4 + 40))
  {
    self->_compareOptions = *(v4 + 2);
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end