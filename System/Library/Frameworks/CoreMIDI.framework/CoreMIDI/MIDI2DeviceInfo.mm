@interface MIDI2DeviceInfo
+ (MIDI2DeviceInfo)infoWithDescription:(id)description;
+ (MIDI2DeviceInfo)infoWithInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (MIDI2DeviceInfo)initWithManufacturerID:(id)d family:(unsigned __int16)family modelNumber:(unsigned __int16)number revisionLevel:(id)level;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeDescription;
@end

@implementation MIDI2DeviceInfo

- (MIDI2DeviceInfo)initWithManufacturerID:(id)d family:(unsigned __int16)family modelNumber:(unsigned __int16)number revisionLevel:(id)level
{
  v6 = *d.var0;
  selfCopy = 0;
  if (!((*d.var0 | (*d.var0 >> 8)) & 0x80 | d.var0[2] & 0x80) && !((number | family) >> 14))
  {
    v13.receiver = self;
    v13.super_class = MIDI2DeviceInfo;
    v11 = [(MIDI2DeviceInfo *)&v13 init];
    if (v11)
    {
      *(v11 + 6) = v6;
      v11[14] = BYTE2(v6);
      *(v11 + 4) = family;
      *(v11 + 5) = number;
      *(v11 + 15) = level;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (__PAIR64__(self->_manufacturerID.sysExIDByte[1], self->_manufacturerID.sysExIDByte[0]) == __PAIR64__(equalCopy[13], equalCopy[12]) && self->_manufacturerID.sysExIDByte[2] == equalCopy[14] && self->_family == *(equalCopy + 4) && self->_modelNumber == *(equalCopy + 5) && self->_revisionLevel.revisionLevel[0] == equalCopy[15])
  {
    v6 = 0;
    v7 = 3;
    while (v6 != 3)
    {
      v8 = self->_revisionLevel.revisionLevel[v6 + 1];
      v9 = equalCopy[v6++ + 16];
      if (v8 != v9)
      {
        v7 = v6 - 1;
        break;
      }
    }

    v10 = v7 > 2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)serializeDescription
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_manufacturerID.sysExIDByte[i]];
    [v4 addObject:v6];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"manufacturer_id"];
  [dictionary setObject:v4 forKey:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_family];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"family"];
  [dictionary setObject:v8 forKey:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_modelNumber];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"model_number"];
  [dictionary setObject:v10 forKey:v11];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v13 = 0;
  p_revisionLevel = &self->_revisionLevel;
  do
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:p_revisionLevel->revisionLevel[v13]];
    [v12 addObject:v15];

    ++v13;
  }

  while (v13 != 4);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"revision_level"];
  [dictionary setObject:v12 forKey:v16];

  return dictionary;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MIDI2DeviceInfo allocWithZone:zone];
  manufacturerID = [(MIDI2DeviceInfo *)self manufacturerID];
  family = [(MIDI2DeviceInfo *)self family];
  modelNumber = [(MIDI2DeviceInfo *)self modelNumber];
  revisionLevel = [(MIDI2DeviceInfo *)self revisionLevel];

  return [(MIDI2DeviceInfo *)v4 initWithManufacturerID:*&manufacturerID & 0xFFFFFFLL family:family modelNumber:modelNumber revisionLevel:revisionLevel];
}

+ (MIDI2DeviceInfo)infoWithDescription:(id)description
{
  descriptionCopy = description;
  v23 = 0;
  v22 = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"manufacturer_id"];
  v5 = [descriptionCopy objectForKey:v4];

  for (i = 0; i != 3; ++i)
  {
    v7 = [v5 objectAtIndex:i];
    *(&v22 + i) = [v7 unsignedIntValue];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"family"];
  v9 = [descriptionCopy objectForKey:v8];
  unsignedIntValue = [v9 unsignedIntValue];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"model_number"];
  v12 = [descriptionCopy objectForKey:v11];
  unsignedIntValue2 = [v12 unsignedIntValue];

  v21 = 0;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"revision_level"];
  v15 = [descriptionCopy objectForKey:v14];

  for (j = 0; j != 4; ++j)
  {
    v17 = [v15 objectAtIndex:j];
    *(&v21 + j) = [v17 unsignedIntValue];
  }

  v18 = [MIDI2DeviceInfo alloc];
  v19 = [(MIDI2DeviceInfo *)v18 initWithManufacturerID:v22 | (v23 << 16) family:unsignedIntValue modelNumber:unsignedIntValue2 revisionLevel:v21];

  return v19;
}

+ (MIDI2DeviceInfo)infoWithInfo:(id)info
{
  infoCopy = info;
  v4 = [[MIDI2DeviceInfo alloc] initWithManufacturerID:infoCopy[6] | (*(infoCopy + 14) << 16) family:infoCopy[4] modelNumber:infoCopy[5] revisionLevel:*(infoCopy + 15)];

  return v4;
}

@end