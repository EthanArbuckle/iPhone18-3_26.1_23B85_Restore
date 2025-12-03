@interface _INPBHomeAttribute
- (BOOL)isEqual:(id)equal;
- (_INPBHomeAttribute)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAttributeType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributeType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeAttribute

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    attributeType = [(_INPBHomeAttribute *)self attributeType];
    if (attributeType >= 0x42)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", attributeType];
    }

    else
    {
      v5 = off_1E7281FE8[attributeType];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"attributeType"];
  }

  attributeValue = [(_INPBHomeAttribute *)self attributeValue];
  dictionaryRepresentation = [attributeValue dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"attributeValue"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasAttributeType = [(_INPBHomeAttribute *)self hasAttributeType];
    if (hasAttributeType == [equalCopy hasAttributeType])
    {
      if (!-[_INPBHomeAttribute hasAttributeType](self, "hasAttributeType") || ![equalCopy hasAttributeType] || (attributeType = self->_attributeType, attributeType == objc_msgSend(equalCopy, "attributeType")))
      {
        attributeValue = [(_INPBHomeAttribute *)self attributeValue];
        attributeValue2 = [equalCopy attributeValue];
        v9 = attributeValue2;
        if ((attributeValue != 0) != (attributeValue2 == 0))
        {
          attributeValue3 = [(_INPBHomeAttribute *)self attributeValue];
          if (!attributeValue3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = attributeValue3;
          attributeValue4 = [(_INPBHomeAttribute *)self attributeValue];
          attributeValue5 = [equalCopy attributeValue];
          v14 = [attributeValue4 isEqual:attributeValue5];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeAttribute allocWithZone:](_INPBHomeAttribute init];
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    [(_INPBHomeAttribute *)v5 setAttributeType:[(_INPBHomeAttribute *)self attributeType]];
  }

  v6 = [(_INPBHomeAttributeValue *)self->_attributeValue copyWithZone:zone];
  [(_INPBHomeAttribute *)v5 setAttributeValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeAttribute *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeAttribute *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBHomeAttribute *)self hasAttributeType])
  {
    attributeType = self->_attributeType;
    PBDataWriterWriteInt32Field();
  }

  attributeValue = [(_INPBHomeAttribute *)self attributeValue];

  v6 = toCopy;
  if (attributeValue)
  {
    attributeValue2 = [(_INPBHomeAttribute *)self attributeValue];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (int)StringAsAttributeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ENABLED"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"BRIGHTNESS"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"HUE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"SATURATION"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"COLOR_VALUE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"TEMPERATURE"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"HUMIDITY"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"LOCK"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"POSITION"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"RAISE"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"ROTATION_SPEED"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"ROTATION_DIRECTION"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"SECURITY_SYSTEM_STATE"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"HEATING_COOLING_MODE"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"HEATER_COOLER_MODE"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"CONTROL_LOCK"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"COOLING_THRESHOLD"])
  {
    v4 = 16;
  }

  else if ([typeCopy isEqualToString:@"FAN_OPERATING_MODE"])
  {
    v4 = 17;
  }

  else if ([typeCopy isEqualToString:@"HEATING_THRESHOLD"])
  {
    v4 = 18;
  }

  else if ([typeCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER_MODE"])
  {
    v4 = 19;
  }

  else if ([typeCopy isEqualToString:@"SLAT_OPERATING_MODE"])
  {
    v4 = 20;
  }

  else if ([typeCopy isEqualToString:@"SWING_MODE"])
  {
    v4 = 21;
  }

  else if ([typeCopy isEqualToString:@"HUMIDIFIER_THRESHOLD"])
  {
    v4 = 22;
  }

  else if ([typeCopy isEqualToString:@"DEHUMIDIFIER_THRESHOLD"])
  {
    v4 = 23;
  }

  else if ([typeCopy isEqualToString:@"PROGRAM_MODE"])
  {
    v4 = 24;
  }

  else if ([typeCopy isEqualToString:@"DURATION"])
  {
    v4 = 25;
  }

  else if ([typeCopy isEqualToString:@"POWER"])
  {
    v4 = 26;
  }

  else if ([typeCopy isEqualToString:@"AIR_QUALITY_RATING"])
  {
    v4 = 27;
  }

  else if ([typeCopy isEqualToString:@"AIR_PARTICULATE_DENSITY"])
  {
    v4 = 28;
  }

  else if ([typeCopy isEqualToString:@"AIR_PARTICULATE_SIZE"])
  {
    v4 = 29;
  }

  else if ([typeCopy isEqualToString:@"SMOKE_DETECTED"])
  {
    v4 = 30;
  }

  else if ([typeCopy isEqualToString:@"CARBON_MONOXIDE_DETECTED"])
  {
    v4 = 31;
  }

  else if ([typeCopy isEqualToString:@"CARBON_MONOXIDE_LEVEL"])
  {
    v4 = 32;
  }

  else if ([typeCopy isEqualToString:@"CARBON_MONOXIDE_PEAK_LEVEL"])
  {
    v4 = 33;
  }

  else if ([typeCopy isEqualToString:@"CARBON_DIOXIDE_DETECTED"])
  {
    v4 = 34;
  }

  else if ([typeCopy isEqualToString:@"CARBON_DIOXIDE_LEVEL"])
  {
    v4 = 35;
  }

  else if ([typeCopy isEqualToString:@"CARBON_DIOXIDE_PEAK_LEVEL"])
  {
    v4 = 36;
  }

  else if ([typeCopy isEqualToString:@"CONTACT_DETECTED"])
  {
    v4 = 37;
  }

  else if ([typeCopy isEqualToString:@"OCCUPANCY_DETECTED"])
  {
    v4 = 38;
  }

  else if ([typeCopy isEqualToString:@"LEAK_DETECTED"])
  {
    v4 = 39;
  }

  else if ([typeCopy isEqualToString:@"MOTION_DETECTED"])
  {
    v4 = 40;
  }

  else if ([typeCopy isEqualToString:@"AMBIENT_LIGHT_LEVEL"])
  {
    v4 = 41;
  }

  else if ([typeCopy isEqualToString:@"BATTERY_LEVEL"])
  {
    v4 = 42;
  }

  else if ([typeCopy isEqualToString:@"CHARGING_STATE"])
  {
    v4 = 43;
  }

  else if ([typeCopy isEqualToString:@"LOW_BATTERY"])
  {
    v4 = 44;
  }

  else if ([typeCopy isEqualToString:@"IN_USE"])
  {
    v4 = 45;
  }

  else if ([typeCopy isEqualToString:@"AIR_PURIFIER_OPERATING_MODE"])
  {
    v4 = 46;
  }

  else if ([typeCopy isEqualToString:@"FILTER_CHANGE"])
  {
    v4 = 47;
  }

  else if ([typeCopy isEqualToString:@"FILTER_LIFE"])
  {
    v4 = 48;
  }

  else if ([typeCopy isEqualToString:@"WATER_LEVEL"])
  {
    v4 = 49;
  }

  else if ([typeCopy isEqualToString:@"REMAINING_DURATION"])
  {
    v4 = 50;
  }

  else if ([typeCopy isEqualToString:@"STATUS_FAULT"])
  {
    v4 = 51;
  }

  else if ([typeCopy isEqualToString:@"SULPHUR_DIOXIDE_DENSITY"])
  {
    v4 = 52;
  }

  else if ([typeCopy isEqualToString:@"NITROGEN_DIOXIDE_DENSITY"])
  {
    v4 = 53;
  }

  else if ([typeCopy isEqualToString:@"PARTICULATE_MATTER_2_5_DENSITY"])
  {
    v4 = 54;
  }

  else if ([typeCopy isEqualToString:@"PARTICULATE_MATTER_10_DENSITY"])
  {
    v4 = 55;
  }

  else if ([typeCopy isEqualToString:@"VOLATILE_ORGANIC_COMPOUND_DENSITY"])
  {
    v4 = 56;
  }

  else if ([typeCopy isEqualToString:@"OZONE_DENSITY"])
  {
    v4 = 57;
  }

  else if ([typeCopy isEqualToString:@"COLOR_TEMPERATURE"])
  {
    v4 = 58;
  }

  else if ([typeCopy isEqualToString:@"COUNT"])
  {
    v4 = 59;
  }

  else if ([typeCopy isEqualToString:@"LOCATION"])
  {
    v4 = 60;
  }

  else if ([typeCopy isEqualToString:@"INVENTORY"])
  {
    v4 = 61;
  }

  else if ([typeCopy isEqualToString:@"CAPABILITIES"])
  {
    v4 = 62;
  }

  else if ([typeCopy isEqualToString:@"OPEN"])
  {
    v4 = 63;
  }

  else if ([typeCopy isEqualToString:@"MEDIA"])
  {
    v4 = 64;
  }

  else if ([typeCopy isEqualToString:@"ADAPTIVE_LIGHTING"])
  {
    v4 = 65;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAttributeType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_attributeType = type;
  }
}

@end