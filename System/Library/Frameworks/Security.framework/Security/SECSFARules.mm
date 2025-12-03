@interface SECSFARules
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConfigVersion:(id)version;
- (int)configVersion;
- (unint64_t)hash;
- (void)addEventFilter:(id)filter;
- (void)addEventRules:(id)rules;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SECSFARules

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SECSFARules *)self addEventRules:*(*(&v22 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  allowedBuilds = self->_allowedBuilds;
  v11 = *(fromCopy + 1);
  if (allowedBuilds)
  {
    if (v11)
    {
      [(SECSFAVersionMatch *)allowedBuilds mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SECSFARules *)self setAllowedBuilds:?];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(fromCopy + 3);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SECSFARules *)self addEventFilter:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if (*(fromCopy + 40))
  {
    self->_configVersion = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_eventRules hash];
  v4 = [(SECSFAVersionMatch *)self->_allowedBuilds hash];
  v5 = [(NSMutableArray *)self->_eventFilters hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_configVersion;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  eventRules = self->_eventRules;
  if (eventRules | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)eventRules isEqual:?])
    {
      goto LABEL_12;
    }
  }

  allowedBuilds = self->_allowedBuilds;
  if (allowedBuilds | *(equalCopy + 1))
  {
    if (![(SECSFAVersionMatch *)allowedBuilds isEqual:?])
    {
      goto LABEL_12;
    }
  }

  eventFilters = self->_eventFilters;
  if (eventFilters | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)eventFilters isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) != 0 && self->_configVersion == *(equalCopy + 4))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_eventRules;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v26 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addEventRules:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = [(SECSFAVersionMatch *)self->_allowedBuilds copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = self->_eventFilters;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{zone, v22}];
        [v5 addEventFilter:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_configVersion;
    *(v5 + 40) |= 1u;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SECSFARules *)self eventRulesCount])
  {
    [toCopy clearEventRules];
    eventRulesCount = [(SECSFARules *)self eventRulesCount];
    if (eventRulesCount)
    {
      v5 = eventRulesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SECSFARules *)self eventRulesAtIndex:i];
        [toCopy addEventRules:v7];
      }
    }
  }

  if (self->_allowedBuilds)
  {
    [toCopy setAllowedBuilds:?];
  }

  if ([(SECSFARules *)self eventFiltersCount])
  {
    [toCopy clearEventFilters];
    eventFiltersCount = [(SECSFARules *)self eventFiltersCount];
    if (eventFiltersCount)
    {
      v9 = eventFiltersCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SECSFARules *)self eventFilterAtIndex:j];
        [toCopy addEventFilter:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 4) = self->_configVersion;
    *(toCopy + 40) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_eventRules;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  if (self->_allowedBuilds)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_eventFilters;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v13);
  }

  if (*&self->_has)
  {
    configVersion = self->_configVersion;
    PBDataWriterWriteInt32Field();
  }

  v18 = *MEMORY[0x1E69E9840];
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
      if ((v13 >> 3) > 3)
      {
        if (v14 == 4)
        {
          v15 = objc_alloc_init(SECSFAEventFilter);
          [(SECSFARules *)self addEventFilter:v15];
          v25 = 0xAAAAAAAAAAAAAAAALL;
          v26 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !SECSFAEventFilterReadFrom(v15, from))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v14 == 5)
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
              v22 = 0;
              goto LABEL_45;
            }
          }

          if ([from hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_45:
          self->_configVersion = v22;
          goto LABEL_46;
        }
      }

      else
      {
        if (v14 == 2)
        {
          v15 = objc_alloc_init(SECSFAEventRule);
          [(SECSFARules *)self addEventRules:v15];
          v25 = 0xAAAAAAAAAAAAAAAALL;
          v26 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !SECSFAEventRuleReadFrom(v15, from))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        if (v14 == 3)
        {
          v15 = objc_alloc_init(SECSFAVersionMatch);
          objc_storeStrong(&self->_allowedBuilds, v15);
          v25 = 0xAAAAAAAAAAAAAAAALL;
          v26 = 0xAAAAAAAAAAAAAAAALL;
          if (!PBReaderPlaceMark() || !SECSFAVersionMatchReadFrom(v15, from))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_eventRules count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_eventRules, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_eventRules;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"eventRules"];
  }

  allowedBuilds = self->_allowedBuilds;
  if (allowedBuilds)
  {
    dictionaryRepresentation2 = [(SECSFAVersionMatch *)allowedBuilds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"allowedBuilds"];
  }

  if ([(NSMutableArray *)self->_eventFilters count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_eventFilters, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = self->_eventFilters;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"eventFilter"];
  }

  if (*&self->_has)
  {
    configVersion = self->_configVersion;
    if (configVersion == 1)
    {
      v21 = @"version1";
    }

    else if (configVersion == 2)
    {
      v21 = @"version2";
    }

    else
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_configVersion];
    }

    [dictionary setObject:v21 forKey:@"configVersion"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFARules;
  v4 = [(SECSFARules *)&v8 description];
  dictionaryRepresentation = [(SECSFARules *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsConfigVersion:(id)version
{
  versionCopy = version;
  v4 = 1;
  if (([versionCopy isEqualToString:@"version1"] & 1) == 0)
  {
    if ([versionCopy isEqualToString:@"version2"])
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

- (int)configVersion
{
  if (*&self->_has)
  {
    return self->_configVersion;
  }

  else
  {
    return 1;
  }
}

- (void)addEventFilter:(id)filter
{
  filterCopy = filter;
  eventFilters = self->_eventFilters;
  v8 = filterCopy;
  if (!eventFilters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_eventFilters;
    self->_eventFilters = v6;

    filterCopy = v8;
    eventFilters = self->_eventFilters;
  }

  [(NSMutableArray *)eventFilters addObject:filterCopy];
}

- (void)addEventRules:(id)rules
{
  rulesCopy = rules;
  eventRules = self->_eventRules;
  v8 = rulesCopy;
  if (!eventRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_eventRules;
    self->_eventRules = v6;

    rulesCopy = v8;
    eventRules = self->_eventRules;
  }

  [(NSMutableArray *)eventRules addObject:rulesCopy];
}

@end