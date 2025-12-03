@interface _INPBAirportGate
- (BOOL)isEqual:(id)equal;
- (_INPBAirportGate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setGate:(id)gate;
- (void)setTerminal:(id)terminal;
- (void)writeTo:(id)to;
@end

@implementation _INPBAirportGate

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  airport = [(_INPBAirportGate *)self airport];
  dictionaryRepresentation = [airport dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"airport"];

  if (self->_gate)
  {
    gate = [(_INPBAirportGate *)self gate];
    v7 = [gate copy];
    [dictionary setObject:v7 forKeyedSubscript:@"gate"];
  }

  if (self->_terminal)
  {
    terminal = [(_INPBAirportGate *)self terminal];
    v9 = [terminal copy];
    [dictionary setObject:v9 forKeyedSubscript:@"terminal"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAirport *)self->_airport hash];
  v4 = [(NSString *)self->_gate hash]^ v3;
  return v4 ^ [(NSString *)self->_terminal hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  airport = [(_INPBAirportGate *)self airport];
  airport2 = [equalCopy airport];
  if ((airport != 0) == (airport2 == 0))
  {
    goto LABEL_16;
  }

  airport3 = [(_INPBAirportGate *)self airport];
  if (airport3)
  {
    v8 = airport3;
    airport4 = [(_INPBAirportGate *)self airport];
    airport5 = [equalCopy airport];
    v11 = [airport4 isEqual:airport5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  airport = [(_INPBAirportGate *)self gate];
  airport2 = [equalCopy gate];
  if ((airport != 0) == (airport2 == 0))
  {
    goto LABEL_16;
  }

  gate = [(_INPBAirportGate *)self gate];
  if (gate)
  {
    v13 = gate;
    gate2 = [(_INPBAirportGate *)self gate];
    gate3 = [equalCopy gate];
    v16 = [gate2 isEqual:gate3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  airport = [(_INPBAirportGate *)self terminal];
  airport2 = [equalCopy terminal];
  if ((airport != 0) != (airport2 == 0))
  {
    terminal = [(_INPBAirportGate *)self terminal];
    if (!terminal)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = terminal;
    terminal2 = [(_INPBAirportGate *)self terminal];
    terminal3 = [equalCopy terminal];
    v21 = [terminal2 isEqual:terminal3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAirportGate allocWithZone:](_INPBAirportGate init];
  v6 = [(_INPBAirport *)self->_airport copyWithZone:zone];
  [(_INPBAirportGate *)v5 setAirport:v6];

  v7 = [(NSString *)self->_gate copyWithZone:zone];
  [(_INPBAirportGate *)v5 setGate:v7];

  v8 = [(NSString *)self->_terminal copyWithZone:zone];
  [(_INPBAirportGate *)v5 setTerminal:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAirportGate *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAirportGate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAirportGate *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  airport = [(_INPBAirportGate *)self airport];

  if (airport)
  {
    airport2 = [(_INPBAirportGate *)self airport];
    PBDataWriterWriteSubmessage();
  }

  gate = [(_INPBAirportGate *)self gate];

  if (gate)
  {
    gate = self->_gate;
    PBDataWriterWriteStringField();
  }

  terminal = [(_INPBAirportGate *)self terminal];

  v9 = toCopy;
  if (terminal)
  {
    terminal = self->_terminal;
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)setTerminal:(id)terminal
{
  v4 = [terminal copy];
  terminal = self->_terminal;
  self->_terminal = v4;

  MEMORY[0x1EEE66BB8](v4, terminal);
}

- (void)setGate:(id)gate
{
  v4 = [gate copy];
  gate = self->_gate;
  self->_gate = v4;

  MEMORY[0x1EEE66BB8](v4, gate);
}

@end