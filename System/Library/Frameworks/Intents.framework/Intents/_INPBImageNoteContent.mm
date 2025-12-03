@interface _INPBImageNoteContent
- (BOOL)isEqual:(id)equal;
- (_INPBImageNoteContent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBImageNoteContent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  image = [(_INPBImageNoteContent *)self image];
  dictionaryRepresentation = [image dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"image"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    image = [(_INPBImageNoteContent *)self image];
    image2 = [equalCopy image];
    v7 = image2;
    if ((image != 0) != (image2 == 0))
    {
      image3 = [(_INPBImageNoteContent *)self image];
      if (!image3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = image3;
      image4 = [(_INPBImageNoteContent *)self image];
      image5 = [equalCopy image];
      v12 = [image4 isEqual:image5];

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
  v5 = [+[_INPBImageNoteContent allocWithZone:](_INPBImageNoteContent init];
  v6 = [(_INPBImageValue *)self->_image copyWithZone:zone];
  [(_INPBImageNoteContent *)v5 setImage:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBImageNoteContent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBImageNoteContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBImageNoteContent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  image = [(_INPBImageNoteContent *)self image];

  if (image)
  {
    image2 = [(_INPBImageNoteContent *)self image];
    PBDataWriterWriteSubmessage();
  }
}

@end