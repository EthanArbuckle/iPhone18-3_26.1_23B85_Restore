@interface _INPBSetRadioStationIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSetRadioStationIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsRadioType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setRadioType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSetRadioStationIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSetRadioStationIntent *)self channel];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"channel"];

  v6 = [(_INPBSetRadioStationIntent *)self frequency];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"frequency"];

  v8 = [(_INPBSetRadioStationIntent *)self intentMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"intentMetadata"];

  v10 = [(_INPBSetRadioStationIntent *)self presetNumber];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"presetNumber"];

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    v12 = [(_INPBSetRadioStationIntent *)self radioType];
    if ((v12 - 1) >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E7283260[(v12 - 1)];
    }

    [v3 setObject:v13 forKeyedSubscript:@"radioType"];
  }

  v14 = [(_INPBSetRadioStationIntent *)self stationName];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"stationName"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  v5 = [(_INPBSetRadioStationIntent *)self channel];
  v6 = [v4 channel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v7 = [(_INPBSetRadioStationIntent *)self channel];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSetRadioStationIntent *)self channel];
    v10 = [v4 channel];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetRadioStationIntent *)self frequency];
  v6 = [v4 frequency];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v12 = [(_INPBSetRadioStationIntent *)self frequency];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSetRadioStationIntent *)self frequency];
    v15 = [v4 frequency];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetRadioStationIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v17 = [(_INPBSetRadioStationIntent *)self intentMetadata];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSetRadioStationIntent *)self intentMetadata];
    v20 = [v4 intentMetadata];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v5 = [(_INPBSetRadioStationIntent *)self presetNumber];
  v6 = [v4 presetNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_30;
  }

  v22 = [(_INPBSetRadioStationIntent *)self presetNumber];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSetRadioStationIntent *)self presetNumber];
    v25 = [v4 presetNumber];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v27 = [(_INPBSetRadioStationIntent *)self hasRadioType];
  if (v27 != [v4 hasRadioType])
  {
    goto LABEL_31;
  }

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    if ([v4 hasRadioType])
    {
      radioType = self->_radioType;
      if (radioType != [v4 radioType])
      {
        goto LABEL_31;
      }
    }
  }

  v5 = [(_INPBSetRadioStationIntent *)self stationName];
  v6 = [v4 stationName];
  if ((v5 != 0) != (v6 == 0))
  {
    v29 = [(_INPBSetRadioStationIntent *)self stationName];
    if (!v29)
    {

LABEL_34:
      v34 = 1;
      goto LABEL_32;
    }

    v30 = v29;
    v31 = [(_INPBSetRadioStationIntent *)self stationName];
    v32 = [v4 stationName];
    v33 = [v31 isEqual:v32];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSetRadioStationIntent allocWithZone:](_INPBSetRadioStationIntent init];
  v6 = [(_INPBString *)self->_channel copyWithZone:a3];
  [(_INPBSetRadioStationIntent *)v5 setChannel:v6];

  v7 = [(_INPBDouble *)self->_frequency copyWithZone:a3];
  [(_INPBSetRadioStationIntent *)v5 setFrequency:v7];

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSetRadioStationIntent *)v5 setIntentMetadata:v8];

  v9 = [(_INPBInteger *)self->_presetNumber copyWithZone:a3];
  [(_INPBSetRadioStationIntent *)v5 setPresetNumber:v9];

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    [(_INPBSetRadioStationIntent *)v5 setRadioType:[(_INPBSetRadioStationIntent *)self radioType]];
  }

  v10 = [(_INPBString *)self->_stationName copyWithZone:a3];
  [(_INPBSetRadioStationIntent *)v5 setStationName:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSetRadioStationIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSetRadioStationIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSetRadioStationIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v16 = a3;
  v4 = [(_INPBSetRadioStationIntent *)self channel];

  if (v4)
  {
    v5 = [(_INPBSetRadioStationIntent *)self channel];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBSetRadioStationIntent *)self frequency];

  if (v6)
  {
    v7 = [(_INPBSetRadioStationIntent *)self frequency];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBSetRadioStationIntent *)self intentMetadata];

  if (v8)
  {
    v9 = [(_INPBSetRadioStationIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_INPBSetRadioStationIntent *)self presetNumber];

  if (v10)
  {
    v11 = [(_INPBSetRadioStationIntent *)self presetNumber];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSetRadioStationIntent *)self hasRadioType])
  {
    radioType = self->_radioType;
    PBDataWriterWriteInt32Field();
  }

  v13 = [(_INPBSetRadioStationIntent *)self stationName];

  v14 = v16;
  if (v13)
  {
    v15 = [(_INPBSetRadioStationIntent *)self stationName];
    PBDataWriterWriteSubmessage();

    v14 = v16;
  }
}

- (int)StringAsRadioType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"FM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HD"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SATELLITE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DAB"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setRadioType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_radioType = a3;
  }
}

@end