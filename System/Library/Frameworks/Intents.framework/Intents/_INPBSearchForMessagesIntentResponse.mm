@interface _INPBSearchForMessagesIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForMessagesIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addMessages:(id)messages;
- (void)addSearchResults:(id)results;
- (void)encodeWithCoder:(id)coder;
- (void)setMessages:(id)messages;
- (void)setSearchResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForMessagesIntentResponse

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_messages count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"messages"];
  }

  if ([(NSArray *)self->_searchResults count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"searchResults"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  messages = [(_INPBSearchForMessagesIntentResponse *)self messages];
  messages2 = [equalCopy messages];
  if ((messages != 0) == (messages2 == 0))
  {
    goto LABEL_11;
  }

  messages3 = [(_INPBSearchForMessagesIntentResponse *)self messages];
  if (messages3)
  {
    v8 = messages3;
    messages4 = [(_INPBSearchForMessagesIntentResponse *)self messages];
    messages5 = [equalCopy messages];
    v11 = [messages4 isEqual:messages5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  messages = [(_INPBSearchForMessagesIntentResponse *)self searchResults];
  messages2 = [equalCopy searchResults];
  if ((messages != 0) != (messages2 == 0))
  {
    searchResults = [(_INPBSearchForMessagesIntentResponse *)self searchResults];
    if (!searchResults)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = searchResults;
    searchResults2 = [(_INPBSearchForMessagesIntentResponse *)self searchResults];
    searchResults3 = [equalCopy searchResults];
    v16 = [searchResults2 isEqual:searchResults3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForMessagesIntentResponse allocWithZone:](_INPBSearchForMessagesIntentResponse init];
  v6 = [(NSArray *)self->_messages copyWithZone:zone];
  [(_INPBSearchForMessagesIntentResponse *)v5 setMessages:v6];

  v7 = [(NSArray *)self->_searchResults copyWithZone:zone];
  [(_INPBSearchForMessagesIntentResponse *)v5 setSearchResults:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForMessagesIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForMessagesIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForMessagesIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)addSearchResults:(id)results
{
  resultsCopy = results;
  searchResults = self->_searchResults;
  v8 = resultsCopy;
  if (!searchResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_searchResults;
    self->_searchResults = array;

    resultsCopy = v8;
    searchResults = self->_searchResults;
  }

  [(NSArray *)searchResults addObject:resultsCopy];
}

- (void)setSearchResults:(id)results
{
  v4 = [results mutableCopy];
  searchResults = self->_searchResults;
  self->_searchResults = v4;

  MEMORY[0x1EEE66BB8](v4, searchResults);
}

- (void)addMessages:(id)messages
{
  messagesCopy = messages;
  messages = self->_messages;
  v8 = messagesCopy;
  if (!messages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_messages;
    self->_messages = array;

    messagesCopy = v8;
    messages = self->_messages;
  }

  [(NSArray *)messages addObject:messagesCopy];
}

- (void)setMessages:(id)messages
{
  v4 = [messages mutableCopy];
  messages = self->_messages;
  self->_messages = v4;

  MEMORY[0x1EEE66BB8](v4, messages);
}

@end