@interface AWDMultitouchHardwareStatus
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)openRowsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMultitouchHardwareStatus

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDMultitouchHardwareStatus;
  [(AWDMultitouchHardwareStatus *)&v3 dealloc];
}

- (unsigned)openRowsAtIndex:(unint64_t)a3
{
  p_openRows = &self->_openRows;
  count = self->_openRows.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%tu) is out of range (%tu)", a3, count), 0), "raise"}];
  }

  return p_openRows->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMultitouchHardwareStatus;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMultitouchHardwareStatus description](&v3, sel_description), -[AWDMultitouchHardwareStatus dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"openRows"];
  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  p_openRows = &self->_openRows;
  if (p_openRows->count)
  {
    v6 = 0;
    do
    {
      v7 = p_openRows->list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < p_openRows->count);
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 40) |= 1u;
  }

  if ([(AWDMultitouchHardwareStatus *)self openRowsCount])
  {
    [a3 clearOpenRows];
    v5 = [(AWDMultitouchHardwareStatus *)self openRowsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addOpenRows:{-[AWDMultitouchHardwareStatus openRowsAtIndex:](self, "openRowsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(a3 + 40);
  if (*&self->_has)
  {
    if ((*(a3 + 40) & 1) == 0 || self->_timestamp != *(a3 + 4))
    {
      return 0;
    }
  }

  else if (*(a3 + 40))
  {
    return 0;
  }

  return MEMORY[0x2A1C68D40](&self->_openRows, a3 + 8);
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedUInt32Hash() ^ v2;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 40))
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 1u;
  }

  v5 = [a3 openRowsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDMultitouchHardwareStatus addOpenRows:](self, "addOpenRows:", [a3 openRowsAtIndex:i]);
    }
  }
}

@end