@interface _INPBCreateNoteIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCreateNoteIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateNoteIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  content = [(_INPBCreateNoteIntent *)self content];
  dictionaryRepresentation = [content dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"content"];

  groupName = [(_INPBCreateNoteIntent *)self groupName];
  dictionaryRepresentation2 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"groupName"];

  intentMetadata = [(_INPBCreateNoteIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  title = [(_INPBCreateNoteIntent *)self title];
  dictionaryRepresentation4 = [title dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"title"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBNoteContent *)self->_content hash];
  v4 = [(_INPBDataString *)self->_groupName hash]^ v3;
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  return v4 ^ v5 ^ [(_INPBDataString *)self->_title hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  content = [(_INPBCreateNoteIntent *)self content];
  content2 = [equalCopy content];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_21;
  }

  content3 = [(_INPBCreateNoteIntent *)self content];
  if (content3)
  {
    v8 = content3;
    content4 = [(_INPBCreateNoteIntent *)self content];
    content5 = [equalCopy content];
    v11 = [content4 isEqual:content5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  content = [(_INPBCreateNoteIntent *)self groupName];
  content2 = [equalCopy groupName];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_21;
  }

  groupName = [(_INPBCreateNoteIntent *)self groupName];
  if (groupName)
  {
    v13 = groupName;
    groupName2 = [(_INPBCreateNoteIntent *)self groupName];
    groupName3 = [equalCopy groupName];
    v16 = [groupName2 isEqual:groupName3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  content = [(_INPBCreateNoteIntent *)self intentMetadata];
  content2 = [equalCopy intentMetadata];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_21;
  }

  intentMetadata = [(_INPBCreateNoteIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBCreateNoteIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  content = [(_INPBCreateNoteIntent *)self title];
  content2 = [equalCopy title];
  if ((content != 0) != (content2 == 0))
  {
    title = [(_INPBCreateNoteIntent *)self title];
    if (!title)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = title;
    title2 = [(_INPBCreateNoteIntent *)self title];
    title3 = [equalCopy title];
    v26 = [title2 isEqual:title3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateNoteIntent allocWithZone:](_INPBCreateNoteIntent init];
  v6 = [(_INPBNoteContent *)self->_content copyWithZone:zone];
  [(_INPBCreateNoteIntent *)v5 setContent:v6];

  v7 = [(_INPBDataString *)self->_groupName copyWithZone:zone];
  [(_INPBCreateNoteIntent *)v5 setGroupName:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCreateNoteIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBDataString *)self->_title copyWithZone:zone];
  [(_INPBCreateNoteIntent *)v5 setTitle:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateNoteIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateNoteIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateNoteIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  content = [(_INPBCreateNoteIntent *)self content];

  if (content)
  {
    content2 = [(_INPBCreateNoteIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  groupName = [(_INPBCreateNoteIntent *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBCreateNoteIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBCreateNoteIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCreateNoteIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  title = [(_INPBCreateNoteIntent *)self title];

  v11 = toCopy;
  if (title)
  {
    title2 = [(_INPBCreateNoteIntent *)self title];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

@end