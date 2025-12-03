@interface _INPBCarHeadUnit
- (BOOL)isEqual:(id)equal;
- (_INPBCarHeadUnit)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setBluetoothIdentifier:(id)identifier;
- (void)setIAP2Identifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBCarHeadUnit

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bluetoothIdentifier)
  {
    bluetoothIdentifier = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
    v5 = [bluetoothIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bluetoothIdentifier"];
  }

  if (self->_iAP2Identifier)
  {
    iAP2Identifier = [(_INPBCarHeadUnit *)self iAP2Identifier];
    v7 = [iAP2Identifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"iAP2Identifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  bluetoothIdentifier = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
  bluetoothIdentifier2 = [equalCopy bluetoothIdentifier];
  if ((bluetoothIdentifier != 0) == (bluetoothIdentifier2 == 0))
  {
    goto LABEL_11;
  }

  bluetoothIdentifier3 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
  if (bluetoothIdentifier3)
  {
    v8 = bluetoothIdentifier3;
    bluetoothIdentifier4 = [(_INPBCarHeadUnit *)self bluetoothIdentifier];
    bluetoothIdentifier5 = [equalCopy bluetoothIdentifier];
    v11 = [bluetoothIdentifier4 isEqual:bluetoothIdentifier5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  bluetoothIdentifier = [(_INPBCarHeadUnit *)self iAP2Identifier];
  bluetoothIdentifier2 = [equalCopy iAP2Identifier];
  if ((bluetoothIdentifier != 0) != (bluetoothIdentifier2 == 0))
  {
    iAP2Identifier = [(_INPBCarHeadUnit *)self iAP2Identifier];
    if (!iAP2Identifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = iAP2Identifier;
    iAP2Identifier2 = [(_INPBCarHeadUnit *)self iAP2Identifier];
    iAP2Identifier3 = [equalCopy iAP2Identifier];
    v16 = [iAP2Identifier2 isEqual:iAP2Identifier3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCarHeadUnit allocWithZone:](_INPBCarHeadUnit init];
  v6 = [(NSString *)self->_bluetoothIdentifier copyWithZone:zone];
  [(_INPBCarHeadUnit *)v5 setBluetoothIdentifier:v6];

  v7 = [(NSString *)self->_iAP2Identifier copyWithZone:zone];
  [(_INPBCarHeadUnit *)v5 setIAP2Identifier:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCarHeadUnit *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCarHeadUnit)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCarHeadUnit *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bluetoothIdentifier = [(_INPBCarHeadUnit *)self bluetoothIdentifier];

  if (bluetoothIdentifier)
  {
    bluetoothIdentifier = self->_bluetoothIdentifier;
    PBDataWriterWriteStringField();
  }

  iAP2Identifier = [(_INPBCarHeadUnit *)self iAP2Identifier];

  if (iAP2Identifier)
  {
    iAP2Identifier = self->_iAP2Identifier;
    PBDataWriterWriteStringField();
  }
}

- (void)setIAP2Identifier:(id)identifier
{
  v4 = [identifier copy];
  iAP2Identifier = self->_iAP2Identifier;
  self->_iAP2Identifier = v4;

  MEMORY[0x1EEE66BB8](v4, iAP2Identifier);
}

- (void)setBluetoothIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bluetoothIdentifier = self->_bluetoothIdentifier;
  self->_bluetoothIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, bluetoothIdentifier);
}

@end