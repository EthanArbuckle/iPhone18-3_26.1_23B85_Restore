@interface _INPBDuration
- (BOOL)isEqual:(id)equal;
- (_INPBDuration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation _INPBDuration

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDuration *)self hasNanos])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBDuration nanos](self, "nanos")}];
    [dictionary setObject:v4 forKeyedSubscript:@"nanos"];
  }

  if ([(_INPBDuration *)self hasSeconds])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBDuration seconds](self, "seconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"seconds"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBDuration *)self hasNanos])
  {
    v3 = 2654435761 * self->_nanos;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBDuration *)self hasSeconds])
  {
    v4 = 2654435761 * self->_seconds;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasNanos = [(_INPBDuration *)self hasNanos];
    if (hasNanos == [equalCopy hasNanos])
    {
      if (!-[_INPBDuration hasNanos](self, "hasNanos") || ![equalCopy hasNanos] || (nanos = self->_nanos, nanos == objc_msgSend(equalCopy, "nanos")))
      {
        hasSeconds = [(_INPBDuration *)self hasSeconds];
        if (hasSeconds == [equalCopy hasSeconds])
        {
          if (!-[_INPBDuration hasSeconds](self, "hasSeconds") || ![equalCopy hasSeconds] || (seconds = self->_seconds, seconds == objc_msgSend(equalCopy, "seconds")))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_INPBDuration allocWithZone:?]];
  if ([(_INPBDuration *)self hasNanos])
  {
    [(_INPBDuration *)v4 setNanos:[(_INPBDuration *)self nanos]];
  }

  if ([(_INPBDuration *)self hasSeconds])
  {
    [(_INPBDuration *)v4 setSeconds:[(_INPBDuration *)self seconds]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDuration *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDuration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDuration *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBDuration *)self hasNanos])
  {
    nanos = self->_nanos;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBDuration *)self hasSeconds])
  {
    seconds = self->_seconds;
    PBDataWriterWriteInt64Field();
  }
}

- (void)setHasSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end