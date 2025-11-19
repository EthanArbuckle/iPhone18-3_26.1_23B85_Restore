@interface _INPBSearchForMessagesIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForMessagesIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addMessages:(id)a3;
- (void)addSearchResults:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setMessages:(id)a3;
- (void)setSearchResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForMessagesIntentResponse

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_messages count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = self->_messages;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"messages"];
  }

  if ([(NSArray *)self->_searchResults count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = self->_searchResults;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v20 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"searchResults"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBSearchForMessagesIntentResponse *)self messages];
  v6 = [v4 messages];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBSearchForMessagesIntentResponse *)self messages];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForMessagesIntentResponse *)self messages];
    v10 = [v4 messages];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntentResponse *)self searchResults];
  v6 = [v4 searchResults];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBSearchForMessagesIntentResponse *)self searchResults];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBSearchForMessagesIntentResponse *)self searchResults];
    v15 = [v4 searchResults];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForMessagesIntentResponse allocWithZone:](_INPBSearchForMessagesIntentResponse init];
  v6 = [(NSArray *)self->_messages copyWithZone:a3];
  [(_INPBSearchForMessagesIntentResponse *)v5 setMessages:v6];

  v7 = [(NSArray *)self->_searchResults copyWithZone:a3];
  [(_INPBSearchForMessagesIntentResponse *)v5 setSearchResults:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForMessagesIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForMessagesIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForMessagesIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_messages;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_searchResults;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addSearchResults:(id)a3
{
  v4 = a3;
  searchResults = self->_searchResults;
  v8 = v4;
  if (!searchResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchResults;
    self->_searchResults = v6;

    v4 = v8;
    searchResults = self->_searchResults;
  }

  [(NSArray *)searchResults addObject:v4];
}

- (void)setSearchResults:(id)a3
{
  v4 = [a3 mutableCopy];
  searchResults = self->_searchResults;
  self->_searchResults = v4;

  MEMORY[0x1EEE66BB8](v4, searchResults);
}

- (void)addMessages:(id)a3
{
  v4 = a3;
  messages = self->_messages;
  v8 = v4;
  if (!messages)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_messages;
    self->_messages = v6;

    v4 = v8;
    messages = self->_messages;
  }

  [(NSArray *)messages addObject:v4];
}

- (void)setMessages:(id)a3
{
  v4 = [a3 mutableCopy];
  messages = self->_messages;
  self->_messages = v4;

  MEMORY[0x1EEE66BB8](v4, messages);
}

@end