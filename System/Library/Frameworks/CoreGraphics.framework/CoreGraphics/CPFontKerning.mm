@interface CPFontKerning
- (CPFontKerning)initWithCGFont:(CGFont *)font;
- (CPFontKerning)initWithKernData:(__CFData *)data;
- (__CFDictionary)createKernTable;
- (unsigned)readByte;
- (unsigned)readUnsignedLong;
- (void)dealloc;
- (void)dispose;
- (void)doKerningPair;
- (void)doOTSubtable;
- (void)doSubtableFormat0;
- (void)doTTSubtable;
- (void)doTable;
- (void)finalize;
@end

@implementation CPFontKerning

- (__CFDictionary)createKernTable
{
  kernTableLength = self->kernTableLength;
  if (!kernTableLength)
  {
    return 0;
  }

  self->kernDictionary = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], kernTableLength / 6uLL, 0, 0);
  self->offset = 0;
  [(CPFontKerning *)self doTable];
  result = self->kernDictionary;
  if (!self->valid)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

- (void)doTable
{
  if (!self->kernTableLength)
  {
    goto LABEL_9;
  }

  offset = self->offset;
  if ([(CPFontKerning *)self readUnsignedShort])
  {
    self->offset = offset;
    if ([(CPFontKerning *)self readUnsignedLong]== 0x10000)
    {
      readUnsignedLong = [(CPFontKerning *)self readUnsignedLong];
      if (readUnsignedLong)
      {
        v5 = readUnsignedLong;
        do
        {
          if (!self->valid)
          {
            break;
          }

          [(CPFontKerning *)self doTTSubtable];
          --v5;
        }

        while (v5);
      }

      return;
    }

LABEL_9:
    self->valid = 0;
    return;
  }

  readUnsignedShort = [(CPFontKerning *)self readUnsignedShort];
  if (readUnsignedShort)
  {
    v7 = readUnsignedShort;
    do
    {
      if (!self->valid)
      {
        break;
      }

      [(CPFontKerning *)self doOTSubtable];
      --v7;
    }

    while (v7);
  }
}

- (void)doOTSubtable
{
  offset = self->offset;
  self->offset = offset + 2;
  readUnsignedShort = [(CPFontKerning *)self readUnsignedShort];
  readUnsignedShort2 = [(CPFontKerning *)self readUnsignedShort];
  if ((readUnsignedShort2 & 7) == 1)
  {
    self->override = (readUnsignedShort2 & 8) != 0;
    if (readUnsignedShort2 >> 8 == 2)
    {
      [(CPFontKerning *)self doSubtableFormat2];
    }

    else if (!(readUnsignedShort2 >> 8))
    {
      [(CPFontKerning *)self doSubtableFormat0];
    }
  }

  if (self->offset > offset + readUnsignedShort)
  {
    self->valid = 0;
  }

  self->offset = offset + readUnsignedShort;
}

- (void)doTTSubtable
{
  offset = self->offset;
  readUnsignedLong = [(CPFontKerning *)self readUnsignedLong];
  readUnsignedShort = [(CPFontKerning *)self readUnsignedShort];
  self->offset += 2;
  if ((readUnsignedShort & 0xE000) == 0)
  {
    if (readUnsignedShort > 1u)
    {
      if (readUnsignedShort == 2)
      {
        [(CPFontKerning *)self doSubtableFormat2];
      }

      else if (readUnsignedShort == 3)
      {
        [(CPFontKerning *)self doSubtableFormat3];
      }
    }

    else if (readUnsignedShort)
    {
      if (readUnsignedShort == 1)
      {
        [(CPFontKerning *)self doSubtableFormat1];
      }
    }

    else
    {
      [(CPFontKerning *)self doSubtableFormat0];
    }
  }

  if (self->offset > readUnsignedLong + offset)
  {
    self->valid = 0;
  }

  self->offset = readUnsignedLong + offset;
}

- (void)doSubtableFormat0
{
  readUnsignedShort = [(CPFontKerning *)self readUnsignedShort];
  self->offset += 6;
  if (readUnsignedShort)
  {
    v4 = readUnsignedShort;
    do
    {
      if (!self->valid)
      {
        break;
      }

      [(CPFontKerning *)self doKerningPair];
      --v4;
    }

    while (v4);
  }
}

- (void)doKerningPair
{
  readUnsignedShort = [(CPFontKerning *)self readUnsignedShort];
  readUnsignedShort2 = [(CPFontKerning *)self readUnsignedShort];
  readUnsignedShort3 = [(CPFontKerning *)self readUnsignedShort];
  if (self->valid)
  {
    v6 = readUnsignedShort3;
    v7 = (readUnsignedShort2 | (readUnsignedShort << 16));
    if (CFDictionaryContainsKey(self->kernDictionary, v7))
    {
      if (!self->override)
      {
        LOWORD(v6) = v6 + CFDictionaryGetValue(self->kernDictionary, v7);
      }

      kernDictionary = self->kernDictionary;

      CFDictionaryReplaceValue(kernDictionary, v7, v6);
    }

    else
    {
      v9 = self->kernDictionary;

      CFDictionaryAddValue(v9, v7, v6);
    }
  }
}

- (unsigned)readUnsignedLong
{
  readByte = [(CPFontKerning *)self readByte];
  readByte2 = [(CPFontKerning *)self readByte];
  readByte3 = [(CPFontKerning *)self readByte];
  return (readByte << 24) | (readByte2 << 16) | (readByte3 << 8) | [(CPFontKerning *)self readByte];
}

- (unsigned)readByte
{
  offset = self->offset;
  if (offset >= self->kernTableLength)
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
  [(CPFontKerning *)self dispose];
  v3.receiver = self;
  v3.super_class = CPFontKerning;
  [(CPFontKerning *)&v3 dealloc];
}

- (void)finalize
{
  [(CPFontKerning *)self dispose];
  v3.receiver = self;
  v3.super_class = CPFontKerning;
  [(CPFontKerning *)&v3 finalize];
}

- (void)dispose
{
  kernTable = self->kernTable;
  if (kernTable)
  {
    CFRelease(kernTable);
    self->kernTable = 0;
  }
}

- (CPFontKerning)initWithCGFont:(CGFont *)font
{
  if (font)
  {
    v4 = (*(*(font + 2) + 432))(*(font + 14), 1801810542);
    v5 = [(CPFontKerning *)self initWithKernData:v4];
    if (v4)
    {
      CFRelease(v4);
    }

    return v5;
  }

  else
  {

    return [(CPFontKerning *)self initWithKernData:?];
  }
}

- (CPFontKerning)initWithKernData:(__CFData *)data
{
  v4 = [(CPFontKerning *)self init];
  v5 = v4;
  if (v4)
  {
    if (data)
    {
      Length = CFDataGetLength(data);
      v5->kernTableLength = Length;
      if (Length)
      {
        v7 = CFRetain(data);
        v5->kernTable = v7;
        v5->dataPtr = CFDataGetBytePtr(v7);
      }
    }

    else
    {
      v4->kernTableLength = 0;
    }

    *&v5->override = 256;
  }

  return v5;
}

@end