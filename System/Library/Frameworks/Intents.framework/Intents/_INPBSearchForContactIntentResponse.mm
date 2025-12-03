@interface _INPBSearchForContactIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForContactIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addMatchedContacts:(id)contacts;
- (void)encodeWithCoder:(id)coder;
- (void)setMatchedContacts:(id)contacts;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForContactIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedContacts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_matchedContacts;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchedContacts"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    matchedContacts = [(_INPBSearchForContactIntentResponse *)self matchedContacts];
    matchedContacts2 = [equalCopy matchedContacts];
    v7 = matchedContacts2;
    if ((matchedContacts != 0) != (matchedContacts2 == 0))
    {
      matchedContacts3 = [(_INPBSearchForContactIntentResponse *)self matchedContacts];
      if (!matchedContacts3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = matchedContacts3;
      matchedContacts4 = [(_INPBSearchForContactIntentResponse *)self matchedContacts];
      matchedContacts5 = [equalCopy matchedContacts];
      v12 = [matchedContacts4 isEqual:matchedContacts5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForContactIntentResponse allocWithZone:](_INPBSearchForContactIntentResponse init];
  v6 = [(NSArray *)self->_matchedContacts copyWithZone:zone];
  [(_INPBSearchForContactIntentResponse *)v5 setMatchedContacts:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForContactIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForContactIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForContactIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_matchedContacts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addMatchedContacts:(id)contacts
{
  contactsCopy = contacts;
  matchedContacts = self->_matchedContacts;
  v8 = contactsCopy;
  if (!matchedContacts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedContacts;
    self->_matchedContacts = array;

    contactsCopy = v8;
    matchedContacts = self->_matchedContacts;
  }

  [(NSArray *)matchedContacts addObject:contactsCopy];
}

- (void)setMatchedContacts:(id)contacts
{
  v4 = [contacts mutableCopy];
  matchedContacts = self->_matchedContacts;
  self->_matchedContacts = v4;

  MEMORY[0x1EEE66BB8](v4, matchedContacts);
}

@end