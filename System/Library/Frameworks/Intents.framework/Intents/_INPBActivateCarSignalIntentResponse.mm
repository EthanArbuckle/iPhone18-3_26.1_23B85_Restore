@interface _INPBActivateCarSignalIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBActivateCarSignalIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSignals:(id)a3;
- (void)addSignals:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBActivateCarSignalIntentResponse

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_signals.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBActivateCarSignalIntentResponse signalsCount](self, "signalsCount")}];
    if ([(_INPBActivateCarSignalIntentResponse *)self signalsCount])
    {
      v5 = 0;
      do
      {
        v6 = self->_signals.list[v5];
        if (v6 == 1)
        {
          v7 = @"AUDIBLE";
        }

        else if (v6 == 2)
        {
          v7 = @"VISIBLE";
        }

        else
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_signals.list[v5]];
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBActivateCarSignalIntentResponse *)self signalsCount]);
    }

    [v3 setObject:v4 forKeyedSubscript:@"signals"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [[_INPBActivateCarSignalIntentResponse allocWithZone:?]];
  PBRepeatedInt32Copy();
  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBActivateCarSignalIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBActivateCarSignalIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBActivateCarSignalIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBActivateCarSignalIntentResponse *)self clearSignals];
  v3.receiver = self;
  v3.super_class = _INPBActivateCarSignalIntentResponse;
  [(_INPBActivateCarSignalIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  p_signals = &self->_signals;
  if (self->_signals.count)
  {
    v4 = 0;
    do
    {
      v5 = p_signals->list[v4];
      PBDataWriterWriteInt32Field();
      ++v4;
    }

    while (v4 < p_signals->count);
  }
}

- (int)StringAsSignals:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"AUDIBLE"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"VISIBLE"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)addSignals:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end