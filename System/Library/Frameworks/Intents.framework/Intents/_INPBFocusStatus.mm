@interface _INPBFocusStatus
- (BOOL)isEqual:(id)equal;
- (_INPBFocusStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBFocusStatus

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBFocusStatus isFocused](self, "isFocused")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isFocused"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    return 2654435761 * self->_isFocused;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasIsFocused = [(_INPBFocusStatus *)self hasIsFocused];
    if (hasIsFocused == [equalCopy hasIsFocused])
    {
      if (!-[_INPBFocusStatus hasIsFocused](self, "hasIsFocused") || ![equalCopy hasIsFocused] || (isFocused = self->_isFocused, isFocused == objc_msgSend(equalCopy, "isFocused")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBFocusStatus allocWithZone:?]];
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    [(_INPBFocusStatus *)v4 setIsFocused:[(_INPBFocusStatus *)self isFocused]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBFocusStatus *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBFocusStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBFocusStatus *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    isFocused = self->_isFocused;
    PBDataWriterWriteBOOLField();
  }
}

@end