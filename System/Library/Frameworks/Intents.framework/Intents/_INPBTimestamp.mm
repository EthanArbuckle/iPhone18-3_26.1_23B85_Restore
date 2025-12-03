@interface _INPBTimestamp
- (BOOL)isEqual:(id)equal;
- (_INPBTimestamp)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setHasSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation _INPBTimestamp

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBTimestamp *)self hasNanos])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBTimestamp nanos](self, "nanos")}];
    [dictionary setObject:v4 forKeyedSubscript:@"nanos"];
  }

  if ([(_INPBTimestamp *)self hasSeconds])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBTimestamp seconds](self, "seconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"seconds"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBTimestamp *)self hasNanos])
  {
    v3 = 2654435761 * self->_nanos;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBTimestamp *)self hasSeconds])
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
    hasNanos = [(_INPBTimestamp *)self hasNanos];
    if (hasNanos == [equalCopy hasNanos])
    {
      if (!-[_INPBTimestamp hasNanos](self, "hasNanos") || ![equalCopy hasNanos] || (nanos = self->_nanos, nanos == objc_msgSend(equalCopy, "nanos")))
      {
        hasSeconds = [(_INPBTimestamp *)self hasSeconds];
        if (hasSeconds == [equalCopy hasSeconds])
        {
          if (!-[_INPBTimestamp hasSeconds](self, "hasSeconds") || ![equalCopy hasSeconds] || (seconds = self->_seconds, seconds == objc_msgSend(equalCopy, "seconds")))
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
  v4 = [[_INPBTimestamp allocWithZone:?]];
  if ([(_INPBTimestamp *)self hasNanos])
  {
    [(_INPBTimestamp *)v4 setNanos:[(_INPBTimestamp *)self nanos]];
  }

  if ([(_INPBTimestamp *)self hasSeconds])
  {
    [(_INPBTimestamp *)v4 setSeconds:[(_INPBTimestamp *)self seconds]];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBTimestamp *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBTimestamp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBTimestamp *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBTimestamp *)self hasNanos])
  {
    nanos = self->_nanos;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBTimestamp *)self hasSeconds])
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