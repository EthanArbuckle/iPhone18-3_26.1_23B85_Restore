@interface _INPBEditMessageIntent
- (BOOL)isEqual:(id)equal;
- (_INPBEditMessageIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEditedContent:(id)content;
- (void)setMessageIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBEditMessageIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_editedContent)
  {
    editedContent = [(_INPBEditMessageIntent *)self editedContent];
    v5 = [editedContent copy];
    [dictionary setObject:v5 forKeyedSubscript:@"editedContent"];
  }

  intentMetadata = [(_INPBEditMessageIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if (self->_messageIdentifier)
  {
    messageIdentifier = [(_INPBEditMessageIntent *)self messageIdentifier];
    v9 = [messageIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"messageIdentifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_editedContent hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(NSString *)self->_messageIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  editedContent = [(_INPBEditMessageIntent *)self editedContent];
  editedContent2 = [equalCopy editedContent];
  if ((editedContent != 0) == (editedContent2 == 0))
  {
    goto LABEL_16;
  }

  editedContent3 = [(_INPBEditMessageIntent *)self editedContent];
  if (editedContent3)
  {
    v8 = editedContent3;
    editedContent4 = [(_INPBEditMessageIntent *)self editedContent];
    editedContent5 = [equalCopy editedContent];
    v11 = [editedContent4 isEqual:editedContent5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  editedContent = [(_INPBEditMessageIntent *)self intentMetadata];
  editedContent2 = [equalCopy intentMetadata];
  if ((editedContent != 0) == (editedContent2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBEditMessageIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBEditMessageIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  editedContent = [(_INPBEditMessageIntent *)self messageIdentifier];
  editedContent2 = [equalCopy messageIdentifier];
  if ((editedContent != 0) != (editedContent2 == 0))
  {
    messageIdentifier = [(_INPBEditMessageIntent *)self messageIdentifier];
    if (!messageIdentifier)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = messageIdentifier;
    messageIdentifier2 = [(_INPBEditMessageIntent *)self messageIdentifier];
    messageIdentifier3 = [equalCopy messageIdentifier];
    v21 = [messageIdentifier2 isEqual:messageIdentifier3];

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
  v5 = [+[_INPBEditMessageIntent allocWithZone:](_INPBEditMessageIntent init];
  v6 = [(NSString *)self->_editedContent copyWithZone:zone];
  [(_INPBEditMessageIntent *)v5 setEditedContent:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBEditMessageIntent *)v5 setIntentMetadata:v7];

  v8 = [(NSString *)self->_messageIdentifier copyWithZone:zone];
  [(_INPBEditMessageIntent *)v5 setMessageIdentifier:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBEditMessageIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBEditMessageIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBEditMessageIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  editedContent = [(_INPBEditMessageIntent *)self editedContent];

  if (editedContent)
  {
    editedContent = self->_editedContent;
    PBDataWriterWriteStringField();
  }

  intentMetadata = [(_INPBEditMessageIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBEditMessageIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  messageIdentifier = [(_INPBEditMessageIntent *)self messageIdentifier];

  v9 = toCopy;
  if (messageIdentifier)
  {
    messageIdentifier = self->_messageIdentifier;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setMessageIdentifier:(id)identifier
{
  v4 = [identifier copy];
  messageIdentifier = self->_messageIdentifier;
  self->_messageIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, messageIdentifier);
}

- (void)setEditedContent:(id)content
{
  v4 = [content copy];
  editedContent = self->_editedContent;
  self->_editedContent = v4;

  MEMORY[0x1EEE66BB8](v4, editedContent);
}

@end