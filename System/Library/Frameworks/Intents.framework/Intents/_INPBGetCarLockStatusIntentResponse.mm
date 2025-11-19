@interface _INPBGetCarLockStatusIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBGetCarLockStatusIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBGetCarLockStatusIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBGetCarLockStatusIntentResponse locked](self, "locked")}];
    [v3 setObject:v4 forKeyedSubscript:@"locked"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBGetCarLockStatusIntentResponse *)self hasLocked];
    if (v5 == [v4 hasLocked])
    {
      if (!-[_INPBGetCarLockStatusIntentResponse hasLocked](self, "hasLocked") || ![v4 hasLocked] || (locked = self->_locked, locked == objc_msgSend(v4, "locked")))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_INPBGetCarLockStatusIntentResponse allocWithZone:?]];
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    [(_INPBGetCarLockStatusIntentResponse *)v4 setLocked:[(_INPBGetCarLockStatusIntentResponse *)self locked]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBGetCarLockStatusIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBGetCarLockStatusIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBGetCarLockStatusIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_INPBGetCarLockStatusIntentResponse *)self hasLocked])
  {
    locked = self->_locked;
    PBDataWriterWriteBOOLField();
  }
}

@end