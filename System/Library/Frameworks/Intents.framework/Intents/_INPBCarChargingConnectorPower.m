@interface _INPBCarChargingConnectorPower
- (BOOL)isEqual:(id)a3;
- (_INPBCarChargingConnectorPower)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsChargingConnector:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setChargingConnector:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCarChargingConnectorPower

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    v4 = [(_INPBCarChargingConnectorPower *)self chargingConnector];
    if ((v4 - 2) >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E72885D0[(v4 - 2)];
    }

    [v3 setObject:v5 forKeyedSubscript:@"chargingConnector"];
  }

  v6 = [(_INPBCarChargingConnectorPower *)self maximumPower];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"maximumPower"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    v3 = 2654435761 * self->_chargingConnector;
  }

  else
  {
    v3 = 0;
  }

  return [(_INPBPower *)self->_maximumPower hash]^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBCarChargingConnectorPower *)self hasChargingConnector];
    if (v5 == [v4 hasChargingConnector])
    {
      if (!-[_INPBCarChargingConnectorPower hasChargingConnector](self, "hasChargingConnector") || ![v4 hasChargingConnector] || (chargingConnector = self->_chargingConnector, chargingConnector == objc_msgSend(v4, "chargingConnector")))
      {
        v7 = [(_INPBCarChargingConnectorPower *)self maximumPower];
        v8 = [v4 maximumPower];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(_INPBCarChargingConnectorPower *)self maximumPower];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(_INPBCarChargingConnectorPower *)self maximumPower];
          v13 = [v4 maximumPower];
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
  v5 = [+[_INPBCarChargingConnectorPower allocWithZone:](_INPBCarChargingConnectorPower init];
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    [(_INPBCarChargingConnectorPower *)v5 setChargingConnector:[(_INPBCarChargingConnectorPower *)self chargingConnector]];
  }

  v6 = [(_INPBPower *)self->_maximumPower copyWithZone:a3];
  [(_INPBCarChargingConnectorPower *)v5 setMaximumPower:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCarChargingConnectorPower *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCarChargingConnectorPower)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCarChargingConnectorPower *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    chargingConnector = self->_chargingConnector;
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_INPBCarChargingConnectorPower *)self maximumPower];

  v6 = v8;
  if (v5)
  {
    v7 = [(_INPBCarChargingConnectorPower *)self maximumPower];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (int)StringAsChargingConnector:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"J1772"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"C_C_S1"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"C_C_S2"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CHAdeMO"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"G_B_T_A_C"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"G_B_T_D_C"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Tesla"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"Mennekes"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"N_A_C_S_D_C"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"N_A_C_S_A_C"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setChargingConnector:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_chargingConnector = a3;
  }
}

@end