@interface _INPBLanguageTag
- (BOOL)isEqual:(id)equal;
- (_INPBLanguageTag)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setTag:(id)tag;
- (void)writeTo:(id)to;
@end

@implementation _INPBLanguageTag

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_tag)
  {
    v4 = [(_INPBLanguageTag *)self tag];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"tag"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBLanguageTag *)self tag];
    v6 = [equalCopy tag];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_INPBLanguageTag *)self tag];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_INPBLanguageTag *)self tag];
      v11 = [equalCopy tag];
      v12 = [v10 isEqual:v11];

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
  v5 = [+[_INPBLanguageTag allocWithZone:](_INPBLanguageTag init];
  v6 = [(NSString *)self->_tag copyWithZone:zone];
  [(_INPBLanguageTag *)v5 setTag:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBLanguageTag *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBLanguageTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBLanguageTag *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(_INPBLanguageTag *)self tag];

  if (v4)
  {
    tag = self->_tag;
    PBDataWriterWriteStringField();
  }
}

- (void)setTag:(id)tag
{
  v4 = [tag copy];
  tag = self->_tag;
  self->_tag = v4;

  MEMORY[0x1EEE66BB8](v4, tag);
}

@end