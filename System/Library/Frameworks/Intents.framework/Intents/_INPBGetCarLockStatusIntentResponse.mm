@interface _INPBGetCarLockStatusIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBGetCarLockStatusIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetCarLockStatusIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBGetCarLockStatusIntentResponse locked](self, "locked")}];
    [dictionary setObject:v4 forKeyedSubscript:@"locked"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    return 2654435761 * self->_locked;
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
    hasLocked = [(_INPBGetCarLockStatusIntentResponse *)self hasLocked];
    if (hasLocked == [equalCopy hasLocked])
    {
      if (!-[_INPBGetCarLockStatusIntentResponse hasLocked](self, "hasLocked") || ![equalCopy hasLocked] || (locked = self->_locked, locked == objc_msgSend(equalCopy, "locked")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBGetCarLockStatusIntentResponse allocWithZone:?]];
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    [(_INPBGetCarLockStatusIntentResponse *)v4 setLocked:[(_INPBGetCarLockStatusIntentResponse *)self locked]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetCarLockStatusIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetCarLockStatusIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetCarLockStatusIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    locked = self->_locked;
    PBDataWriterWriteBOOLField();
  }
}

@end