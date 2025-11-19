@interface _INPBHomeAttribute
- (BOOL)isEqual:(id)a3;
- (_INPBHomeAttribute)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAttributeType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributeType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeAttribute

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    v4 = [(_INPBHomeAttribute *)self attributeType];
    if (v4 >= 0x42)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7281FE8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"attributeType"];
  }

  v6 = [(_INPBHomeAttribute *)self attributeValue];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"attributeValue"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    v3 = 2654435761 * self->_attributeType;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBHomeAttributeValue *)self->_attributeValue hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBHomeAttribute *)self hasAttributeType];
    if (v5 == [v4 hasAttributeType])
    {
      if (!-[_INPBHomeAttribute hasAttributeType](self, "hasAttributeType") || ![v4 hasAttributeType] || (attributeType = self->_attributeType, attributeType == objc_msgSend(v4, "attributeType")))
      {
        v7 = [(_INPBHomeAttribute *)self attributeValue];
        v8 = [v4 attributeValue];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBHomeAttribute *)self attributeValue];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBHomeAttribute *)self attributeValue];
          v13 = [v4 attributeValue];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHomeAttribute allocWithZone:](_INPBHomeAttribute init];
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    [(_INPBHomeAttribute *)v5 setAttributeType:[(_INPBHomeAttribute *)self attributeType]];
  }

  v6 = [(_INPBHomeAttributeValue *)self->_attributeValue copyWithZone:a3];
  [(_INPBHomeAttribute *)v5 setAttributeValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeAttribute *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeAttribute *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    attributeType = self->_attributeType;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBHomeAttribute *)self attributeValue];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBHomeAttribute *)self attributeValue];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (int)StringAsAttributeType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ENABLED"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"BRIGHTNESS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HUE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SATURATION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"COLOR_VALUE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TEMPERATURE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HUMIDITY"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LOCK"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"POSITION"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"RAISE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"ROTATION_SPEED"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ROTATION_DIRECTION"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SECURITY_SYSTEM_STATE"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"HEATING_COOLING_MODE"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HEATER_COOLER_MODE"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"CONTROL_LOCK"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"COOLING_THRESHOLD"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"FAN_OPERATING_MODE"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"HEATING_THRESHOLD"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER_MODE"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"SLAT_OPERATING_MODE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"SWING_MODE"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"HUMIDIFIER_THRESHOLD"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"DEHUMIDIFIER_THRESHOLD"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"PROGRAM_MODE"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"DURATION"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"POWER"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"AIR_QUALITY_RATING"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"AIR_PARTICULATE_DENSITY"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"AIR_PARTICULATE_SIZE"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"SMOKE_DETECTED"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"CARBON_MONOXIDE_DETECTED"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"CARBON_MONOXIDE_LEVEL"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"CARBON_MONOXIDE_PEAK_LEVEL"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"CARBON_DIOXIDE_DETECTED"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"CARBON_DIOXIDE_LEVEL"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"CARBON_DIOXIDE_PEAK_LEVEL"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"CONTACT_DETECTED"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"OCCUPANCY_DETECTED"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"LEAK_DETECTED"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"MOTION_DETECTED"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"AMBIENT_LIGHT_LEVEL"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"BATTERY_LEVEL"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"CHARGING_STATE"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"LOW_BATTERY"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"IN_USE"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"AIR_PURIFIER_OPERATING_MODE"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"FILTER_CHANGE"])
  {
    v4 = 47;
  }

  else if ([v3 isEqualToString:@"FILTER_LIFE"])
  {
    v4 = 48;
  }

  else if ([v3 isEqualToString:@"WATER_LEVEL"])
  {
    v4 = 49;
  }

  else if ([v3 isEqualToString:@"REMAINING_DURATION"])
  {
    v4 = 50;
  }

  else if ([v3 isEqualToString:@"STATUS_FAULT"])
  {
    v4 = 51;
  }

  else if ([v3 isEqualToString:@"SULPHUR_DIOXIDE_DENSITY"])
  {
    v4 = 52;
  }

  else if ([v3 isEqualToString:@"NITROGEN_DIOXIDE_DENSITY"])
  {
    v4 = 53;
  }

  else if ([v3 isEqualToString:@"PARTICULATE_MATTER_2_5_DENSITY"])
  {
    v4 = 54;
  }

  else if ([v3 isEqualToString:@"PARTICULATE_MATTER_10_DENSITY"])
  {
    v4 = 55;
  }

  else if ([v3 isEqualToString:@"VOLATILE_ORGANIC_COMPOUND_DENSITY"])
  {
    v4 = 56;
  }

  else if ([v3 isEqualToString:@"OZONE_DENSITY"])
  {
    v4 = 57;
  }

  else if ([v3 isEqualToString:@"COLOR_TEMPERATURE"])
  {
    v4 = 58;
  }

  else if ([v3 isEqualToString:@"COUNT"])
  {
    v4 = 59;
  }

  else if ([v3 isEqualToString:@"LOCATION"])
  {
    v4 = 60;
  }

  else if ([v3 isEqualToString:@"INVENTORY"])
  {
    v4 = 61;
  }

  else if ([v3 isEqualToString:@"CAPABILITIES"])
  {
    v4 = 62;
  }

  else if ([v3 isEqualToString:@"OPEN"])
  {
    v4 = 63;
  }

  else if ([v3 isEqualToString:@"MEDIA"])
  {
    v4 = 64;
  }

  else if ([v3 isEqualToString:@"ADAPTIVE_LIGHTING"])
  {
    v4 = 65;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAttributeType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_attributeType = a3;
  }
}

@end