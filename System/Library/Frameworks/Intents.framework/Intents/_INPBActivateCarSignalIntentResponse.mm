@interface _INPBActivateCarSignalIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBActivateCarSignalIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSignals:(id)signals;
- (void)addSignals:(int)signals;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBActivateCarSignalIntentResponse

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v4 forKeyedSubscript:@"signals"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    IsEqual = PBRepeatedInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [[_INPBActivateCarSignalIntentResponse allocWithZone:?]];
  PBRepeatedInt32Copy();
  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBActivateCarSignalIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBActivateCarSignalIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBActivateCarSignalIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBActivateCarSignalIntentResponse *)self clearSignals];
  v3.receiver = self;
  v3.super_class = _INPBActivateCarSignalIntentResponse;
  [(_INPBActivateCarSignalIntentResponse *)&v3 dealloc];
}

- (void)writeTo:(id)to
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

- (int)StringAsSignals:(id)signals
{
  signalsCopy = signals;
  v4 = 1;
  if (([signalsCopy isEqualToString:@"AUDIBLE"] & 1) == 0)
  {
    if ([signalsCopy isEqualToString:@"VISIBLE"])
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

- (void)addSignals:(int)signals
{
  if (signals != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end