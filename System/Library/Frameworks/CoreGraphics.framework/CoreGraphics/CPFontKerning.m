@interface CPFontKerning
- (CPFontKerning)initWithCGFont:(CGFont *)a3;
- (CPFontKerning)initWithKernData:(__CFData *)a3;
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
      v4 = [(CPFontKerning *)self readUnsignedLong];
      if (v4)
      {
        v5 = v4;
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

  v6 = [(CPFontKerning *)self readUnsignedShort];
  if (v6)
  {
    v7 = v6;
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
  v4 = [(CPFontKerning *)self readUnsignedShort];
  v5 = [(CPFontKerning *)self readUnsignedShort];
  if ((v5 & 7) == 1)
  {
    self->override = (v5 & 8) != 0;
    if (v5 >> 8 == 2)
    {
      [(CPFontKerning *)self doSubtableFormat2];
    }

    else if (!(v5 >> 8))
    {
      [(CPFontKerning *)self doSubtableFormat0];
    }
  }

  if (self->offset > offset + v4)
  {
    self->valid = 0;
  }

  self->offset = offset + v4;
}

- (void)doTTSubtable
{
  offset = self->offset;
  v4 = [(CPFontKerning *)self readUnsignedLong];
  v5 = [(CPFontKerning *)self readUnsignedShort];
  self->offset += 2;
  if ((v5 & 0xE000) == 0)
  {
    if (v5 > 1u)
    {
      if (v5 == 2)
      {
        [(CPFontKerning *)self doSubtableFormat2];
      }

      else if (v5 == 3)
      {
        [(CPFontKerning *)self doSubtableFormat3];
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        [(CPFontKerning *)self doSubtableFormat1];
      }
    }

    else
    {
      [(CPFontKerning *)self doSubtableFormat0];
    }
  }

  if (self->offset > v4 + offset)
  {
    self->valid = 0;
  }

  self->offset = v4 + offset;
}

- (void)doSubtableFormat0
{
  v3 = [(CPFontKerning *)self readUnsignedShort];
  self->offset += 6;
  if (v3)
  {
    v4 = v3;
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
  v3 = [(CPFontKerning *)self readUnsignedShort];
  v4 = [(CPFontKerning *)self readUnsignedShort];
  v5 = [(CPFontKerning *)self readUnsignedShort];
  if (self->valid)
  {
    v6 = v5;
    v7 = (v4 | (v3 << 16));
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
  v3 = [(CPFontKerning *)self readByte];
  v4 = [(CPFontKerning *)self readByte];
  v5 = [(CPFontKerning *)self readByte];
  return (v3 << 24) | (v4 << 16) | (v5 << 8) | [(CPFontKerning *)self readByte];
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

- (CPFontKerning)initWithCGFont:(CGFont *)a3
{
  if (a3)
  {
    v4 = (*(*(a3 + 2) + 432))(*(a3 + 14), 1801810542);
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

- (CPFontKerning)initWithKernData:(__CFData *)a3
{
  v4 = [(CPFontKerning *)self init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      Length = CFDataGetLength(a3);
      v5->kernTableLength = Length;
      if (Length)
      {
        v7 = CFRetain(a3);
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