@interface _INPBAirportGate
- (BOOL)isEqual:(id)a3;
- (_INPBAirportGate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setGate:(id)a3;
- (void)setTerminal:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAirportGate

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBAirportGate *)self airport];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"airport"];

  if (self->_gate)
  {
    v6 = [(_INPBAirportGate *)self gate];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"gate"];
  }

  if (self->_terminal)
  {
    v8 = [(_INPBAirportGate *)self terminal];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"terminal"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBAirport *)self->_airport hash];
  v4 = [(NSString *)self->_gate hash]^ v3;
  return v4 ^ [(NSString *)self->_terminal hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBAirportGate *)self airport];
  v6 = [v4 airport];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBAirportGate *)self airport];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAirportGate *)self airport];
    v10 = [v4 airport];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAirportGate *)self gate];
  v6 = [v4 gate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBAirportGate *)self gate];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAirportGate *)self gate];
    v15 = [v4 gate];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBAirportGate *)self terminal];
  v6 = [v4 terminal];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBAirportGate *)self terminal];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBAirportGate *)self terminal];
    v20 = [v4 terminal];
    v21 = [v19 isEqual:v20];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAirportGate allocWithZone:](_INPBAirportGate init];
  v6 = [(_INPBAirport *)self->_airport copyWithZone:a3];
  [(_INPBAirportGate *)v5 setAirport:v6];

  v7 = [(NSString *)self->_gate copyWithZone:a3];
  [(_INPBAirportGate *)v5 setGate:v7];

  v8 = [(NSString *)self->_terminal copyWithZone:a3];
  [(_INPBAirportGate *)v5 setTerminal:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAirportGate *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAirportGate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAirportGate *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBAirportGate *)self airport];

  if (v4)
  {
    v5 = [(_INPBAirportGate *)self airport];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBAirportGate *)self gate];

  if (v6)
  {
    gate = self->_gate;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBAirportGate *)self terminal];

  v9 = v11;
  if (v8)
  {
    terminal = self->_terminal;
    PBDataWriterWriteStringField();
    v9 = v11;
  }
}

- (void)setTerminal:(id)a3
{
  v4 = [a3 copy];
  terminal = self->_terminal;
  self->_terminal = v4;

  MEMORY[0x1EEE66BB8](v4, terminal);
}

- (void)setGate:(id)a3
{
  v4 = [a3 copy];
  gate = self->_gate;
  self->_gate = v4;

  MEMORY[0x1EEE66BB8](v4, gate);
}

@end