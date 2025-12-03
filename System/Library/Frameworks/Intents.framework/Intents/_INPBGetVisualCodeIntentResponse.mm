@interface _INPBGetVisualCodeIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetVisualCodeIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetVisualCodeIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  visualCodeImage = [(_INPBGetVisualCodeIntentResponse *)self visualCodeImage];
  dictionaryRepresentation = [visualCodeImage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"visualCodeImage"];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    visualCodeImage = [(_INPBGetVisualCodeIntentResponse *)self visualCodeImage];
    visualCodeImage2 = [equalCopy visualCodeImage];
    v7 = visualCodeImage2;
    if ((visualCodeImage != 0) != (visualCodeImage2 == 0))
    {
      visualCodeImage3 = [(_INPBGetVisualCodeIntentResponse *)self visualCodeImage];
      if (!visualCodeImage3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = visualCodeImage3;
      visualCodeImage4 = [(_INPBGetVisualCodeIntentResponse *)self visualCodeImage];
      visualCodeImage5 = [equalCopy visualCodeImage];
      v12 = [visualCodeImage4 isEqual:visualCodeImage5];

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
  v5 = [+[_INPBGetVisualCodeIntentResponse allocWithZone:](_INPBGetVisualCodeIntentResponse init];
  v6 = [(_INPBImageValue *)self->_visualCodeImage copyWithZone:zone];
  [(_INPBGetVisualCodeIntentResponse *)v5 setVisualCodeImage:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetVisualCodeIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetVisualCodeIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetVisualCodeIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  visualCodeImage = [(_INPBGetVisualCodeIntentResponse *)self visualCodeImage];

  if (visualCodeImage)
  {
    visualCodeImage2 = [(_INPBGetVisualCodeIntentResponse *)self visualCodeImage];
    PBDataWriterWriteSubmessage();
  }
}

@end