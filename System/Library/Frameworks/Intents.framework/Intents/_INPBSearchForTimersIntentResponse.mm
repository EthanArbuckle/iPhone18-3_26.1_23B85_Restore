@interface _INPBSearchForTimersIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForTimersIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchedTimers:(id)timers;
- (void)addTimers:(id)timers;
- (void)addUnmatchedTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
- (void)setMatchedTimers:(id)timers;
- (void)setTimers:(id)timers;
- (void)setUnmatchedTimers:(id)timers;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForTimersIntentResponse

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedTimers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = self->_matchedTimers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchedTimers"];
  }

  if ([(NSArray *)self->_timers count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = self->_timers;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"timers"];
  }

  if ([(NSArray *)self->_unmatchedTimers count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = self->_unmatchedTimers;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v27 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"unmatchedTimers"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_matchedTimers hash];
  v4 = [(NSArray *)self->_timers hash]^ v3;
  return v4 ^ [(NSArray *)self->_unmatchedTimers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  matchedTimers = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
  matchedTimers2 = [equalCopy matchedTimers];
  if ((matchedTimers != 0) == (matchedTimers2 == 0))
  {
    goto LABEL_16;
  }

  matchedTimers3 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
  if (matchedTimers3)
  {
    v8 = matchedTimers3;
    matchedTimers4 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
    matchedTimers5 = [equalCopy matchedTimers];
    v11 = [matchedTimers4 isEqual:matchedTimers5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  matchedTimers = [(_INPBSearchForTimersIntentResponse *)self timers];
  matchedTimers2 = [equalCopy timers];
  if ((matchedTimers != 0) == (matchedTimers2 == 0))
  {
    goto LABEL_16;
  }

  timers = [(_INPBSearchForTimersIntentResponse *)self timers];
  if (timers)
  {
    v13 = timers;
    timers2 = [(_INPBSearchForTimersIntentResponse *)self timers];
    timers3 = [equalCopy timers];
    v16 = [timers2 isEqual:timers3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  matchedTimers = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
  matchedTimers2 = [equalCopy unmatchedTimers];
  if ((matchedTimers != 0) != (matchedTimers2 == 0))
  {
    unmatchedTimers = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
    if (!unmatchedTimers)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = unmatchedTimers;
    unmatchedTimers2 = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
    unmatchedTimers3 = [equalCopy unmatchedTimers];
    v21 = [unmatchedTimers2 isEqual:unmatchedTimers3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForTimersIntentResponse allocWithZone:](_INPBSearchForTimersIntentResponse init];
  v6 = [(NSArray *)self->_matchedTimers copyWithZone:zone];
  [(_INPBSearchForTimersIntentResponse *)v5 setMatchedTimers:v6];

  v7 = [(NSArray *)self->_timers copyWithZone:zone];
  [(_INPBSearchForTimersIntentResponse *)v5 setTimers:v7];

  v8 = [(NSArray *)self->_unmatchedTimers copyWithZone:zone];
  [(_INPBSearchForTimersIntentResponse *)v5 setUnmatchedTimers:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForTimersIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForTimersIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForTimersIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_matchedTimers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_timers;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_unmatchedTimers;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addUnmatchedTimers:(id)timers
{
  timersCopy = timers;
  unmatchedTimers = self->_unmatchedTimers;
  v8 = timersCopy;
  if (!unmatchedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_unmatchedTimers;
    self->_unmatchedTimers = array;

    timersCopy = v8;
    unmatchedTimers = self->_unmatchedTimers;
  }

  [(NSArray *)unmatchedTimers addObject:timersCopy];
}

- (void)setUnmatchedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  unmatchedTimers = self->_unmatchedTimers;
  self->_unmatchedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, unmatchedTimers);
}

- (void)addTimers:(id)timers
{
  timersCopy = timers;
  timers = self->_timers;
  v8 = timersCopy;
  if (!timers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_timers;
    self->_timers = array;

    timersCopy = v8;
    timers = self->_timers;
  }

  [(NSArray *)timers addObject:timersCopy];
}

- (void)setTimers:(id)timers
{
  v4 = [timers mutableCopy];
  timers = self->_timers;
  self->_timers = v4;

  MEMORY[0x1EEE66BB8](v4, timers);
}

- (void)addMatchedTimers:(id)timers
{
  timersCopy = timers;
  matchedTimers = self->_matchedTimers;
  v8 = timersCopy;
  if (!matchedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedTimers;
    self->_matchedTimers = array;

    timersCopy = v8;
    matchedTimers = self->_matchedTimers;
  }

  [(NSArray *)matchedTimers addObject:timersCopy];
}

- (void)setMatchedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  matchedTimers = self->_matchedTimers;
  self->_matchedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, matchedTimers);
}

@end