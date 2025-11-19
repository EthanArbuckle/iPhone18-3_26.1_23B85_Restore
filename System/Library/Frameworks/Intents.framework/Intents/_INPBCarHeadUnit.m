@interface _INPBCarHeadUnit
- (BOOL)isEqual:(id)a3;
- (_INPBCarHeadUnit)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setBluetoothIdentifier:(id)a3;
- (void)setIAP2Identifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCarHeadUnit

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bluetoothIdentifier)
  {
    v4 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bluetoothIdentifier"];
  }

  if (self->_iAP2Identifier)
  {
    v6 = [(_INPBCarHeadUnit *)self iAP2Identifier];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"iAP2Identifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
  v6 = [v4 bluetoothIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
    v10 = [v4 bluetoothIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBCarHeadUnit *)self iAP2Identifier];
  v6 = [v4 iAP2Identifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBCarHeadUnit *)self iAP2Identifier];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBCarHeadUnit *)self iAP2Identifier];
    v15 = [v4 iAP2Identifier];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCarHeadUnit allocWithZone:](_INPBCarHeadUnit init];
  v6 = [(NSString *)self->_bluetoothIdentifier copyWithZone:a3];
  [(_INPBCarHeadUnit *)v5 setBluetoothIdentifier:v6];

  v7 = [(NSString *)self->_iAP2Identifier copyWithZone:a3];
  [(_INPBCarHeadUnit *)v5 setIAP2Identifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCarHeadUnit *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCarHeadUnit)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCarHeadUnit *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];

  if (v4)
  {
    bluetoothIdentifier = self->_bluetoothIdentifier;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBCarHeadUnit *)self iAP2Identifier];

  if (v6)
  {
    iAP2Identifier = self->_iAP2Identifier;
    PBDataWriterWriteStringField();
  }
}

- (void)setIAP2Identifier:(id)a3
{
  v4 = [a3 copy];
  iAP2Identifier = self->_iAP2Identifier;
  self->_iAP2Identifier = v4;

  MEMORY[0x1EEE66BB8](v4, iAP2Identifier);
}

- (void)setBluetoothIdentifier:(id)a3
{
  v4 = [a3 copy];
  bluetoothIdentifier = self->_bluetoothIdentifier;
  self->_bluetoothIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, bluetoothIdentifier);
}

@end