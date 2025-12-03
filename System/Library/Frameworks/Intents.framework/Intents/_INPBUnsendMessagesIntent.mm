@interface _INPBUnsendMessagesIntent
- (BOOL)isEqual:(id)equal;
- (_INPBUnsendMessagesIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addMessageIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
- (void)setMessageIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation _INPBUnsendMessagesIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentMetadata = [(_INPBUnsendMessagesIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_messageIdentifiers)
  {
    messageIdentifiers = [(_INPBUnsendMessagesIntent *)self messageIdentifiers];
    v7 = [messageIdentifiers copy];
    [dictionary setObject:v7 forKeyedSubscript:@"messageIdentifiers"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentMetadata = [(_INPBUnsendMessagesIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  if ((intentMetadata != 0) == (intentMetadata2 == 0))
  {
    goto LABEL_11;
  }

  intentMetadata3 = [(_INPBUnsendMessagesIntent *)self intentMetadata];
  if (intentMetadata3)
  {
    v8 = intentMetadata3;
    intentMetadata4 = [(_INPBUnsendMessagesIntent *)self intentMetadata];
    intentMetadata5 = [equalCopy intentMetadata];
    v11 = [intentMetadata4 isEqual:intentMetadata5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentMetadata = [(_INPBUnsendMessagesIntent *)self messageIdentifiers];
  intentMetadata2 = [equalCopy messageIdentifiers];
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    messageIdentifiers = [(_INPBUnsendMessagesIntent *)self messageIdentifiers];
    if (!messageIdentifiers)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = messageIdentifiers;
    messageIdentifiers2 = [(_INPBUnsendMessagesIntent *)self messageIdentifiers];
    messageIdentifiers3 = [equalCopy messageIdentifiers];
    v16 = [messageIdentifiers2 isEqual:messageIdentifiers3];

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
  v5 = [+[_INPBUnsendMessagesIntent allocWithZone:](_INPBUnsendMessagesIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBUnsendMessagesIntent *)v5 setIntentMetadata:v6];

  v7 = [(NSArray *)self->_messageIdentifiers copyWithZone:zone];
  [(_INPBUnsendMessagesIntent *)v5 setMessageIdentifiers:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBUnsendMessagesIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBUnsendMessagesIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBUnsendMessagesIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentMetadata = [(_INPBUnsendMessagesIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBUnsendMessagesIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_messageIdentifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addMessageIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  messageIdentifiers = self->_messageIdentifiers;
  v8 = identifiersCopy;
  if (!messageIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_messageIdentifiers;
    self->_messageIdentifiers = array;

    identifiersCopy = v8;
    messageIdentifiers = self->_messageIdentifiers;
  }

  [(NSArray *)messageIdentifiers addObject:identifiersCopy];
}

- (void)setMessageIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  messageIdentifiers = self->_messageIdentifiers;
  self->_messageIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, messageIdentifiers);
}

@end