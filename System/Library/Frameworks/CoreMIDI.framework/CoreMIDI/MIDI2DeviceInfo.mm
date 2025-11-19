@interface MIDI2DeviceInfo
+ (MIDI2DeviceInfo)infoWithDescription:(id)a3;
+ (MIDI2DeviceInfo)infoWithInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MIDI2DeviceInfo)initWithManufacturerID:(id)a3 family:(unsigned __int16)a4 modelNumber:(unsigned __int16)a5 revisionLevel:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeDescription;
@end

@implementation MIDI2DeviceInfo

- (MIDI2DeviceInfo)initWithManufacturerID:(id)a3 family:(unsigned __int16)a4 modelNumber:(unsigned __int16)a5 revisionLevel:(id)a6
{
  v6 = *a3.var0;
  v7 = 0;
  if (!((*a3.var0 | (*a3.var0 >> 8)) & 0x80 | a3.var0[2] & 0x80) && !((a5 | a4) >> 14))
  {
    v13.receiver = self;
    v13.super_class = MIDI2DeviceInfo;
    v11 = [(MIDI2DeviceInfo *)&v13 init];
    if (v11)
    {
      *(v11 + 6) = v6;
      v11[14] = BYTE2(v6);
      *(v11 + 4) = a4;
      *(v11 + 5) = a5;
      *(v11 + 15) = a6;
    }

    self = v11;
    v7 = self;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (__PAIR64__(self->_manufacturerID.sysExIDByte[1], self->_manufacturerID.sysExIDByte[0]) == __PAIR64__(v4[13], v4[12]) && self->_manufacturerID.sysExIDByte[2] == v4[14] && self->_family == *(v4 + 4) && self->_modelNumber == *(v4 + 5) && self->_revisionLevel.revisionLevel[0] == v4[15])
  {
    v6 = 0;
    v7 = 3;
    while (v6 != 3)
    {
      v8 = self->_revisionLevel.revisionLevel[v6 + 1];
      v9 = v4[v6++ + 16];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  for (i = 0; i != 3; ++i)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_manufacturerID.sysExIDByte[i]];
    [v4 addObject:v6];
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"manufacturer_id"];
  [v3 setObject:v4 forKey:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_family];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"family"];
  [v3 setObject:v8 forKey:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:self->_modelNumber];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"model_number"];
  [v3 setObject:v10 forKey:v11];

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
  [v3 setObject:v12 forKey:v16];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MIDI2DeviceInfo allocWithZone:a3];
  v5 = [(MIDI2DeviceInfo *)self manufacturerID];
  v6 = [(MIDI2DeviceInfo *)self family];
  v7 = [(MIDI2DeviceInfo *)self modelNumber];
  v8 = [(MIDI2DeviceInfo *)self revisionLevel];

  return [(MIDI2DeviceInfo *)v4 initWithManufacturerID:*&v5 & 0xFFFFFFLL family:v6 modelNumber:v7 revisionLevel:v8];
}

+ (MIDI2DeviceInfo)infoWithDescription:(id)a3
{
  v3 = a3;
  v23 = 0;
  v22 = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"manufacturer_id"];
  v5 = [v3 objectForKey:v4];

  for (i = 0; i != 3; ++i)
  {
    v7 = [v5 objectAtIndex:i];
    *(&v22 + i) = [v7 unsignedIntValue];
  }

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"family"];
  v9 = [v3 objectForKey:v8];
  v10 = [v9 unsignedIntValue];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"model_number"];
  v12 = [v3 objectForKey:v11];
  v13 = [v12 unsignedIntValue];

  v21 = 0;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"revision_level"];
  v15 = [v3 objectForKey:v14];

  for (j = 0; j != 4; ++j)
  {
    v17 = [v15 objectAtIndex:j];
    *(&v21 + j) = [v17 unsignedIntValue];
  }

  v18 = [MIDI2DeviceInfo alloc];
  v19 = [(MIDI2DeviceInfo *)v18 initWithManufacturerID:v22 | (v23 << 16) family:v10 modelNumber:v13 revisionLevel:v21];

  return v19;
}

+ (MIDI2DeviceInfo)infoWithInfo:(id)a3
{
  v3 = a3;
  v4 = [[MIDI2DeviceInfo alloc] initWithManufacturerID:v3[6] | (*(v3 + 14) << 16) family:v3[4] modelNumber:v3[5] revisionLevel:*(v3 + 15)];

  return v4;
}

@end