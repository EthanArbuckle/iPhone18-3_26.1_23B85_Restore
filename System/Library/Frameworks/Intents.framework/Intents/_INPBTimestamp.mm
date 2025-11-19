@interface _INPBTimestamp
- (BOOL)isEqual:(id)a3;
- (_INPBTimestamp)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBTimestamp

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBTimestamp *)self hasNanos])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBTimestamp nanos](self, "nanos")}];
    [v3 setObject:v4 forKeyedSubscript:@"nanos"];
  }

  if ([(_INPBTimestamp *)self hasSeconds])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBTimestamp seconds](self, "seconds")}];
    [v3 setObject:v5 forKeyedSubscript:@"seconds"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBTimestamp *)self hasNanos];
    if (v5 == [v4 hasNanos])
    {
      if (!-[_INPBTimestamp hasNanos](self, "hasNanos") || ![v4 hasNanos] || (nanos = self->_nanos, nanos == objc_msgSend(v4, "nanos")))
      {
        v7 = [(_INPBTimestamp *)self hasSeconds];
        if (v7 == [v4 hasSeconds])
        {
          if (!-[_INPBTimestamp hasSeconds](self, "hasSeconds") || ![v4 hasSeconds] || (seconds = self->_seconds, seconds == objc_msgSend(v4, "seconds")))
          {
            v8 = 1;
          }
        }
      }
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBTimestamp *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBTimestamp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBTimestamp *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)setHasSeconds:(BOOL)a3
{
  if (a3)
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