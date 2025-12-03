@interface CPFontInfo
- (BOOL)getDescriptor:(id *)descriptor;
- (CGRect)readRect;
- (CPFontInfo)initWithFontData:(__CFData *)data;
- (__CFData)newKernData;
- (int)kernUnitsPerEm;
- (unsigned)readByte;
- (unsigned)readUnsignedLong;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
@end

@implementation CPFontInfo

- (__CFData)newKernData
{
  fontDataLength = self->fontDataLength;
  if (fontDataLength >= 0x59)
  {
    return CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], self->dataPtr + 88, fontDataLength - 88, *MEMORY[0x1E695E498]);
  }

  else
  {
    return 0;
  }
}

- (int)kernUnitsPerEm
{
  self->valid = 1;
  self->offset = 84;
  result = [(CPFontInfo *)self readLong];
  if (!self->valid)
  {
    return 0;
  }

  return result;
}

- (BOOL)getDescriptor:(id *)descriptor
{
  if (descriptor)
  {
    if (self->fontDataLength >= 0x54)
    {
      self->valid = 1;
      self->offset = 0;
      [(CPFontInfo *)self readFloat];
      descriptor->var0 = v6;
      [(CPFontInfo *)self readFloat];
      descriptor->var1 = v7;
      descriptor->var2 = [(CPFontInfo *)self readUnsignedLong];
      [(CPFontInfo *)self readRect];
      descriptor->var3.origin.x = v8;
      descriptor->var3.origin.y = v9;
      descriptor->var3.size.width = v10;
      descriptor->var3.size.height = v11;
      [(CPFontInfo *)self readFloat];
      descriptor->var4 = v12;
      [(CPFontInfo *)self readFloat];
      descriptor->var5 = v13;
      [(CPFontInfo *)self readFloat];
      descriptor->var6 = v14;
      [(CPFontInfo *)self readFloat];
      descriptor->var7 = v15;
      [(CPFontInfo *)self readFloat];
      descriptor->var8 = v16;
      [(CPFontInfo *)self readFloat];
      descriptor->var9 = v17;
      [(CPFontInfo *)self readFloat];
      descriptor->var10 = v18;
      [(CPFontInfo *)self readFloat];
      descriptor->var11 = v19;
      [(CPFontInfo *)self readFloat];
      descriptor->var12 = v20;
      [(CPFontInfo *)self readFloat];
      descriptor->var13 = v21;
      [(CPFontInfo *)self readFloat];
      descriptor->var14 = v22;
      [(CPFontInfo *)self readFloat];
      descriptor->var15 = v23;
      [(CPFontInfo *)self readFloat];
      descriptor->var16 = v24;
      [(CPFontInfo *)self readFloat];
      descriptor->var17 = v25;
      return self->valid;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

- (CGRect)readRect
{
  [(CPFontInfo *)self readFloat];
  v4 = v3;
  [(CPFontInfo *)self readFloat];
  v6 = v5;
  [(CPFontInfo *)self readFloat];
  v8 = v7;
  [(CPFontInfo *)self readFloat];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (unsigned)readUnsignedLong
{
  readByte = [(CPFontInfo *)self readByte];
  readByte2 = [(CPFontInfo *)self readByte];
  readByte3 = [(CPFontInfo *)self readByte];
  return (readByte << 24) | (readByte2 << 16) | (readByte3 << 8) | [(CPFontInfo *)self readByte];
}

- (unsigned)readByte
{
  offset = self->offset;
  if (offset >= self->fontDataLength)
  {
    v4 = 0;
    self->valid = 0;
  }

  else
  {
    dataPtr = self->dataPtr;
    self->offset = offset + 1;
    return dataPtr[offset];
  }

  return v4;
}

- (void)dealloc
{
  [(CPFontInfo *)self dispose];
  v3.receiver = self;
  v3.super_class = CPFontInfo;
  [(CPFontInfo *)&v3 dealloc];
}

- (void)finalize
{
  [(CPFontInfo *)self dispose];
  v3.receiver = self;
  v3.super_class = CPFontInfo;
  [(CPFontInfo *)&v3 finalize];
}

- (void)dispose
{
  fontData = self->fontData;
  if (fontData)
  {
    CFRelease(fontData);
    self->fontData = 0;
  }
}

- (CPFontInfo)initWithFontData:(__CFData *)data
{
  v4 = [(CPFontInfo *)self init];
  v5 = v4;
  if (v4)
  {
    if (data)
    {
      Length = CFDataGetLength(data);
      v5->fontDataLength = Length;
      if (Length)
      {
        v7 = CFRetain(data);
        v5->fontData = v7;
        v5->dataPtr = CFDataGetBytePtr(v7);
      }
    }

    else
    {
      v4->fontDataLength = 0;
    }

    v5->valid = 1;
  }

  return v5;
}

@end