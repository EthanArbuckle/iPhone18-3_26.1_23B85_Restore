@interface _INPBDuration
- (BOOL)isEqual:(id)a3;
- (_INPBDuration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDuration

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBDuration *)self hasNanos])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBDuration nanos](self, "nanos")}];
    [v3 setObject:v4 forKeyedSubscript:@"nanos"];
  }

  if ([(_INPBDuration *)self hasSeconds])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_INPBDuration seconds](self, "seconds")}];
    [v3 setObject:v5 forKeyedSubscript:@"seconds"];
  }

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBDuration *)self hasNanos];
    if (v5 == [v4 hasNanos])
    {
      if (!-[_INPBDuration hasNanos](self, "hasNanos") || ![v4 hasNanos] || (nanos = self->_nanos, nanos == objc_msgSend(v4, "nanos")))
      {
        v7 = [(_INPBDuration *)self hasSeconds];
        if (v7 == [v4 hasSeconds])
        {
          if (!-[_INPBDuration hasSeconds](self, "hasSeconds") || ![v4 hasSeconds] || (seconds = self->_seconds, seconds == objc_msgSend(v4, "seconds")))
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDuration *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDuration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDuration *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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