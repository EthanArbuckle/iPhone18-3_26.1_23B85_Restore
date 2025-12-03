@interface FSOperations
- (FSOperations)initWithType:(unsigned __int8)type;
- (unsigned)fatEntryOffsetForCluster:(unsigned int)cluster;
- (unsigned)getDirtyBitMask;
- (unsigned)getDirtyBitValueForEntry:(char *)entry;
- (unsigned)getNextClusterFromEntryForCluster:(unsigned int)cluster entry:(char *)entry;
- (unsigned)numBytesPerClusterInFat;
- (unsigned)setFatEntryForCluster:(unsigned int)cluster entry:(char *)entry withValue:(unsigned int)value;
- (void)applyDirtyBitValueToEntry:(char *)entry newValue:(unsigned __int8)value;
@end

@implementation FSOperations

- (FSOperations)initWithType:(unsigned __int8)type
{
  v5.receiver = self;
  v5.super_class = FSOperations;
  result = [(FSOperations *)&v5 init];
  result->_fatType = type;
  return result;
}

- (unsigned)numBytesPerClusterInFat
{
  if (self->_fatType == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (self->_fatType)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unsigned)fatEntryOffsetForCluster:(unsigned int)cluster
{
  v3 = 4 * cluster;
  if (!self->_fatType)
  {
    v3 = (3 * cluster) >> 1;
  }

  if (self->_fatType == 1)
  {
    return 2 * cluster;
  }

  else
  {
    return v3;
  }
}

- (unsigned)getNextClusterFromEntryForCluster:(unsigned int)cluster entry:(char *)entry
{
  if (self->_fatType == 1)
  {
    return *entry;
  }

  if (self->_fatType)
  {
    return *entry & 0xFFFFFFF;
  }

  v4 = *entry;
  v5 = v4 >> 4;
  v6 = v4 & 0xFFF;
  if (cluster)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (unsigned)setFatEntryForCluster:(unsigned int)cluster entry:(char *)entry withValue:(unsigned int)value
{
  if (self->_fatType == 1)
  {
    result = *entry;
    *entry = value;
  }

  else if (self->_fatType)
  {
    result = *entry & 0xFFFFFFF;
    *entry = *entry & 0xF0000000 | value & 0xFFFFFFF;
  }

  else
  {
    v5 = entry[1];
    v6 = *entry | (entry[1] << 8);
    if (cluster)
    {
      *entry = *entry & 0xF | (16 * value);
      entry[1] = value >> 4;
      return v6 >> 4;
    }

    else
    {
      *entry = value;
      entry[1] = ((v5 << 8) & 0xF000 | value & 0xFFF) >> 8;
      return v6 & 0xFFF;
    }
  }

  return result;
}

- (unsigned)getDirtyBitMask
{
  fatType = [(FSOperations *)self fatType];
  if (fatType == 1)
  {
    return 0x8000;
  }

  else
  {
    return (fatType == 2) << 27;
  }
}

- (unsigned)getDirtyBitValueForEntry:(char *)entry
{
  v4 = [(FSOperations *)self getNextClusterFromEntryForCluster:[(FSOperations *)self getDirtyBitCluster] entry:entry];
  getDirtyBitMask = [(FSOperations *)self getDirtyBitMask];
  if ([(FSOperations *)self fatType]- 1 >= 2)
  {
    return 2;
  }

  else
  {
    return (getDirtyBitMask & v4) == 0;
  }
}

- (void)applyDirtyBitValueToEntry:(char *)entry newValue:(unsigned __int8)value
{
  valueCopy = value;
  v7 = [(FSOperations *)self getNextClusterFromEntryForCluster:[(FSOperations *)self getDirtyBitCluster] entry:entry];
  getDirtyBitMask = [(FSOperations *)self getDirtyBitMask];
  if ([(FSOperations *)self fatType]- 1 <= 1)
  {
    if (valueCopy == 1)
    {
      v9 = v7 & ~getDirtyBitMask;
    }

    else
    {
      v9 = getDirtyBitMask | v7;
    }

    getDirtyBitCluster = [(FSOperations *)self getDirtyBitCluster];

    [(FSOperations *)self setFatEntryForCluster:getDirtyBitCluster entry:entry withValue:v9];
  }
}

@end