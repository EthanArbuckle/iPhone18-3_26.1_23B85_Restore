@interface _INPBJoinCallIntent
- (BOOL)isEqual:(id)equal;
- (_INPBJoinCallIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBJoinCallIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  groupConversation = [(_INPBJoinCallIntent *)self groupConversation];
  dictionaryRepresentation = [groupConversation dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"groupConversation"];

  groupConversationFilter = [(_INPBJoinCallIntent *)self groupConversationFilter];
  dictionaryRepresentation2 = [groupConversationFilter dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"groupConversationFilter"];

  intentMetadata = [(_INPBJoinCallIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBCallGroupConversation *)self->_groupConversation hash];
  v4 = [(_INPBCallGroupConversationFilter *)self->_groupConversationFilter hash]^ v3;
  return v4 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  groupConversation = [(_INPBJoinCallIntent *)self groupConversation];
  groupConversation2 = [equalCopy groupConversation];
  if ((groupConversation != 0) == (groupConversation2 == 0))
  {
    goto LABEL_16;
  }

  groupConversation3 = [(_INPBJoinCallIntent *)self groupConversation];
  if (groupConversation3)
  {
    v8 = groupConversation3;
    groupConversation4 = [(_INPBJoinCallIntent *)self groupConversation];
    groupConversation5 = [equalCopy groupConversation];
    v11 = [groupConversation4 isEqual:groupConversation5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  groupConversation = [(_INPBJoinCallIntent *)self groupConversationFilter];
  groupConversation2 = [equalCopy groupConversationFilter];
  if ((groupConversation != 0) == (groupConversation2 == 0))
  {
    goto LABEL_16;
  }

  groupConversationFilter = [(_INPBJoinCallIntent *)self groupConversationFilter];
  if (groupConversationFilter)
  {
    v13 = groupConversationFilter;
    groupConversationFilter2 = [(_INPBJoinCallIntent *)self groupConversationFilter];
    groupConversationFilter3 = [equalCopy groupConversationFilter];
    v16 = [groupConversationFilter2 isEqual:groupConversationFilter3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  groupConversation = [(_INPBJoinCallIntent *)self intentMetadata];
  groupConversation2 = [equalCopy intentMetadata];
  if ((groupConversation != 0) != (groupConversation2 == 0))
  {
    intentMetadata = [(_INPBJoinCallIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = intentMetadata;
    intentMetadata2 = [(_INPBJoinCallIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

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
  v5 = [+[_INPBJoinCallIntent allocWithZone:](_INPBJoinCallIntent init];
  v6 = [(_INPBCallGroupConversation *)self->_groupConversation copyWithZone:zone];
  [(_INPBJoinCallIntent *)v5 setGroupConversation:v6];

  v7 = [(_INPBCallGroupConversationFilter *)self->_groupConversationFilter copyWithZone:zone];
  [(_INPBJoinCallIntent *)v5 setGroupConversationFilter:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBJoinCallIntent *)v5 setIntentMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBJoinCallIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBJoinCallIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBJoinCallIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  groupConversation = [(_INPBJoinCallIntent *)self groupConversation];

  if (groupConversation)
  {
    groupConversation2 = [(_INPBJoinCallIntent *)self groupConversation];
    PBDataWriterWriteSubmessage();
  }

  groupConversationFilter = [(_INPBJoinCallIntent *)self groupConversationFilter];

  if (groupConversationFilter)
  {
    groupConversationFilter2 = [(_INPBJoinCallIntent *)self groupConversationFilter];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBJoinCallIntent *)self intentMetadata];

  v9 = toCopy;
  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBJoinCallIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end