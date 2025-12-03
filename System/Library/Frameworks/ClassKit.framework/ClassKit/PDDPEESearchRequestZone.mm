@interface PDDPEESearchRequestZone
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompareOptions:(id)options;
- (int)compareOptions;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  v7.super_class = PDDPEESearchRequestZone;
  v3 = [(PDDPEESearchRequestZone *)&v7 description];
  dictionaryRepresentation = [(PDDPEESearchRequestZone *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  requestZone = self->_requestZone;
  if (requestZone)
  {
    dictionaryRepresentation = [(PDDPEERequestZone *)requestZone dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"request_zone"];
  }

  filterQuery = self->_filterQuery;
  if (filterQuery)
  {
    dictionaryRepresentation2 = [(PDDPSearchQuery *)filterQuery dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"filter_query"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestZone)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_filterQuery)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_keyword)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    compareOptions = self->_compareOptions;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestZone)
  {
    [toCopy setRequestZone:?];
    toCopy = v5;
  }

  if (self->_filterQuery)
  {
    [v5 setFilterQuery:?];
    toCopy = v5;
  }

  if (self->_keyword)
  {
    [v5 setKeyword:?];
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
  v6 = [(PDDPEERequestZone *)self->_requestZone copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(PDDPSearchQuery *)self->_filterQuery copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_keyword copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

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
    goto LABEL_12;
  }

  requestZone = self->_requestZone;
  if (requestZone | *(equalCopy + 4))
  {
    if (![(PDDPEERequestZone *)requestZone isEqual:?])
    {
      goto LABEL_12;
    }
  }

  filterQuery = self->_filterQuery;
  if (filterQuery | *(equalCopy + 2))
  {
    if (![(PDDPSearchQuery *)filterQuery isEqual:?])
    {
      goto LABEL_12;
    }
  }

  keyword = self->_keyword;
  if (keyword | *(equalCopy + 3))
  {
    if (![(NSString *)keyword isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_compareOptions == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  requestZone = self->_requestZone;
  v6 = *(fromCopy + 4);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  filterQuery = self->_filterQuery;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 3))
  {
    [(PDDPEESearchRequestZone *)self setKeyword:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 40))
  {
    self->_compareOptions = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  _objc_release_x1();
}

@end