@interface AWDMultitouchHardwareStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)openRowsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMultitouchHardwareStatus

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDMultitouchHardwareStatus;
  [(AWDMultitouchHardwareStatus *)&v3 dealloc];
}

- (unsigned)openRowsAtIndex:(unint64_t)index
{
  p_openRows = &self->_openRows;
  count = self->_openRows.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%tu) is out of range (%tu)", index, count), 0), "raise"}];
  }

  return p_openRows->list[index];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMultitouchHardwareStatus;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMultitouchHardwareStatus description](&v3, sel_description), -[AWDMultitouchHardwareStatus dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"openRows"];
  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 4) = self->_timestamp;
    *(to + 40) |= 1u;
  }

  if ([(AWDMultitouchHardwareStatus *)self openRowsCount])
  {
    [to clearOpenRows];
    openRowsCount = [(AWDMultitouchHardwareStatus *)self openRowsCount];
    if (openRowsCount)
    {
      v6 = openRowsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addOpenRows:{-[AWDMultitouchHardwareStatus openRowsAtIndex:](self, "openRowsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (![equal isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  v5 = *(equal + 40);
  if (*&self->_has)
  {
    if ((*(equal + 40) & 1) == 0 || self->_timestamp != *(equal + 4))
    {
      return 0;
    }
  }

  else if (*(equal + 40))
  {
    return 0;
  }

  return MEMORY[0x2A1C68D40](&self->_openRows, equal + 8);
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

- (void)mergeFrom:(id)from
{
  if (*(from + 40))
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 1u;
  }

  openRowsCount = [from openRowsCount];
  if (openRowsCount)
  {
    v6 = openRowsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDMultitouchHardwareStatus addOpenRows:](self, "addOpenRows:", [from openRowsAtIndex:i]);
    }
  }
}

@end