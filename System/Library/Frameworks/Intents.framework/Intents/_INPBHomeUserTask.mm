@interface _INPBHomeUserTask
- (BOOL)isEqual:(id)equal;
- (_INPBHomeUserTask)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAttribute:(id)attribute;
- (int)StringAsTaskType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAttribute:(int)attribute;
- (void)setHasTaskType:(BOOL)type;
- (void)setTaskType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeUserTask

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeUserTask *)self hasAttribute])
  {
    attribute = [(_INPBHomeUserTask *)self attribute];
    if (attribute >= 0x42)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", attribute];
    }

    else
    {
      v5 = off_1E7286AA8[attribute];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"attribute"];
  }

  if ([(_INPBHomeUserTask *)self hasTaskType])
  {
    taskType = [(_INPBHomeUserTask *)self taskType];
    if ((taskType - 1) >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskType];
    }

    else
    {
      v7 = off_1E7286CB8[(taskType - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"taskType"];
  }

  value = [(_INPBHomeUserTask *)self value];
  dictionaryRepresentation = [value dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBHomeUserTask *)self hasAttribute])
  {
    v3 = 2654435761 * self->_attribute;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBHomeUserTask *)self hasTaskType])
  {
    v4 = 2654435761 * self->_taskType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBHomeAttributeValue *)self->_value hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasAttribute = [(_INPBHomeUserTask *)self hasAttribute];
    if (hasAttribute == [equalCopy hasAttribute])
    {
      if (!-[_INPBHomeUserTask hasAttribute](self, "hasAttribute") || ![equalCopy hasAttribute] || (attribute = self->_attribute, attribute == objc_msgSend(equalCopy, "attribute")))
      {
        hasTaskType = [(_INPBHomeUserTask *)self hasTaskType];
        if (hasTaskType == [equalCopy hasTaskType])
        {
          if (!-[_INPBHomeUserTask hasTaskType](self, "hasTaskType") || ![equalCopy hasTaskType] || (taskType = self->_taskType, taskType == objc_msgSend(equalCopy, "taskType")))
          {
            value = [(_INPBHomeUserTask *)self value];
            value2 = [equalCopy value];
            v11 = value2;
            if ((value != 0) != (value2 == 0))
            {
              value3 = [(_INPBHomeUserTask *)self value];
              if (!value3)
              {

LABEL_18:
                v17 = 1;
                goto LABEL_16;
              }

              v13 = value3;
              value4 = [(_INPBHomeUserTask *)self value];
              value5 = [equalCopy value];
              v16 = [value4 isEqual:value5];

              if (v16)
              {
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeUserTask allocWithZone:](_INPBHomeUserTask init];
  if ([(_INPBHomeUserTask *)self hasAttribute])
  {
    [(_INPBHomeUserTask *)v5 setAttribute:[(_INPBHomeUserTask *)self attribute]];
  }

  if ([(_INPBHomeUserTask *)self hasTaskType])
  {
    [(_INPBHomeUserTask *)v5 setTaskType:[(_INPBHomeUserTask *)self taskType]];
  }

  v6 = [(_INPBHomeAttributeValue *)self->_value copyWithZone:zone];
  [(_INPBHomeUserTask *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeUserTask *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeUserTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeUserTask *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBHomeUserTask *)self hasAttribute])
  {
    attribute = self->_attribute;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBHomeUserTask *)self hasTaskType])
  {
    taskType = self->_taskType;
    PBDataWriterWriteInt32Field();
  }

  value = [(_INPBHomeUserTask *)self value];

  v7 = toCopy;
  if (value)
  {
    value2 = [(_INPBHomeUserTask *)self value];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (int)StringAsTaskType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SET"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"INCREASE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"DECREASE"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"GET"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"GET_TARGET"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"TOGGLE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTaskType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setTaskType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_taskType = type;
  }
}

- (int)StringAsAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy isEqualToString:@"ENABLED"])
  {
    v4 = 0;
  }

  else if ([attributeCopy isEqualToString:@"BRIGHTNESS"])
  {
    v4 = 1;
  }

  else if ([attributeCopy isEqualToString:@"HUE"])
  {
    v4 = 2;
  }

  else if ([attributeCopy isEqualToString:@"SATURATION"])
  {
    v4 = 3;
  }

  else if ([attributeCopy isEqualToString:@"COLOR_VALUE"])
  {
    v4 = 4;
  }

  else if ([attributeCopy isEqualToString:@"TEMPERATURE"])
  {
    v4 = 5;
  }

  else if ([attributeCopy isEqualToString:@"HUMIDITY"])
  {
    v4 = 6;
  }

  else if ([attributeCopy isEqualToString:@"LOCK"])
  {
    v4 = 7;
  }

  else if ([attributeCopy isEqualToString:@"POSITION"])
  {
    v4 = 8;
  }

  else if ([attributeCopy isEqualToString:@"RAISE"])
  {
    v4 = 9;
  }

  else if ([attributeCopy isEqualToString:@"ROTATION_SPEED"])
  {
    v4 = 10;
  }

  else if ([attributeCopy isEqualToString:@"ROTATION_DIRECTION"])
  {
    v4 = 11;
  }

  else if ([attributeCopy isEqualToString:@"SECURITY_SYSTEM_STATE"])
  {
    v4 = 12;
  }

  else if ([attributeCopy isEqualToString:@"HEATING_COOLING_MODE"])
  {
    v4 = 13;
  }

  else if ([attributeCopy isEqualToString:@"HEATER_COOLER_MODE"])
  {
    v4 = 14;
  }

  else if ([attributeCopy isEqualToString:@"CONTROL_LOCK"])
  {
    v4 = 15;
  }

  else if ([attributeCopy isEqualToString:@"COOLING_THRESHOLD"])
  {
    v4 = 16;
  }

  else if ([attributeCopy isEqualToString:@"FAN_OPERATING_MODE"])
  {
    v4 = 17;
  }

  else if ([attributeCopy isEqualToString:@"HEATING_THRESHOLD"])
  {
    v4 = 18;
  }

  else if ([attributeCopy isEqualToString:@"HUMIDIFIER_DEHUMIDIFIER_MODE"])
  {
    v4 = 19;
  }

  else if ([attributeCopy isEqualToString:@"SLAT_OPERATING_MODE"])
  {
    v4 = 20;
  }

  else if ([attributeCopy isEqualToString:@"SWING_MODE"])
  {
    v4 = 21;
  }

  else if ([attributeCopy isEqualToString:@"HUMIDIFIER_THRESHOLD"])
  {
    v4 = 22;
  }

  else if ([attributeCopy isEqualToString:@"DEHUMIDIFIER_THRESHOLD"])
  {
    v4 = 23;
  }

  else if ([attributeCopy isEqualToString:@"PROGRAM_MODE"])
  {
    v4 = 24;
  }

  else if ([attributeCopy isEqualToString:@"DURATION"])
  {
    v4 = 25;
  }

  else if ([attributeCopy isEqualToString:@"POWER"])
  {
    v4 = 26;
  }

  else if ([attributeCopy isEqualToString:@"AIR_QUALITY_RATING"])
  {
    v4 = 27;
  }

  else if ([attributeCopy isEqualToString:@"AIR_PARTICULATE_DENSITY"])
  {
    v4 = 28;
  }

  else if ([attributeCopy isEqualToString:@"AIR_PARTICULATE_SIZE"])
  {
    v4 = 29;
  }

  else if ([attributeCopy isEqualToString:@"SMOKE_DETECTED"])
  {
    v4 = 30;
  }

  else if ([attributeCopy isEqualToString:@"CARBON_MONOXIDE_DETECTED"])
  {
    v4 = 31;
  }

  else if ([attributeCopy isEqualToString:@"CARBON_MONOXIDE_LEVEL"])
  {
    v4 = 32;
  }

  else if ([attributeCopy isEqualToString:@"CARBON_MONOXIDE_PEAK_LEVEL"])
  {
    v4 = 33;
  }

  else if ([attributeCopy isEqualToString:@"CARBON_DIOXIDE_DETECTED"])
  {
    v4 = 34;
  }

  else if ([attributeCopy isEqualToString:@"CARBON_DIOXIDE_LEVEL"])
  {
    v4 = 35;
  }

  else if ([attributeCopy isEqualToString:@"CARBON_DIOXIDE_PEAK_LEVEL"])
  {
    v4 = 36;
  }

  else if ([attributeCopy isEqualToString:@"CONTACT_DETECTED"])
  {
    v4 = 37;
  }

  else if ([attributeCopy isEqualToString:@"OCCUPANCY_DETECTED"])
  {
    v4 = 38;
  }

  else if ([attributeCopy isEqualToString:@"LEAK_DETECTED"])
  {
    v4 = 39;
  }

  else if ([attributeCopy isEqualToString:@"MOTION_DETECTED"])
  {
    v4 = 40;
  }

  else if ([attributeCopy isEqualToString:@"AMBIENT_LIGHT_LEVEL"])
  {
    v4 = 41;
  }

  else if ([attributeCopy isEqualToString:@"BATTERY_LEVEL"])
  {
    v4 = 42;
  }

  else if ([attributeCopy isEqualToString:@"CHARGING_STATE"])
  {
    v4 = 43;
  }

  else if ([attributeCopy isEqualToString:@"LOW_BATTERY"])
  {
    v4 = 44;
  }

  else if ([attributeCopy isEqualToString:@"IN_USE"])
  {
    v4 = 45;
  }

  else if ([attributeCopy isEqualToString:@"AIR_PURIFIER_OPERATING_MODE"])
  {
    v4 = 46;
  }

  else if ([attributeCopy isEqualToString:@"FILTER_CHANGE"])
  {
    v4 = 47;
  }

  else if ([attributeCopy isEqualToString:@"FILTER_LIFE"])
  {
    v4 = 48;
  }

  else if ([attributeCopy isEqualToString:@"WATER_LEVEL"])
  {
    v4 = 49;
  }

  else if ([attributeCopy isEqualToString:@"REMAINING_DURATION"])
  {
    v4 = 50;
  }

  else if ([attributeCopy isEqualToString:@"STATUS_FAULT"])
  {
    v4 = 51;
  }

  else if ([attributeCopy isEqualToString:@"SULPHUR_DIOXIDE_DENSITY"])
  {
    v4 = 52;
  }

  else if ([attributeCopy isEqualToString:@"NITROGEN_DIOXIDE_DENSITY"])
  {
    v4 = 53;
  }

  else if ([attributeCopy isEqualToString:@"PARTICULATE_MATTER_2_5_DENSITY"])
  {
    v4 = 54;
  }

  else if ([attributeCopy isEqualToString:@"PARTICULATE_MATTER_10_DENSITY"])
  {
    v4 = 55;
  }

  else if ([attributeCopy isEqualToString:@"VOLATILE_ORGANIC_COMPOUND_DENSITY"])
  {
    v4 = 56;
  }

  else if ([attributeCopy isEqualToString:@"OZONE_DENSITY"])
  {
    v4 = 57;
  }

  else if ([attributeCopy isEqualToString:@"COLOR_TEMPERATURE"])
  {
    v4 = 58;
  }

  else if ([attributeCopy isEqualToString:@"COUNT"])
  {
    v4 = 59;
  }

  else if ([attributeCopy isEqualToString:@"LOCATION"])
  {
    v4 = 60;
  }

  else if ([attributeCopy isEqualToString:@"INVENTORY"])
  {
    v4 = 61;
  }

  else if ([attributeCopy isEqualToString:@"CAPABILITIES"])
  {
    v4 = 62;
  }

  else if ([attributeCopy isEqualToString:@"OPEN"])
  {
    v4 = 63;
  }

  else if ([attributeCopy isEqualToString:@"MEDIA"])
  {
    v4 = 64;
  }

  else if ([attributeCopy isEqualToString:@"ADAPTIVE_LIGHTING"])
  {
    v4 = 65;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAttribute:(int)attribute
{
  has = self->_has;
  if (attribute == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_attribute = attribute;
  }
}

@end