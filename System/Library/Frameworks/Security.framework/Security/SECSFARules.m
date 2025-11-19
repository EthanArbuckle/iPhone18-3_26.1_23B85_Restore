@interface SECSFARules
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConfigVersion:(id)a3;
- (int)configVersion;
- (unint64_t)hash;
- (void)addEventFilter:(id)a3;
- (void)addEventRules:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFARules

- (void)mergeFrom:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = *(v4 + 4);
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
  v11 = *(v4 + 1);
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
  v12 = *(v4 + 3);
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

  if (*(v4 + 40))
  {
    self->_configVersion = *(v4 + 4);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  eventRules = self->_eventRules;
  if (eventRules | *(v4 + 4))
  {
    if (![(NSMutableArray *)eventRules isEqual:?])
    {
      goto LABEL_12;
    }
  }

  allowedBuilds = self->_allowedBuilds;
  if (allowedBuilds | *(v4 + 1))
  {
    if (![(SECSFAVersionMatch *)allowedBuilds isEqual:?])
    {
      goto LABEL_12;
    }
  }

  eventFilters = self->_eventFilters;
  if (eventFilters | *(v4 + 3))
  {
    if (![(NSMutableArray *)eventFilters isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 40) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) != 0 && self->_configVersion == *(v4 + 4))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v11 = [*(*(&v26 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addEventRules:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v12 = [(SECSFAVersionMatch *)self->_allowedBuilds copyWithZone:a3];
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

        v19 = [*(*(&v22 + 1) + 8 * v18) copyWithZone:{a3, v22}];
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

- (void)copyTo:(id)a3
{
  v12 = a3;
  if ([(SECSFARules *)self eventRulesCount])
  {
    [v12 clearEventRules];
    v4 = [(SECSFARules *)self eventRulesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SECSFARules *)self eventRulesAtIndex:i];
        [v12 addEventRules:v7];
      }
    }
  }

  if (self->_allowedBuilds)
  {
    [v12 setAllowedBuilds:?];
  }

  if ([(SECSFARules *)self eventFiltersCount])
  {
    [v12 clearEventFilters];
    v8 = [(SECSFARules *)self eventFiltersCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(SECSFARules *)self eventFilterAtIndex:j];
        [v12 addEventFilter:v11];
      }
    }
  }

  if (*&self->_has)
  {
    *(v12 + 4) = self->_configVersion;
    *(v12 + 40) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
          if (!PBReaderPlaceMark() || !SECSFAEventFilterReadFrom(v15, a3))
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
            v19 = [a3 position] + 1;
            if (v19 >= [a3 position] && (v20 = objc_msgSend(a3, "position") + 1, v20 <= objc_msgSend(a3, "length")))
            {
              v21 = [a3 data];
              [v21 getBytes:&v25 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
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

          if ([a3 hasError])
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
          if (!PBReaderPlaceMark() || !SECSFAEventRuleReadFrom(v15, a3))
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
          if (!PBReaderPlaceMark() || !SECSFAVersionMatchReadFrom(v15, a3))
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
      v23 = [a3 position];
    }

    while (v23 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

          v10 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"eventRules"];
  }

  allowedBuilds = self->_allowedBuilds;
  if (allowedBuilds)
  {
    v12 = [(SECSFAVersionMatch *)allowedBuilds dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"allowedBuilds"];
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

          v19 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"eventFilter"];
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

    [v3 setObject:v21 forKey:@"configVersion"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFARules;
  v4 = [(SECSFARules *)&v8 description];
  v5 = [(SECSFARules *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsConfigVersion:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"version1"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"version2"])
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

- (void)addEventFilter:(id)a3
{
  v4 = a3;
  eventFilters = self->_eventFilters;
  v8 = v4;
  if (!eventFilters)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_eventFilters;
    self->_eventFilters = v6;

    v4 = v8;
    eventFilters = self->_eventFilters;
  }

  [(NSMutableArray *)eventFilters addObject:v4];
}

- (void)addEventRules:(id)a3
{
  v4 = a3;
  eventRules = self->_eventRules;
  v8 = v4;
  if (!eventRules)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_eventRules;
    self->_eventRules = v6;

    v4 = v8;
    eventRules = self->_eventRules;
  }

  [(NSMutableArray *)eventRules addObject:v4];
}

@end