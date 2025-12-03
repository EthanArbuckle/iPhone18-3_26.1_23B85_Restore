@interface _INPBTextNoteContent
- (BOOL)isEqual:(id)equal;
- (_INPBTextNoteContent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _INPBTextNoteContent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_text)
  {
    text = [(_INPBTextNoteContent *)self text];
    v5 = [text copy];
    [dictionary setObject:v5 forKeyedSubscript:@"text"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    text = [(_INPBTextNoteContent *)self text];
    text2 = [equalCopy text];
    v7 = text2;
    if ((text != 0) != (text2 == 0))
    {
      text3 = [(_INPBTextNoteContent *)self text];
      if (!text3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = text3;
      text4 = [(_INPBTextNoteContent *)self text];
      text5 = [equalCopy text];
      v12 = [text4 isEqual:text5];

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
  v5 = [+[_INPBTextNoteContent allocWithZone:](_INPBTextNoteContent init];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  [(_INPBTextNoteContent *)v5 setText:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTextNoteContent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTextNoteContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTextNoteContent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_INPBTextNoteContent *)self text];

  if (text)
  {
    text = self->_text;
    PBDataWriterWriteStringField();
  }
}

- (void)setText:(id)text
{
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8](v4, text);
}

@end