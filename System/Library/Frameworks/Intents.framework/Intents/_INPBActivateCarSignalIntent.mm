@interface _INPBActivateCarSignalIntent
- (BOOL)isEqual:(id)equal;
- (_INPBActivateCarSignalIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsSignals:(id)signals;
- (unint64_t)hash;
- (void)addSignals:(int)signals;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBActivateCarSignalIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carName = [(_INPBActivateCarSignalIntent *)self carName];
  dictionaryRepresentation = [carName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"carName"];

  intentMetadata = [(_INPBActivateCarSignalIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if (self->_signals.count)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBActivateCarSignalIntent signalsCount](self, "signalsCount")}];
    if ([(_INPBActivateCarSignalIntent *)self signalsCount])
    {
      v9 = 0;
      do
      {
        v10 = self->_signals.list[v9];
        if (v10 == 1)
        {
          v11 = @"AUDIBLE";
        }

        else if (v10 == 2)
        {
          v11 = @"VISIBLE";
        }

        else
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_signals.list[v9]];
        }

        [v8 addObject:v11];

        ++v9;
      }

      while (v9 < [(_INPBActivateCarSignalIntent *)self signalsCount]);
    }

    [dictionary setObject:v8 forKeyedSubscript:@"signals"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  carName = [(_INPBActivateCarSignalIntent *)self carName];
  carName2 = [equalCopy carName];
  if ((carName != 0) == (carName2 == 0))
  {
    goto LABEL_11;
  }

  carName3 = [(_INPBActivateCarSignalIntent *)self carName];
  if (carName3)
  {
    v8 = carName3;
    carName4 = [(_INPBActivateCarSignalIntent *)self carName];
    carName5 = [equalCopy carName];
    v11 = [carName4 isEqual:carName5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  carName = [(_INPBActivateCarSignalIntent *)self intentMetadata];
  carName2 = [equalCopy intentMetadata];
  if ((carName != 0) != (carName2 == 0))
  {
    intentMetadata = [(_INPBActivateCarSignalIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_15:
      IsEqual = PBRepeatedInt32IsEqual();
      goto LABEL_13;
    }

    v13 = intentMetadata;
    intentMetadata2 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  IsEqual = 0;
LABEL_13:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBActivateCarSignalIntent allocWithZone:](_INPBActivateCarSignalIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:zone];
  [(_INPBActivateCarSignalIntent *)v5 setCarName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBActivateCarSignalIntent *)v5 setIntentMetadata:v7];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBActivateCarSignalIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBActivateCarSignalIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBActivateCarSignalIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_INPBActivateCarSignalIntent *)self clearSignals];
  v3.receiver = self;
  v3.super_class = _INPBActivateCarSignalIntent;
  [(_INPBActivateCarSignalIntent *)&v3 dealloc];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  carName = [(_INPBActivateCarSignalIntent *)self carName];

  if (carName)
  {
    carName2 = [(_INPBActivateCarSignalIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBActivateCarSignalIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  p_signals = &self->_signals;
  v9 = toCopy;
  if (p_signals->count)
  {
    v10 = 0;
    do
    {
      v11 = p_signals->list[v10];
      PBDataWriterWriteInt32Field();
      v9 = toCopy;
      ++v10;
    }

    while (v10 < p_signals->count);
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