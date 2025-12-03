@interface _INPBNoteContent
- (BOOL)isEqual:(id)equal;
- (_INPBNoteContent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBNoteContent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  image = [(_INPBNoteContent *)self image];
  dictionaryRepresentation = [image dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"image"];

  text = [(_INPBNoteContent *)self text];
  dictionaryRepresentation2 = [text dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text"];

  if ([(_INPBNoteContent *)self hasType])
  {
    type = [(_INPBNoteContent *)self type];
    if (type >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v9 = off_1E7283FE8[type];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"type"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBImageNoteContent *)self->_image hash];
  v4 = [(_INPBTextNoteContent *)self->_text hash];
  if ([(_INPBNoteContent *)self hasType])
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  image = [(_INPBNoteContent *)self image];
  image2 = [equalCopy image];
  if ((image != 0) == (image2 == 0))
  {
    goto LABEL_11;
  }

  image3 = [(_INPBNoteContent *)self image];
  if (image3)
  {
    v8 = image3;
    image4 = [(_INPBNoteContent *)self image];
    image5 = [equalCopy image];
    v11 = [image4 isEqual:image5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  image = [(_INPBNoteContent *)self text];
  image2 = [equalCopy text];
  if ((image != 0) == (image2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  text = [(_INPBNoteContent *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_INPBNoteContent *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasType = [(_INPBNoteContent *)self hasType];
  if (hasType == [equalCopy hasType])
  {
    if (!-[_INPBNoteContent hasType](self, "hasType") || ![equalCopy hasType] || (type = self->_type, type == objc_msgSend(equalCopy, "type")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBNoteContent allocWithZone:](_INPBNoteContent init];
  v6 = [(_INPBImageNoteContent *)self->_image copyWithZone:zone];
  [(_INPBNoteContent *)v5 setImage:v6];

  v7 = [(_INPBTextNoteContent *)self->_text copyWithZone:zone];
  [(_INPBNoteContent *)v5 setText:v7];

  if ([(_INPBNoteContent *)self hasType])
  {
    [(_INPBNoteContent *)v5 setType:[(_INPBNoteContent *)self type]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBNoteContent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBNoteContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBNoteContent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  image = [(_INPBNoteContent *)self image];

  if (image)
  {
    image2 = [(_INPBNoteContent *)self image];
    PBDataWriterWriteSubmessage();
  }

  text = [(_INPBNoteContent *)self text];

  if (text)
  {
    text2 = [(_INPBNoteContent *)self text];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBNoteContent *)self hasType])
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"UNKNOWN_NOTE_CONTENT_TYPE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"TEXT"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"IMAGE"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_type = type;
  }
}

@end