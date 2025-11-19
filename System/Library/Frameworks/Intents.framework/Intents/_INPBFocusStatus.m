@interface _INPBFocusStatus
- (BOOL)isEqual:(id)a3;
- (_INPBFocusStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFocusStatus

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBFocusStatus isFocused](self, "isFocused")}];
    [v3 setObject:v4 forKeyedSubscript:@"isFocused"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBFocusStatus *)self hasIsFocused];
    if (v5 == [v4 hasIsFocused])
    {
      if (!-[_INPBFocusStatus hasIsFocused](self, "hasIsFocused") || ![v4 hasIsFocused] || (isFocused = self->_isFocused, isFocused == objc_msgSend(v4, "isFocused")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBFocusStatus allocWithZone:?]];
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    [(_INPBFocusStatus *)v4 setIsFocused:[(_INPBFocusStatus *)self isFocused]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFocusStatus *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFocusStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFocusStatus *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBFocusStatus *)self hasIsFocused])
  {
    isFocused = self->_isFocused;
    PBDataWriterWriteBOOLField();
  }
}

@end