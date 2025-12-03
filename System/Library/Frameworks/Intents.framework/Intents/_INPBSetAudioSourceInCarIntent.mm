@interface _INPBSetAudioSourceInCarIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetAudioSourceInCarIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAudioSource:(id)source;
- (int)StringAsRelativeAudioSourceReference:(id)reference;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAudioSource:(int)source;
- (void)setHasRelativeAudioSourceReference:(BOOL)reference;
- (void)setRelativeAudioSourceReference:(int)reference;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetAudioSourceInCarIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    audioSource = [(_INPBSetAudioSourceInCarIntent *)self audioSource];
    if ((audioSource - 1) >= 9)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", audioSource];
    }

    else
    {
      v5 = off_1E7280658[(audioSource - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"audioSource"];
  }

  intentMetadata = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    relativeAudioSourceReference = [(_INPBSetAudioSourceInCarIntent *)self relativeAudioSourceReference];
    if (relativeAudioSourceReference == 1)
    {
      v9 = @"NEXT";
    }

    else if (relativeAudioSourceReference == 2)
    {
      v9 = @"PREVIOUS";
    }

    else
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", relativeAudioSourceReference];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"relativeAudioSourceReference"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  hasAudioSource = [(_INPBSetAudioSourceInCarIntent *)self hasAudioSource];
  if (hasAudioSource != [equalCopy hasAudioSource])
  {
    goto LABEL_13;
  }

  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    if ([equalCopy hasAudioSource])
    {
      audioSource = self->_audioSource;
      if (audioSource != [equalCopy audioSource])
      {
        goto LABEL_13;
      }
    }
  }

  intentMetadata = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
  intentMetadata2 = [equalCopy intentMetadata];
  v9 = intentMetadata2;
  if ((intentMetadata != 0) != (intentMetadata2 == 0))
  {
    intentMetadata3 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
    if (intentMetadata3)
    {
      v11 = intentMetadata3;
      intentMetadata4 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
      intentMetadata5 = [equalCopy intentMetadata];
      v14 = [intentMetadata4 isEqual:intentMetadata5];

      if (!v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    hasRelativeAudioSourceReference = [(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference];
    if (hasRelativeAudioSourceReference == [equalCopy hasRelativeAudioSourceReference])
    {
      if (!-[_INPBSetAudioSourceInCarIntent hasRelativeAudioSourceReference](self, "hasRelativeAudioSourceReference") || ![equalCopy hasRelativeAudioSourceReference] || (relativeAudioSourceReference = self->_relativeAudioSourceReference, relativeAudioSourceReference == objc_msgSend(equalCopy, "relativeAudioSourceReference")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetAudioSourceInCarIntent allocWithZone:](_INPBSetAudioSourceInCarIntent init];
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    [(_INPBSetAudioSourceInCarIntent *)v5 setAudioSource:[(_INPBSetAudioSourceInCarIntent *)self audioSource]];
  }

  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetAudioSourceInCarIntent *)v5 setIntentMetadata:v6];

  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    [(_INPBSetAudioSourceInCarIntent *)v5 setRelativeAudioSourceReference:[(_INPBSetAudioSourceInCarIntent *)self relativeAudioSourceReference]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetAudioSourceInCarIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetAudioSourceInCarIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetAudioSourceInCarIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBSetAudioSourceInCarIntent *)self hasAudioSource])
  {
    audioSource = self->_audioSource;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetAudioSourceInCarIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetAudioSourceInCarIntent *)self hasRelativeAudioSourceReference])
  {
    relativeAudioSourceReference = self->_relativeAudioSourceReference;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsRelativeAudioSourceReference:(id)reference
{
  referenceCopy = reference;
  v4 = 1;
  if (([referenceCopy isEqualToString:@"NEXT"] & 1) == 0)
  {
    if ([referenceCopy isEqualToString:@"PREVIOUS"])
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

- (void)setHasRelativeAudioSourceReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setRelativeAudioSourceReference:(int)reference
{
  has = self->_has;
  if (reference == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_relativeAudioSourceReference = reference;
  }
}

- (int)StringAsAudioSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"CARPLAY"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"IPOD"])
  {
    v4 = 2;
  }

  else if ([sourceCopy isEqualToString:@"RADIO"])
  {
    v4 = 3;
  }

  else if ([sourceCopy isEqualToString:@"BLUETOOTH"])
  {
    v4 = 4;
  }

  else if ([sourceCopy isEqualToString:@"AUX"])
  {
    v4 = 5;
  }

  else if ([sourceCopy isEqualToString:@"USB"])
  {
    v4 = 6;
  }

  else if ([sourceCopy isEqualToString:@"MEMORY_CARD"])
  {
    v4 = 7;
  }

  else if ([sourceCopy isEqualToString:@"OPTICAL_DRIVE"])
  {
    v4 = 8;
  }

  else if ([sourceCopy isEqualToString:@"HARD_DRIVE"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAudioSource:(int)source
{
  has = self->_has;
  if (source == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_audioSource = source;
  }
}

@end