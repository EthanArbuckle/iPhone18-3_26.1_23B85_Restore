@interface _INPBSeat
- (BOOL)isEqual:(id)a3;
- (_INPBSeat)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSeatNumber:(id)a3;
- (void)setSeatRow:(id)a3;
- (void)setSeatSection:(id)a3;
- (void)setSeatingType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSeat

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_seatNumber)
  {
    v4 = [(_INPBSeat *)self seatNumber];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"seatNumber"];
  }

  if (self->_seatRow)
  {
    v6 = [(_INPBSeat *)self seatRow];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"seatRow"];
  }

  if (self->_seatSection)
  {
    v8 = [(_INPBSeat *)self seatSection];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"seatSection"];
  }

  if (self->_seatingType)
  {
    v10 = [(_INPBSeat *)self seatingType];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"seatingType"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_seatNumber hash];
  v4 = [(NSString *)self->_seatRow hash]^ v3;
  v5 = [(NSString *)self->_seatSection hash];
  return v4 ^ v5 ^ [(NSString *)self->_seatingType hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBSeat *)self seatNumber];
  v6 = [v4 seatNumber];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBSeat *)self seatNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSeat *)self seatNumber];
    v10 = [v4 seatNumber];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSeat *)self seatRow];
  v6 = [v4 seatRow];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBSeat *)self seatRow];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSeat *)self seatRow];
    v15 = [v4 seatRow];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSeat *)self seatSection];
  v6 = [v4 seatSection];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBSeat *)self seatSection];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSeat *)self seatSection];
    v20 = [v4 seatSection];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBSeat *)self seatingType];
  v6 = [v4 seatingType];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBSeat *)self seatingType];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBSeat *)self seatingType];
    v25 = [v4 seatingType];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSeat allocWithZone:](_INPBSeat init];
  v6 = [(NSString *)self->_seatNumber copyWithZone:a3];
  [(_INPBSeat *)v5 setSeatNumber:v6];

  v7 = [(NSString *)self->_seatRow copyWithZone:a3];
  [(_INPBSeat *)v5 setSeatRow:v7];

  v8 = [(NSString *)self->_seatSection copyWithZone:a3];
  [(_INPBSeat *)v5 setSeatSection:v8];

  v9 = [(NSString *)self->_seatingType copyWithZone:a3];
  [(_INPBSeat *)v5 setSeatingType:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSeat *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSeat)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSeat *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(_INPBSeat *)self seatNumber];

  if (v4)
  {
    seatNumber = self->_seatNumber;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBSeat *)self seatRow];

  if (v6)
  {
    seatRow = self->_seatRow;
    PBDataWriterWriteStringField();
  }

  v8 = [(_INPBSeat *)self seatSection];

  if (v8)
  {
    seatSection = self->_seatSection;
    PBDataWriterWriteStringField();
  }

  v10 = [(_INPBSeat *)self seatingType];

  v11 = v13;
  if (v10)
  {
    seatingType = self->_seatingType;
    PBDataWriterWriteStringField();
    v11 = v13;
  }
}

- (void)setSeatingType:(id)a3
{
  v4 = [a3 copy];
  seatingType = self->_seatingType;
  self->_seatingType = v4;

  MEMORY[0x1EEE66BB8](v4, seatingType);
}

- (void)setSeatSection:(id)a3
{
  v4 = [a3 copy];
  seatSection = self->_seatSection;
  self->_seatSection = v4;

  MEMORY[0x1EEE66BB8](v4, seatSection);
}

- (void)setSeatRow:(id)a3
{
  v4 = [a3 copy];
  seatRow = self->_seatRow;
  self->_seatRow = v4;

  MEMORY[0x1EEE66BB8](v4, seatRow);
}

- (void)setSeatNumber:(id)a3
{
  v4 = [a3 copy];
  seatNumber = self->_seatNumber;
  self->_seatNumber = v4;

  MEMORY[0x1EEE66BB8](v4, seatNumber);
}

@end