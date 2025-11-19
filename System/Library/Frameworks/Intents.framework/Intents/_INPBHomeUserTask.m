@interface _INPBHomeUserTask
- (BOOL)isEqual:(id)a3;
- (_INPBHomeUserTask)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAttribute:(id)a3;
- (int)StringAsTaskType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAttribute:(int)a3;
- (void)setHasTaskType:(BOOL)a3;
- (void)setTaskType:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeUserTask

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBHomeUserTask *)self hasAttribute])
  {
    v4 = [(_INPBHomeUserTask *)self attribute];
    if (v4 >= 0x42)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7286AA8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"attribute"];
  }

  if ([(_INPBHomeUserTask *)self hasTaskType])
  {
    v6 = [(_INPBHomeUserTask *)self taskType];
    if ((v6 - 1) >= 6)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7286CB8[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"taskType"];
  }

  v8 = [(_INPBHomeUserTask *)self value];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"value"];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBHomeUserTask *)self hasAttribute];
    if (v5 == [v4 hasAttribute])
    {
      if (!-[_INPBHomeUserTask hasAttribute](self, "hasAttribute") || ![v4 hasAttribute] || (attribute = self->_attribute, attribute == objc_msgSend(v4, "attribute")))
      {
        v7 = [(_INPBHomeUserTask *)self hasTaskType];
        if (v7 == [v4 hasTaskType])
        {
          if (!-[_INPBHomeUserTask hasTaskType](self, "hasTaskType") || ![v4 hasTaskType] || (taskType = self->_taskType, taskType == objc_msgSend(v4, "taskType")))
          {
            v9 = [(_INPBHomeUserTask *)self value];
            v10 = [v4 value];
            v11 = v10;
            if ((v9 != 0) != (v10 == 0))
            {
              v12 = [(_INPBHomeUserTask *)self value];
              if (!v12)
              {

LABEL_18:
                v17 = 1;
                goto LABEL_16;
              }

              v13 = v12;
              v14 = [(_INPBHomeUserTask *)self value];
              v15 = [v4 value];
              v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
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

  v6 = [(_INPBHomeAttributeValue *)self->_value copyWithZone:a3];
  [(_INPBHomeUserTask *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeUserTask *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeUserTask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeUserTask *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v6 = [(_INPBHomeUserTask *)self value];

  v7 = v9;
  if (v6)
  {
    v8 = [(_INPBHomeUserTask *)self value];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (int)StringAsTaskType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SET"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"INCREASE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DECREASE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GET"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"GET_TARGET"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TOGGLE"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasTaskType:(BOOL)a3
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

- (void)setTaskType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_taskType = a3;
  }
}

- (int)StringAsAttribute:(id)a3
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

- (void)setAttribute:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_attribute = a3;
  }
}

@end