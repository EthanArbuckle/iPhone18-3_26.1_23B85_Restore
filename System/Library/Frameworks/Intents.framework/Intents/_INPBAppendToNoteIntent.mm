@interface _INPBAppendToNoteIntent
- (BOOL)isEqual:(id)equal;
- (_INPBAppendToNoteIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppendToNoteIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  content = [(_INPBAppendToNoteIntent *)self content];
  dictionaryRepresentation = [content dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"content"];

  intentMetadata = [(_INPBAppendToNoteIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  targetNote = [(_INPBAppendToNoteIntent *)self targetNote];
  dictionaryRepresentation3 = [targetNote dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"targetNote"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBNoteContent *)self->_content hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBNote *)self->_targetNote hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  content = [(_INPBAppendToNoteIntent *)self content];
  content2 = [equalCopy content];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_16;
  }

  content3 = [(_INPBAppendToNoteIntent *)self content];
  if (content3)
  {
    v8 = content3;
    content4 = [(_INPBAppendToNoteIntent *)self content];
    content5 = [equalCopy content];
    v11 = [content4 isEqual:content5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  content = [(_INPBAppendToNoteIntent *)self intentMetadata];
  content2 = [equalCopy intentMetadata];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBAppendToNoteIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBAppendToNoteIntent *)self intentMetadata];
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

  content = [(_INPBAppendToNoteIntent *)self targetNote];
  content2 = [equalCopy targetNote];
  if ((content != 0) != (content2 == 0))
  {
    targetNote = [(_INPBAppendToNoteIntent *)self targetNote];
    if (!targetNote)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = targetNote;
    targetNote2 = [(_INPBAppendToNoteIntent *)self targetNote];
    targetNote3 = [equalCopy targetNote];
    v21 = [targetNote2 isEqual:targetNote3];

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
  v5 = [+[_INPBAppendToNoteIntent allocWithZone:](_INPBAppendToNoteIntent init];
  v6 = [(_INPBNoteContent *)self->_content copyWithZone:zone];
  [(_INPBAppendToNoteIntent *)v5 setContent:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBAppendToNoteIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBNote *)self->_targetNote copyWithZone:zone];
  [(_INPBAppendToNoteIntent *)v5 setTargetNote:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppendToNoteIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppendToNoteIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppendToNoteIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  content = [(_INPBAppendToNoteIntent *)self content];

  if (content)
  {
    content2 = [(_INPBAppendToNoteIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBAppendToNoteIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBAppendToNoteIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  targetNote = [(_INPBAppendToNoteIntent *)self targetNote];

  v9 = toCopy;
  if (targetNote)
  {
    targetNote2 = [(_INPBAppendToNoteIntent *)self targetNote];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

@end