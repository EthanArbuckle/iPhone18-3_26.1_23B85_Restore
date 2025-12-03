@interface _INPBSetRadioStationIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetRadioStationIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsRadioType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRadioType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetRadioStationIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  channel = [(_INPBSetRadioStationIntent *)self channel];
  dictionaryRepresentation = [channel dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"channel"];

  frequency = [(_INPBSetRadioStationIntent *)self frequency];
  dictionaryRepresentation2 = [frequency dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"frequency"];

  intentMetadata = [(_INPBSetRadioStationIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  presetNumber = [(_INPBSetRadioStationIntent *)self presetNumber];
  dictionaryRepresentation4 = [presetNumber dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"presetNumber"];

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    radioType = [(_INPBSetRadioStationIntent *)self radioType];
    if ((radioType - 1) >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", radioType];
    }

    else
    {
      v13 = off_1E7283260[(radioType - 1)];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"radioType"];
  }

  stationName = [(_INPBSetRadioStationIntent *)self stationName];
  dictionaryRepresentation5 = [stationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"stationName"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_channel hash];
  v4 = [(_INPBDouble *)self->_frequency hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v6 = [(_INPBInteger *)self->_presetNumber hash];
  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    v7 = 2654435761 * self->_radioType;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ [(_INPBString *)self->_stationName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  channel = [(_INPBSetRadioStationIntent *)self channel];
  channel2 = [equalCopy channel];
  if ((channel != 0) == (channel2 == 0))
  {
    goto LABEL_30;
  }

  channel3 = [(_INPBSetRadioStationIntent *)self channel];
  if (channel3)
  {
    v8 = channel3;
    channel4 = [(_INPBSetRadioStationIntent *)self channel];
    channel5 = [equalCopy channel];
    v11 = [channel4 isEqual:channel5];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  channel = [(_INPBSetRadioStationIntent *)self frequency];
  channel2 = [equalCopy frequency];
  if ((channel != 0) == (channel2 == 0))
  {
    goto LABEL_30;
  }

  frequency = [(_INPBSetRadioStationIntent *)self frequency];
  if (frequency)
  {
    v13 = frequency;
    frequency2 = [(_INPBSetRadioStationIntent *)self frequency];
    frequency3 = [equalCopy frequency];
    v16 = [frequency2 isEqual:frequency3];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  channel = [(_INPBSetRadioStationIntent *)self intentMetadata];
  channel2 = [equalCopy intentMetadata];
  if ((channel != 0) == (channel2 == 0))
  {
    goto LABEL_30;
  }

  intentMetadata = [(_INPBSetRadioStationIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v18 = intentMetadata;
    intentMetadata2 = [(_INPBSetRadioStationIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v21 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  channel = [(_INPBSetRadioStationIntent *)self presetNumber];
  channel2 = [equalCopy presetNumber];
  if ((channel != 0) == (channel2 == 0))
  {
    goto LABEL_30;
  }

  presetNumber = [(_INPBSetRadioStationIntent *)self presetNumber];
  if (presetNumber)
  {
    v23 = presetNumber;
    presetNumber2 = [(_INPBSetRadioStationIntent *)self presetNumber];
    presetNumber3 = [equalCopy presetNumber];
    v26 = [presetNumber2 isEqual:presetNumber3];

    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  hasRadioType = [(_INPBSetRadioStationIntent *)self hasRadioType];
  if (hasRadioType != [equalCopy hasRadioType])
  {
    goto LABEL_31;
  }

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    if ([equalCopy hasRadioType])
    {
      radioType = self->_radioType;
      if (radioType != [equalCopy radioType])
      {
        goto LABEL_31;
      }
    }
  }

  channel = [(_INPBSetRadioStationIntent *)self stationName];
  channel2 = [equalCopy stationName];
  if ((channel != 0) != (channel2 == 0))
  {
    stationName = [(_INPBSetRadioStationIntent *)self stationName];
    if (!stationName)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = stationName;
    stationName2 = [(_INPBSetRadioStationIntent *)self stationName];
    stationName3 = [equalCopy stationName];
    v33 = [stationName2 isEqual:stationName3];

    if (v33)
    {
      goto LABEL_34;
    }
  }

  else
  {
LABEL_30:
  }

LABEL_31:
  v34 = 0;
LABEL_32:

  return v34;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSetRadioStationIntent allocWithZone:](_INPBSetRadioStationIntent init];
  v6 = [(_INPBString *)self->_channel copyWithZone:zone];
  [(_INPBSetRadioStationIntent *)v5 setChannel:v6];

  v7 = [(_INPBDouble *)self->_frequency copyWithZone:zone];
  [(_INPBSetRadioStationIntent *)v5 setFrequency:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetRadioStationIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBInteger *)self->_presetNumber copyWithZone:zone];
  [(_INPBSetRadioStationIntent *)v5 setPresetNumber:v9];

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    [(_INPBSetRadioStationIntent *)v5 setRadioType:[(_INPBSetRadioStationIntent *)self radioType]];
  }

  v10 = [(_INPBString *)self->_stationName copyWithZone:zone];
  [(_INPBSetRadioStationIntent *)v5 setStationName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetRadioStationIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetRadioStationIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetRadioStationIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  channel = [(_INPBSetRadioStationIntent *)self channel];

  if (channel)
  {
    channel2 = [(_INPBSetRadioStationIntent *)self channel];
    PBDataWriterWriteSubmessage();
  }

  frequency = [(_INPBSetRadioStationIntent *)self frequency];

  if (frequency)
  {
    frequency2 = [(_INPBSetRadioStationIntent *)self frequency];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSetRadioStationIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetRadioStationIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  presetNumber = [(_INPBSetRadioStationIntent *)self presetNumber];

  if (presetNumber)
  {
    presetNumber2 = [(_INPBSetRadioStationIntent *)self presetNumber];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    radioType = self->_radioType;
    PBDataWriterWriteInt32Field();
  }

  stationName = [(_INPBSetRadioStationIntent *)self stationName];

  v14 = toCopy;
  if (stationName)
  {
    stationName2 = [(_INPBSetRadioStationIntent *)self stationName];
    PBDataWriterWriteSubmessage();

    v14 = toCopy;
  }
}

- (int)StringAsRadioType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"AM"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"FM"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"HD"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SATELLITE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"DAB"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setRadioType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_radioType = type;
  }
}

@end