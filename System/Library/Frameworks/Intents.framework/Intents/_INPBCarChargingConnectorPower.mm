@interface _INPBCarChargingConnectorPower
- (BOOL)isEqual:(id)equal;
- (_INPBCarChargingConnectorPower)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsChargingConnector:(id)connector;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setChargingConnector:(int)connector;
- (void)writeTo:(id)to;
@end

@implementation _INPBCarChargingConnectorPower

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    chargingConnector = [(_INPBCarChargingConnectorPower *)self chargingConnector];
    if ((chargingConnector - 2) >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", chargingConnector];
    }

    else
    {
      v5 = off_1E72885D0[(chargingConnector - 2)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"chargingConnector"];
  }

  maximumPower = [(_INPBCarChargingConnectorPower *)self maximumPower];
  dictionaryRepresentation = [maximumPower dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"maximumPower"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hasChargingConnector = [(_INPBCarChargingConnectorPower *)self hasChargingConnector];
    if (hasChargingConnector == [equalCopy hasChargingConnector])
    {
      if (!-[_INPBCarChargingConnectorPower hasChargingConnector](self, "hasChargingConnector") || ![equalCopy hasChargingConnector] || (chargingConnector = self->_chargingConnector, chargingConnector == objc_msgSend(equalCopy, "chargingConnector")))
      {
        maximumPower = [(_INPBCarChargingConnectorPower *)self maximumPower];
        maximumPower2 = [equalCopy maximumPower];
        v9 = maximumPower2;
        if ((maximumPower != 0) != (maximumPower2 == 0))
        {
          maximumPower3 = [(_INPBCarChargingConnectorPower *)self maximumPower];
          if (!maximumPower3)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = maximumPower3;
          maximumPower4 = [(_INPBCarChargingConnectorPower *)self maximumPower];
          maximumPower5 = [equalCopy maximumPower];
          v14 = [maximumPower4 isEqual:maximumPower5];

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
  v5 = [+[_INPBCarChargingConnectorPower allocWithZone:](_INPBCarChargingConnectorPower init];
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    [(_INPBCarChargingConnectorPower *)v5 setChargingConnector:[(_INPBCarChargingConnectorPower *)self chargingConnector]];
  }

  v6 = [(_INPBPower *)self->_maximumPower copyWithZone:zone];
  [(_INPBCarChargingConnectorPower *)v5 setMaximumPower:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCarChargingConnectorPower *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCarChargingConnectorPower)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCarChargingConnectorPower *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_INPBCarChargingConnectorPower *)self hasChargingConnector])
  {
    chargingConnector = self->_chargingConnector;
    PBDataWriterWriteInt32Field();
  }

  maximumPower = [(_INPBCarChargingConnectorPower *)self maximumPower];

  v6 = toCopy;
  if (maximumPower)
  {
    maximumPower2 = [(_INPBCarChargingConnectorPower *)self maximumPower];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (int)StringAsChargingConnector:(id)connector
{
  connectorCopy = connector;
  if ([connectorCopy isEqualToString:@"J1772"])
  {
    v4 = 2;
  }

  else if ([connectorCopy isEqualToString:@"C_C_S1"])
  {
    v4 = 3;
  }

  else if ([connectorCopy isEqualToString:@"C_C_S2"])
  {
    v4 = 4;
  }

  else if ([connectorCopy isEqualToString:@"CHAdeMO"])
  {
    v4 = 5;
  }

  else if ([connectorCopy isEqualToString:@"G_B_T_A_C"])
  {
    v4 = 6;
  }

  else if ([connectorCopy isEqualToString:@"G_B_T_D_C"])
  {
    v4 = 7;
  }

  else if ([connectorCopy isEqualToString:@"Tesla"])
  {
    v4 = 8;
  }

  else if ([connectorCopy isEqualToString:@"Mennekes"])
  {
    v4 = 9;
  }

  else if ([connectorCopy isEqualToString:@"N_A_C_S_D_C"])
  {
    v4 = 10;
  }

  else if ([connectorCopy isEqualToString:@"N_A_C_S_A_C"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)setChargingConnector:(int)connector
{
  has = self->_has;
  if (connector == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_chargingConnector = connector;
  }
}

@end