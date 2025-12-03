@interface PDDPSchoolworkSearchQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)addContents:(id)contents;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPSchoolworkSearchQuery

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
  if ([typeCopy isEqualToString:@"UNKNOWN_SEARCH_QUERY_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"AND"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"OR"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"CRITERIA"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addContents:(id)contents
{
  contentsCopy = contents;
  contents = self->_contents;
  v8 = contentsCopy;
  if (!contents)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_contents;
    self->_contents = v6;

    contentsCopy = v8;
    contents = self->_contents;
  }

  [(NSMutableArray *)contents addObject:contentsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPSchoolworkSearchQuery;
  v3 = [(PDDPSchoolworkSearchQuery *)&v7 description];
  dictionaryRepresentation = [(PDDPSchoolworkSearchQuery *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    type = self->_type;
    if (type >= 4)
    {
      v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1002043B8[type];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  if ([(NSMutableArray *)self->_contents count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_contents, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = self->_contents;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"contents"];
  }

  criteria = self->_criteria;
  if (criteria)
  {
    dictionaryRepresentation2 = [(PDDPSchoolworkSearchCriteria *)criteria dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"criteria"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_contents;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (self->_criteria)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_type;
    *(toCopy + 28) |= 1u;
  }

  v9 = toCopy;
  if ([(PDDPSchoolworkSearchQuery *)self contentsCount])
  {
    [v9 clearContents];
    contentsCount = [(PDDPSchoolworkSearchQuery *)self contentsCount];
    if (contentsCount)
    {
      v6 = contentsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(PDDPSchoolworkSearchQuery *)self contentsAtIndex:i];
        [v9 addContents:v8];
      }
    }
  }

  if (self->_criteria)
  {
    [v9 setCriteria:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 6) = self->_type;
    *(v5 + 28) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_contents;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) copyWithZone:{zone, v16}];
        [v6 addContents:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v13 = [(PDDPSchoolworkSearchCriteria *)self->_criteria copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_type != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  contents = self->_contents;
  if (contents | *(equalCopy + 1) && ![(NSMutableArray *)contents isEqual:?])
  {
    goto LABEL_11;
  }

  criteria = self->_criteria;
  if (criteria | *(equalCopy + 2))
  {
    v8 = [(PDDPSchoolworkSearchCriteria *)criteria isEqual:?];
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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_contents hash]^ v3;
  return v4 ^ [(PDDPSchoolworkSearchCriteria *)self->_criteria hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_type = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(PDDPSchoolworkSearchQuery *)self addContents:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  criteria = self->_criteria;
  v12 = v5[2];
  if (criteria)
  {
    if (v12)
    {
      [(PDDPSchoolworkSearchCriteria *)criteria mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PDDPSchoolworkSearchQuery *)self setCriteria:?];
  }
}

@end