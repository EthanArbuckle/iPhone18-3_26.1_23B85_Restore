@interface _INPBSeat
- (BOOL)isEqual:(id)equal;
- (_INPBSeat)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSeatNumber:(id)number;
- (void)setSeatRow:(id)row;
- (void)setSeatSection:(id)section;
- (void)setSeatingType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBSeat

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_seatNumber)
  {
    seatNumber = [(_INPBSeat *)self seatNumber];
    v5 = [seatNumber copy];
    [dictionary setObject:v5 forKeyedSubscript:@"seatNumber"];
  }

  if (self->_seatRow)
  {
    seatRow = [(_INPBSeat *)self seatRow];
    v7 = [seatRow copy];
    [dictionary setObject:v7 forKeyedSubscript:@"seatRow"];
  }

  if (self->_seatSection)
  {
    seatSection = [(_INPBSeat *)self seatSection];
    v9 = [seatSection copy];
    [dictionary setObject:v9 forKeyedSubscript:@"seatSection"];
  }

  if (self->_seatingType)
  {
    seatingType = [(_INPBSeat *)self seatingType];
    v11 = [seatingType copy];
    [dictionary setObject:v11 forKeyedSubscript:@"seatingType"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_seatNumber hash];
  v4 = [(NSString *)self->_seatRow hash]^ v3;
  v5 = [(NSString *)self->_seatSection hash];
  return v4 ^ v5 ^ [(NSString *)self->_seatingType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  seatNumber = [(_INPBSeat *)self seatNumber];
  seatNumber2 = [equalCopy seatNumber];
  if ((seatNumber != 0) == (seatNumber2 == 0))
  {
    goto LABEL_21;
  }

  seatNumber3 = [(_INPBSeat *)self seatNumber];
  if (seatNumber3)
  {
    v8 = seatNumber3;
    seatNumber4 = [(_INPBSeat *)self seatNumber];
    seatNumber5 = [equalCopy seatNumber];
    v11 = [seatNumber4 isEqual:seatNumber5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  seatNumber = [(_INPBSeat *)self seatRow];
  seatNumber2 = [equalCopy seatRow];
  if ((seatNumber != 0) == (seatNumber2 == 0))
  {
    goto LABEL_21;
  }

  seatRow = [(_INPBSeat *)self seatRow];
  if (seatRow)
  {
    v13 = seatRow;
    seatRow2 = [(_INPBSeat *)self seatRow];
    seatRow3 = [equalCopy seatRow];
    v16 = [seatRow2 isEqual:seatRow3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  seatNumber = [(_INPBSeat *)self seatSection];
  seatNumber2 = [equalCopy seatSection];
  if ((seatNumber != 0) == (seatNumber2 == 0))
  {
    goto LABEL_21;
  }

  seatSection = [(_INPBSeat *)self seatSection];
  if (seatSection)
  {
    v18 = seatSection;
    seatSection2 = [(_INPBSeat *)self seatSection];
    seatSection3 = [equalCopy seatSection];
    v21 = [seatSection2 isEqual:seatSection3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  seatNumber = [(_INPBSeat *)self seatingType];
  seatNumber2 = [equalCopy seatingType];
  if ((seatNumber != 0) != (seatNumber2 == 0))
  {
    seatingType = [(_INPBSeat *)self seatingType];
    if (!seatingType)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = seatingType;
    seatingType2 = [(_INPBSeat *)self seatingType];
    seatingType3 = [equalCopy seatingType];
    v26 = [seatingType2 isEqual:seatingType3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSeat allocWithZone:](_INPBSeat init];
  v6 = [(NSString *)self->_seatNumber copyWithZone:zone];
  [(_INPBSeat *)v5 setSeatNumber:v6];

  v7 = [(NSString *)self->_seatRow copyWithZone:zone];
  [(_INPBSeat *)v5 setSeatRow:v7];

  v8 = [(NSString *)self->_seatSection copyWithZone:zone];
  [(_INPBSeat *)v5 setSeatSection:v8];

  v9 = [(NSString *)self->_seatingType copyWithZone:zone];
  [(_INPBSeat *)v5 setSeatingType:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSeat *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSeat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSeat *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  seatNumber = [(_INPBSeat *)self seatNumber];

  if (seatNumber)
  {
    seatNumber = self->_seatNumber;
    PBDataWriterWriteStringField();
  }

  seatRow = [(_INPBSeat *)self seatRow];

  if (seatRow)
  {
    seatRow = self->_seatRow;
    PBDataWriterWriteStringField();
  }

  seatSection = [(_INPBSeat *)self seatSection];

  if (seatSection)
  {
    seatSection = self->_seatSection;
    PBDataWriterWriteStringField();
  }

  seatingType = [(_INPBSeat *)self seatingType];

  v11 = toCopy;
  if (seatingType)
  {
    seatingType = self->_seatingType;
    PBDataWriterWriteStringField();
    v11 = toCopy;
  }
}

- (void)setSeatingType:(id)type
{
  v4 = [type copy];
  seatingType = self->_seatingType;
  self->_seatingType = v4;

  MEMORY[0x1EEE66BB8](v4, seatingType);
}

- (void)setSeatSection:(id)section
{
  v4 = [section copy];
  seatSection = self->_seatSection;
  self->_seatSection = v4;

  MEMORY[0x1EEE66BB8](v4, seatSection);
}

- (void)setSeatRow:(id)row
{
  v4 = [row copy];
  seatRow = self->_seatRow;
  self->_seatRow = v4;

  MEMORY[0x1EEE66BB8](v4, seatRow);
}

- (void)setSeatNumber:(id)number
{
  v4 = [number copy];
  seatNumber = self->_seatNumber;
  self->_seatNumber = v4;

  MEMORY[0x1EEE66BB8](v4, seatNumber);
}

@end