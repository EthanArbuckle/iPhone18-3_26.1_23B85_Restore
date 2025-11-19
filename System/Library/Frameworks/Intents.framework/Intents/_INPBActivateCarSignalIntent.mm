@interface _INPBActivateCarSignalIntent
- (BOOL)isEqual:(id)a3;
- (_INPBActivateCarSignalIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsSignals:(id)a3;
- (unint64_t)hash;
- (void)addSignals:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBActivateCarSignalIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBActivateCarSignalIntent *)self carName];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"carName"];

  v6 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

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

    [v3 setObject:v8 forKeyedSubscript:@"signals"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_carName hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ PBRepeatedInt32Hash();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBActivateCarSignalIntent *)self carName];
  v6 = [v4 carName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBActivateCarSignalIntent *)self carName];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBActivateCarSignalIntent *)self carName];
    v10 = [v4 carName];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
    if (!v12)
    {

LABEL_15:
      IsEqual = PBRepeatedInt32IsEqual();
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBActivateCarSignalIntent allocWithZone:](_INPBActivateCarSignalIntent init];
  v6 = [(_INPBDataString *)self->_carName copyWithZone:a3];
  [(_INPBActivateCarSignalIntent *)v5 setCarName:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBActivateCarSignalIntent *)v5 setIntentMetadata:v7];

  PBRepeatedInt32Copy();
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBActivateCarSignalIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBActivateCarSignalIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBActivateCarSignalIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)dealloc
{
  [(_INPBActivateCarSignalIntent *)self clearSignals];
  v3.receiver = self;
  v3.super_class = _INPBActivateCarSignalIntent;
  [(_INPBActivateCarSignalIntent *)&v3 dealloc];
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(_INPBActivateCarSignalIntent *)self carName];

  if (v4)
  {
    v5 = [(_INPBActivateCarSignalIntent *)self carName];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBActivateCarSignalIntent *)self intentMetadata];

  if (v6)
  {
    v7 = [(_INPBActivateCarSignalIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  p_signals = &self->_signals;
  v9 = v12;
  if (p_signals->count)
  {
    v10 = 0;
    do
    {
      v11 = p_signals->list[v10];
      PBDataWriterWriteInt32Field();
      v9 = v12;
      ++v10;
    }

    while (v10 < p_signals->count);
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