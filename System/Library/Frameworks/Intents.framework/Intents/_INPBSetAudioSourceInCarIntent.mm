@interface _INPBSetAudioSourceInCarIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetAudioSourceInCarIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAudioSource:(id)a3;
- (int)StringAsRelativeAudioSourceReference:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAudioSource:(int)a3;
- (void)setHasRelativeAudioSourceReference:(BOOL)a3;
- (void)setRelativeAudioSourceReference:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetAudioSourceInCarIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    v4 = [(_INPBSetAudioSourceInCarIntent *)self audioSource];
    if ((v4 - 1) >= 9)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7280658[(v4 - 1)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"audioSource"];
  }

  v6 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    v8 = [(_INPBSetAudioSourceInCarIntent *)self relativeAudioSourceReference];
    if (v8 == 1)
    {
      v9 = @"NEXT";
    }

    else if (v8 == 2)
    {
      v9 = @"PREVIOUS";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"relativeAudioSourceReference"];
  }

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    v3 = 2654435761 * self->_audioSource;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    v5 = 2654435761 * self->_relativeAudioSourceReference;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = [(_INPBSetAudioSourceInCarIntent *)self hasAudioSource];
  if (v5 != [v4 hasAudioSource])
  {
    goto LABEL_13;
  }

  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    if ([v4 hasAudioSource])
    {
      audioSource = self->_audioSource;
      if (audioSource != [v4 audioSource])
      {
        goto LABEL_13;
      }
    }
  }

  v7 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
  v8 = [v4 intentMetadata];
  v9 = v8;
  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
    if (v10)
    {
      v11 = v10;
      v12 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
      v13 = [v4 intentMetadata];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v15 = [(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference];
    if (v15 == [v4 hasRelativeAudioSourceReference])
    {
      if (!-[_INPBSetAudioSourceInCarIntent hasRelativeAudioSourceReference](self, "hasRelativeAudioSourceReference") || ![v4 hasRelativeAudioSourceReference] || (relativeAudioSourceReference = self->_relativeAudioSourceReference, relativeAudioSourceReference == objc_msgSend(v4, "relativeAudioSourceReference")))
      {
        v16 = 1;
        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_13:
  v16 = 0;
LABEL_14:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetAudioSourceInCarIntent allocWithZone:](_INPBSetAudioSourceInCarIntent init];
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    [(_INPBSetAudioSourceInCarIntent *)v5 setAudioSource:[(_INPBSetAudioSourceInCarIntent *)self audioSource]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetAudioSourceInCarIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    [(_INPBSetAudioSourceInCarIntent *)v5 setRelativeAudioSourceReference:[(_INPBSetAudioSourceInCarIntent *)self relativeAudioSourceReference]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetAudioSourceInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetAudioSourceInCarIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetAudioSourceInCarIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    audioSource = self->_audioSource;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];

  if (v5)
  {
    v6 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    relativeAudioSourceReference = self->_relativeAudioSourceReference;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsRelativeAudioSourceReference:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"NEXT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"PREVIOUS"])
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

- (void)setHasRelativeAudioSourceReference:(BOOL)a3
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

- (void)setRelativeAudioSourceReference:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_relativeAudioSourceReference = a3;
  }
}

- (int)StringAsAudioSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CARPLAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"IPOD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RADIO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"BLUETOOTH"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AUX"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"USB"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MEMORY_CARD"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"OPTICAL_DRIVE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"HARD_DRIVE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAudioSource:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioSource = a3;
  }
}

@end