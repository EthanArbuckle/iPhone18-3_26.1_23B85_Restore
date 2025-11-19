@interface _INPBSearchForTimersIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForTimersIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchedTimers:(id)a3;
- (void)addTimers:(id)a3;
- (void)addUnmatchedTimers:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMatchedTimers:(id)a3;
- (void)setTimers:(id)a3;
- (void)setUnmatchedTimers:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForTimersIntentResponse

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedTimers count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"matchedTimers"];
  }

  if ([(NSArray *)self->_timers count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
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

          v17 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"timers"];
  }

  if ([(NSArray *)self->_unmatchedTimers count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
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

          v24 = [*(*(&v27 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:v24];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"unmatchedTimers"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_matchedTimers hash];
  v4 = [(NSArray *)self->_timers hash]^ v3;
  return v4 ^ [(NSArray *)self->_unmatchedTimers hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
  v6 = [v4 matchedTimers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
    v10 = [v4 matchedTimers];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForTimersIntentResponse *)self timers];
  v6 = [v4 timers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBSearchForTimersIntentResponse *)self timers];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSearchForTimersIntentResponse *)self timers];
    v15 = [v4 timers];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
  v6 = [v4 unmatchedTimers];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
    v20 = [v4 unmatchedTimers];
    v21 = [v19 isEqual:v20];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForTimersIntentResponse allocWithZone:](_INPBSearchForTimersIntentResponse init];
  v6 = [(NSArray *)self->_matchedTimers copyWithZone:a3];
  [(_INPBSearchForTimersIntentResponse *)v5 setMatchedTimers:v6];

  v7 = [(NSArray *)self->_timers copyWithZone:a3];
  [(_INPBSearchForTimersIntentResponse *)v5 setTimers:v7];

  v8 = [(NSArray *)self->_unmatchedTimers copyWithZone:a3];
  [(_INPBSearchForTimersIntentResponse *)v5 setUnmatchedTimers:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForTimersIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForTimersIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForTimersIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addUnmatchedTimers:(id)a3
{
  v4 = a3;
  unmatchedTimers = self->_unmatchedTimers;
  v8 = v4;
  if (!unmatchedTimers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_unmatchedTimers;
    self->_unmatchedTimers = v6;

    v4 = v8;
    unmatchedTimers = self->_unmatchedTimers;
  }

  [(NSArray *)unmatchedTimers addObject:v4];
}

- (void)setUnmatchedTimers:(id)a3
{
  v4 = [a3 mutableCopy];
  unmatchedTimers = self->_unmatchedTimers;
  self->_unmatchedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, unmatchedTimers);
}

- (void)addTimers:(id)a3
{
  v4 = a3;
  timers = self->_timers;
  v8 = v4;
  if (!timers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_timers;
    self->_timers = v6;

    v4 = v8;
    timers = self->_timers;
  }

  [(NSArray *)timers addObject:v4];
}

- (void)setTimers:(id)a3
{
  v4 = [a3 mutableCopy];
  timers = self->_timers;
  self->_timers = v4;

  MEMORY[0x1EEE66BB8](v4, timers);
}

- (void)addMatchedTimers:(id)a3
{
  v4 = a3;
  matchedTimers = self->_matchedTimers;
  v8 = v4;
  if (!matchedTimers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedTimers;
    self->_matchedTimers = v6;

    v4 = v8;
    matchedTimers = self->_matchedTimers;
  }

  [(NSArray *)matchedTimers addObject:v4];
}

- (void)setMatchedTimers:(id)a3
{
  v4 = [a3 mutableCopy];
  matchedTimers = self->_matchedTimers;
  self->_matchedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, matchedTimers);
}

@end