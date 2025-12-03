@interface PDDPQueryRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPQueryRequest

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPQueryRequest;
  v3 = [(PDDPQueryRequest *)&v7 description];
  dictionaryRepresentation = [(PDDPQueryRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  queryZone = self->_queryZone;
  if (queryZone)
  {
    dictionaryRepresentation = [(PDDPSchoolworkQueryZone *)queryZone dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"query_zone"];
  }

  filterQuery = self->_filterQuery;
  if (filterQuery)
  {
    dictionaryRepresentation2 = [(PDDPSchoolworkSearchQuery *)filterQuery dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"filter_query"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithBool:self->_includeChildren];
    [v3 setObject:v8 forKey:@"include_children"];
  }

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v25 & 0x7F) << v6;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) == 3)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v25) = 0;
          v19 = [from position] + 1;
          if (v19 >= [from position] && (v20 = objc_msgSend(from, "position") + 1, v20 <= objc_msgSend(from, "length")))
          {
            data2 = [from data];
            [data2 getBytes:&v25 range:{objc_msgSend(from, "position"), 1}];

            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
          }

          v18 |= (v25 & 0x7F) << v16;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            LOBYTE(v22) = 0;
            goto LABEL_38;
          }
        }

        v22 = (v18 != 0) & ~[from hasError];
LABEL_38:
        self->_includeChildren = v22;
        goto LABEL_39;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = objc_alloc_init(PDDPSchoolworkQueryZone);
        objc_storeStrong(&self->_queryZone, v15);
        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark() || !sub_1000B18A8(v15, from))
        {
          goto LABEL_41;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_39;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PDDPSchoolworkSearchQuery);
    objc_storeStrong(&self->_filterQuery, v15);
    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark() || !sub_1000AEE3C(v15, from))
    {
LABEL_41:

      return 0;
    }

    goto LABEL_25;
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_queryZone)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_filterQuery)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    includeChildren = self->_includeChildren;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_queryZone)
  {
    [toCopy setQueryZone:?];
    toCopy = v5;
  }

  if (self->_filterQuery)
  {
    [v5 setFilterQuery:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_includeChildren;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPSchoolworkQueryZone *)self->_queryZone copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(PDDPSchoolworkSearchQuery *)self->_filterQuery copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_includeChildren;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  queryZone = self->_queryZone;
  if (queryZone | *(equalCopy + 2))
  {
    if (![(PDDPSchoolworkQueryZone *)queryZone isEqual:?])
    {
      goto LABEL_8;
    }
  }

  filterQuery = self->_filterQuery;
  if (filterQuery | *(equalCopy + 1))
  {
    if (![(PDDPSchoolworkSearchQuery *)filterQuery isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_includeChildren)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PDDPSchoolworkQueryZone *)self->_queryZone hash];
  v4 = [(PDDPSchoolworkSearchQuery *)self->_filterQuery hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_includeChildren;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  queryZone = self->_queryZone;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
  if (queryZone)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDDPSchoolworkQueryZone *)queryZone mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PDDPQueryRequest *)self setQueryZone:?];
  }

  fromCopy = v9;
LABEL_7:
  filterQuery = self->_filterQuery;
  v8 = *(fromCopy + 1);
  if (filterQuery)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    filterQuery = [(PDDPSchoolworkSearchQuery *)filterQuery mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    filterQuery = [(PDDPQueryRequest *)self setFilterQuery:?];
  }

  fromCopy = v9;
LABEL_13:
  if (*(fromCopy + 28))
  {
    self->_includeChildren = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  _objc_release_x1(filterQuery, fromCopy);
}

@end