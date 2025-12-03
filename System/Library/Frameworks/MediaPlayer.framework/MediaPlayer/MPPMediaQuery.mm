@interface MPPMediaQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)entityOrderAsString:(int)string;
- (id)groupingTypeAsString:(int)string;
- (id)staticEntityTypeAsString:(int)string;
- (int)StringAsEntityOrder:(id)order;
- (int)StringAsGroupingType:(id)type;
- (int)StringAsStaticEntityType:(id)type;
- (int)entityOrder;
- (int)groupingType;
- (int)staticEntityType;
- (unint64_t)hash;
- (void)addFilterPredicates:(id)predicates;
- (void)addStaticEntityIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFilteringDisabled:(BOOL)disabled;
- (void)setHasGroupingType:(BOOL)type;
- (void)setHasIncludeNonLibraryEntities:(BOOL)entities;
- (void)setHasStaticEntityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation MPPMediaQuery

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MPPMediaQuery *)self addFilterPredicates:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 48);
  if ((v10 & 2) != 0)
  {
    self->_groupingType = *(fromCopy + 6);
    *&self->_has |= 2u;
    v10 = *(fromCopy + 48);
    if ((v10 & 8) == 0)
    {
LABEL_10:
      if ((v10 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 48) & 8) == 0)
  {
    goto LABEL_10;
  }

  self->_filteringDisabled = *(fromCopy + 44);
  *&self->_has |= 8u;
  if (*(fromCopy + 48))
  {
LABEL_11:
    self->_entityOrder = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_12:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(fromCopy + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(MPPMediaQuery *)self addStaticEntityIdentifiers:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *(fromCopy + 48);
  if ((v16 & 4) != 0)
  {
    self->_staticEntityType = *(fromCopy + 10);
    *&self->_has |= 4u;
    v16 = *(fromCopy + 48);
  }

  if ((v16 & 0x10) != 0)
  {
    self->_includeNonLibraryEntities = *(fromCopy + 45);
    *&self->_has |= 0x10u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_filterPredicates hash];
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v4 = 2654435761 * self->_groupingType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_filteringDisabled;
  if (*&self->_has)
  {
LABEL_4:
    v6 = 2654435761 * self->_entityOrder;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [(NSMutableArray *)self->_staticEntityIdentifiers hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_staticEntityType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = 2654435761 * self->_includeNonLibraryEntities;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  filterPredicates = self->_filterPredicates;
  if (filterPredicates | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)filterPredicates isEqual:?])
    {
      goto LABEL_32;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_groupingType != *(equalCopy + 6))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0)
    {
      goto LABEL_32;
    }

    if (self->_filteringDisabled)
    {
      if ((*(equalCopy + 44) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*(equalCopy + 44))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_entityOrder != *(equalCopy + 2))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_32;
  }

  staticEntityIdentifiers = self->_staticEntityIdentifiers;
  if (staticEntityIdentifiers | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)staticEntityIdentifiers isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v7 = *(equalCopy + 48);
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_staticEntityType != *(equalCopy + 10))
    {
      goto LABEL_32;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_32;
  }

  v9 = (v7 & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) != 0)
    {
      if (self->_includeNonLibraryEntities)
      {
        if ((*(equalCopy + 45) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(equalCopy + 45))
      {
        goto LABEL_32;
      }

      v9 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v9 = 0;
  }

LABEL_33:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_filterPredicates;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) copyWithZone:zone];
        [v5 addFilterPredicates:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_groupingType;
    *(v5 + 48) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 44) = self->_filteringDisabled;
  *(v5 + 48) |= 8u;
  if (*&self->_has)
  {
LABEL_11:
    *(v5 + 8) = self->_entityOrder;
    *(v5 + 48) |= 1u;
  }

LABEL_12:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_staticEntityIdentifiers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * j) copyWithZone:{zone, v21}];
        [v5 addStaticEntityIdentifiers:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((v19 & 4) != 0)
  {
    *(v5 + 40) = self->_staticEntityType;
    *(v5 + 48) |= 4u;
    v19 = self->_has;
  }

  if ((v19 & 0x10) != 0)
  {
    *(v5 + 45) = self->_includeNonLibraryEntities;
    *(v5 + 48) |= 0x10u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPMediaQuery *)self filterPredicatesCount])
  {
    [toCopy clearFilterPredicates];
    filterPredicatesCount = [(MPPMediaQuery *)self filterPredicatesCount];
    if (filterPredicatesCount)
    {
      v5 = filterPredicatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MPPMediaQuery *)self filterPredicatesAtIndex:i];
        [toCopy addFilterPredicates:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_21:
    *(toCopy + 44) = self->_filteringDisabled;
    *(toCopy + 48) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(toCopy + 6) = self->_groupingType;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (has)
  {
LABEL_8:
    *(toCopy + 2) = self->_entityOrder;
    *(toCopy + 48) |= 1u;
  }

LABEL_9:
  if ([(MPPMediaQuery *)self staticEntityIdentifiersCount])
  {
    [toCopy clearStaticEntityIdentifiers];
    staticEntityIdentifiersCount = [(MPPMediaQuery *)self staticEntityIdentifiersCount];
    if (staticEntityIdentifiersCount)
    {
      v10 = staticEntityIdentifiersCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(MPPMediaQuery *)self staticEntityIdentifiersAtIndex:j];
        [toCopy addStaticEntityIdentifiers:v12];
      }
    }
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    *(toCopy + 10) = self->_staticEntityType;
    *(toCopy + 48) |= 4u;
    v13 = self->_has;
  }

  if ((v13 & 0x10) != 0)
  {
    *(toCopy + 45) = self->_includeNonLibraryEntities;
    *(toCopy + 48) |= 0x10u;
  }
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_filterPredicates;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_10:
      if ((has & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_11:
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_staticEntityIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = self->_has;
  if ((v16 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v16 = self->_has;
  }

  if ((v16 & 0x10) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
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
        LOBYTE(v52) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v52 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v52 & 0x7F) << v6;
        if ((v52 & 0x80) == 0)
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
      if ((v13 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            v15 = objc_alloc_init(MPPMediaPredicate);
            [(MPPMediaQuery *)self addFilterPredicates:v15];
            v52 = 0;
            v53 = 0;
            if (!PBReaderPlaceMark() || !MPPMediaPredicateReadFrom(v15, from))
            {
LABEL_99:

              return 0;
            }

            goto LABEL_49;
          case 2:
            v42 = 0;
            v43 = 0;
            v44 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              LOBYTE(v52) = 0;
              v45 = [from position] + 1;
              if (v45 >= [from position] && (v46 = objc_msgSend(from, "position") + 1, v46 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v52 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v44 |= (v52 & 0x7F) << v42;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              v12 = v43++ >= 9;
              if (v12)
              {
                v35 = 0;
                goto LABEL_95;
              }
            }

            if ([from hasError])
            {
              v35 = 0;
            }

            else
            {
              v35 = v44;
            }

LABEL_95:
            v48 = 24;
            goto LABEL_96;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              LOBYTE(v52) = 0;
              v19 = [from position] + 1;
              if (v19 >= [from position] && (v20 = objc_msgSend(from, "position") + 1, v20 <= objc_msgSend(from, "length")))
              {
                data3 = [from data];
                [data3 getBytes:&v52 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v18 |= (v52 & 0x7F) << v16;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v12 = v17++ >= 9;
              if (v12)
              {
                LOBYTE(v22) = 0;
                goto LABEL_90;
              }
            }

            v22 = (v18 != 0) & ~[from hasError];
LABEL_90:
            v49 = 44;
            goto LABEL_91;
        }
      }

      else if (v14 > 5)
      {
        if (v14 == 6)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            LOBYTE(v52) = 0;
            v39 = [from position] + 1;
            if (v39 >= [from position] && (v40 = objc_msgSend(from, "position") + 1, v40 <= objc_msgSend(from, "length")))
            {
              data4 = [from data];
              [data4 getBytes:&v52 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v38 |= (v52 & 0x7F) << v36;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v12 = v37++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_86;
            }
          }

          if ([from hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v38;
          }

LABEL_86:
          v48 = 40;
          goto LABEL_96;
        }

        if (v14 == 7)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *&self->_has |= 0x10u;
          while (1)
          {
            LOBYTE(v52) = 0;
            v26 = [from position] + 1;
            if (v26 >= [from position] && (v27 = objc_msgSend(from, "position") + 1, v27 <= objc_msgSend(from, "length")))
            {
              data5 = [from data];
              [data5 getBytes:&v52 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v25 |= (v52 & 0x7F) << v23;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              LOBYTE(v22) = 0;
              goto LABEL_88;
            }
          }

          v22 = (v25 != 0) & ~[from hasError];
LABEL_88:
          v49 = 45;
LABEL_91:
          *(&self->super.super.isa + v49) = v22;
          goto LABEL_97;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v52) = 0;
            v32 = [from position] + 1;
            if (v32 >= [from position] && (v33 = objc_msgSend(from, "position") + 1, v33 <= objc_msgSend(from, "length")))
            {
              data6 = [from data];
              [data6 getBytes:&v52 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v31 |= (v52 & 0x7F) << v29;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v12 = v30++ >= 9;
            if (v12)
            {
              v35 = 0;
              goto LABEL_82;
            }
          }

          if ([from hasError])
          {
            v35 = 0;
          }

          else
          {
            v35 = v31;
          }

LABEL_82:
          v48 = 8;
LABEL_96:
          *(&self->super.super.isa + v48) = v35;
          goto LABEL_97;
        }

        if (v14 == 5)
        {
          v15 = objc_alloc_init(MEMORY[0x1E69B3400]);
          [(MPPMediaQuery *)self addStaticEntityIdentifiers:v15];
          v52 = 0;
          v53 = 0;
          if (!PBReaderPlaceMark() || !MIPMultiverseIdentifierReadFrom())
          {
            goto LABEL_99;
          }

LABEL_49:
          PBReaderRecallMark();

          goto LABEL_97;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_97:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_filterPredicates count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_filterPredicates, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = self->_filterPredicates;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"filterPredicates"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    groupingType = self->_groupingType;
    if (groupingType <= 6)
    {
      if (groupingType > 3)
      {
        if (groupingType == 4)
        {
          v13 = @"AlbumArtist";
        }

        else if (groupingType == 5)
        {
          v13 = @"Composer";
        }

        else
        {
          v13 = @"Genre";
        }

        goto LABEL_40;
      }

      if (groupingType == 1)
      {
        v13 = @"Title";
        goto LABEL_40;
      }

      if (groupingType == 2)
      {
        v13 = @"Album";
        goto LABEL_40;
      }

      if (groupingType != 3)
      {
        goto LABEL_39;
      }

      v13 = @"Artist";
    }

    else
    {
      if (groupingType > 100)
      {
        if (groupingType <= 102)
        {
          if (groupingType == 101)
          {
            v13 = @"SeasonName";
          }

          else
          {
            v13 = @"AudioBookTitle";
          }

          goto LABEL_40;
        }

        if (groupingType == 103)
        {
          v13 = @"AlbumPersistentID";
          goto LABEL_40;
        }

        if (groupingType == 104)
        {
          v13 = @"AlbumByArtist";
          goto LABEL_40;
        }

LABEL_39:
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_groupingType];
        goto LABEL_40;
      }

      if (groupingType == 7)
      {
        v13 = @"Playlist";
        goto LABEL_40;
      }

      if (groupingType == 8)
      {
        v13 = @"PodcastTitle";
        goto LABEL_40;
      }

      if (groupingType != 100)
      {
        goto LABEL_39;
      }

      v13 = @"SeriesName";
    }

LABEL_40:
    [dictionary setObject:v13 forKey:@"groupingType"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_filteringDisabled];
    [dictionary setObject:v14 forKey:@"filteringDisabled"];

    has = self->_has;
  }

  if (has)
  {
    v15 = self->_entityOrder - 1;
    if (v15 >= 3)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_entityOrder];
    }

    else
    {
      v16 = off_1E7678548[v15];
    }

    [dictionary setObject:v16 forKey:@"entityOrder"];
  }

  if ([(NSMutableArray *)self->_staticEntityIdentifiers count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_staticEntityIdentifiers, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = self->_staticEntityIdentifiers;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation2 = [*(*(&v29 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation2];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v20);
    }

    [dictionary setObject:v17 forKey:@"staticEntityIdentifiers"];
  }

  v24 = self->_has;
  if ((v24 & 4) != 0)
  {
    staticEntityType = self->_staticEntityType;
    if (staticEntityType == 1)
    {
      v26 = @"Item";
    }

    else if (staticEntityType == 2)
    {
      v26 = @"Collection";
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_staticEntityType];
    }

    [dictionary setObject:v26 forKey:@"staticEntityType"];

    v24 = self->_has;
  }

  if ((v24 & 0x10) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeNonLibraryEntities];
    [dictionary setObject:v27 forKey:@"includeNonLibraryEntities"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPMediaQuery;
  v4 = [(MPPMediaQuery *)&v8 description];
  dictionaryRepresentation = [(MPPMediaQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIncludeNonLibraryEntities:(BOOL)entities
{
  if (entities)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsStaticEntityType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"Item"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"Collection"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)staticEntityTypeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"Item";
  }

  else if (string == 2)
  {
    v4 = @"Collection";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)setHasStaticEntityType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)staticEntityType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_staticEntityType;
  }

  else
  {
    return 1;
  }
}

- (void)addStaticEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  staticEntityIdentifiers = self->_staticEntityIdentifiers;
  v8 = identifiersCopy;
  if (!staticEntityIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_staticEntityIdentifiers;
    self->_staticEntityIdentifiers = v6;

    identifiersCopy = v8;
    staticEntityIdentifiers = self->_staticEntityIdentifiers;
  }

  [(NSMutableArray *)staticEntityIdentifiers addObject:identifiersCopy];
}

- (int)StringAsEntityOrder:(id)order
{
  orderCopy = order;
  if ([orderCopy isEqualToString:@"Unknown"])
  {
    v4 = 1;
  }

  else if ([orderCopy isEqualToString:@"Physical"])
  {
    v4 = 2;
  }

  else if ([orderCopy isEqualToString:@"Sorted"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)entityOrderAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E7678548[string - 1];
  }

  return v4;
}

- (int)entityOrder
{
  if (*&self->_has)
  {
    return self->_entityOrder;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFilteringDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsGroupingType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Title"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Album"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Artist"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"AlbumArtist"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Composer"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Genre"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Playlist"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"PodcastTitle"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"SeriesName"])
  {
    v4 = 100;
  }

  else if ([typeCopy isEqualToString:@"SeasonName"])
  {
    v4 = 101;
  }

  else if ([typeCopy isEqualToString:@"AudioBookTitle"])
  {
    v4 = 102;
  }

  else if ([typeCopy isEqualToString:@"AlbumPersistentID"])
  {
    v4 = 103;
  }

  else if ([typeCopy isEqualToString:@"AlbumByArtist"])
  {
    v4 = 104;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)groupingTypeAsString:(int)string
{
  if (string <= 6)
  {
    if (string > 3)
    {
      if (string == 4)
      {
        v4 = @"AlbumArtist";
      }

      else if (string == 5)
      {
        v4 = @"Composer";
      }

      else
      {
        v4 = @"Genre";
      }

      return v4;
    }

    switch(string)
    {
      case 1:
        v4 = @"Title";

        return v4;
      case 2:
        v4 = @"Album";

        return v4;
      case 3:
        v4 = @"Artist";

        return v4;
    }

LABEL_55:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];

    return v4;
  }

  if (string <= 100)
  {
    switch(string)
    {
      case 7:
        v4 = @"Playlist";

        return v4;
      case 8:
        v4 = @"PodcastTitle";

        return v4;
      case 100:
        v4 = @"SeriesName";

        return v4;
    }

    goto LABEL_55;
  }

  if (string <= 102)
  {
    if (string == 101)
    {
      v4 = @"SeasonName";
    }

    else
    {
      v4 = @"AudioBookTitle";
    }

    return v4;
  }

  if (string != 103)
  {
    if (string == 104)
    {
      v4 = @"AlbumByArtist";

      return v4;
    }

    goto LABEL_55;
  }

  v4 = @"AlbumPersistentID";

  return v4;
}

- (void)setHasGroupingType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)groupingType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_groupingType;
  }

  else
  {
    return 1;
  }
}

- (void)addFilterPredicates:(id)predicates
{
  predicatesCopy = predicates;
  filterPredicates = self->_filterPredicates;
  v8 = predicatesCopy;
  if (!filterPredicates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_filterPredicates;
    self->_filterPredicates = v6;

    predicatesCopy = v8;
    filterPredicates = self->_filterPredicates;
  }

  [(NSMutableArray *)filterPredicates addObject:predicatesCopy];
}

@end