@interface ENProtobufCoder
- (BOOL)_skipLength:(unint64_t)a3 error:(id *)a4;
- (BOOL)_writeBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)readFixedDouble:(double *)a3 error:(id *)a4;
- (BOOL)readFixedFloat:(float *)a3 error:(id *)a4;
- (BOOL)readFixedSInt32:(int *)a3 error:(id *)a4;
- (BOOL)readFixedSInt64:(int64_t *)a3 error:(id *)a4;
- (BOOL)readFixedUInt32:(unsigned int *)a3 error:(id *)a4;
- (BOOL)readFixedUInt64:(unint64_t *)a3 error:(id *)a4;
- (BOOL)readType:(char *)a3 tag:(unint64_t *)a4 eofOkay:(BOOL)a5 error:(id *)a6;
- (BOOL)readVarIntBoolean:(BOOL *)a3 error:(id *)a4;
- (BOOL)readVarIntInt32:(int *)a3 error:(id *)a4;
- (BOOL)readVarIntSInt32:(int *)a3 error:(id *)a4;
- (BOOL)readVarIntSInt64:(int64_t *)a3 error:(id *)a4;
- (BOOL)readVarIntUInt32:(unsigned int *)a3 error:(id *)a4;
- (BOOL)readVarIntUInt64:(unint64_t *)a3 error:(id *)a4;
- (BOOL)skipType:(unsigned __int8)a3 error:(id *)a4;
- (BOOL)writeFixedDouble:(double)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeFixedFloat:(float)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeFixedSInt32:(int)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeFixedSInt64:(int64_t)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeFixedUInt32:(unsigned int)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeFixedUInt64:(unint64_t)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeLengthDelimitedPtr:(const void *)a3 length:(unint64_t)a4 tag:(unint64_t)a5 error:(id *)a6;
- (BOOL)writeNSData:(id)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeNSString:(id)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeVarInt:(unint64_t)a3 error:(id *)a4;
- (BOOL)writeVarIntBoolean:(BOOL)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeVarIntSInt32:(int)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeVarIntSInt64:(int64_t)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeVarIntUInt32:(unsigned int)a3 tag:(unint64_t)a4 error:(id *)a5;
- (BOOL)writeVarIntUInt64:(unint64_t)a3 tag:(unint64_t)a4 error:(id *)a5;
- (ENProtobufCoder)init;
- (const)_readLength:(unint64_t)a3 eofOkay:(BOOL)a4 error:(id *)a5;
- (const)readLengthDelimited:(unint64_t *)a3 error:(id *)a4;
- (id)dequeueOrCreateSubCoder;
- (id)readNSDataAndReturnError:(id *)a3;
- (id)readNSStringAndReturnError:(id *)a3;
- (void)enqueueSubCoder:(id)a3;
- (void)prepareForReuse;
- (void)setFileHandle:(__sFILE *)a3;
- (void)setReadArchive:(id)a3;
- (void)setReadMemory:(const void *)a3 length:(unint64_t)a4;
- (void)setWriteMemory:(void *)a3 length:(unint64_t)a4;
- (void)setWriteMutableData:(id)a3;
@end

@implementation ENProtobufCoder

- (ENProtobufCoder)init
{
  v6.receiver = self;
  v6.super_class = ENProtobufCoder;
  v2 = [(ENProtobufCoder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_bufferMaxSize = 0x20000;
    v4 = v2;
  }

  return v3;
}

- (void)setReadMemory:(const void *)a3 length:(unint64_t)a4
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  self->_readBase = a3;
  self->_readSrc = a3;
  self->_readEnd = a3 + a4;
  *&self->_writeBase = 0u;
  *&self->_writeLim = 0u;
  bufferData = self->_bufferData;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (void)setWriteMemory:(void *)a3 length:(unint64_t)a4
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  self->_readBase = 0;
  self->_readSrc = 0;
  self->_readEnd = 0;
  self->_writeBase = a3;
  self->_writeDst = a3;
  self->_writeLim = a3 + a4;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (void)setWriteMutableData:(id)a3
{
  v4 = a3;
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  *&self->_readBase = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = v4;

  self->_bufferOffset = 0;
}

- (void)setFileHandle:(__sFILE *)a3
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  *&self->_readBase = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = a3;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (void)setReadArchive:(id)a3
{
  objc_storeStrong(&self->_readArchive, a3);
  v5 = a3;
  *&self->_readBase = 0u;
  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (id)dequeueOrCreateSubCoder
{
  v2 = [(NSMutableArray *)self->_subCoders popFirstObject];
  if (v2)
  {
    v3 = v2;
    [(ENProtobufCoder *)v2 prepareForReuse];
  }

  else
  {
    v3 = objc_alloc_init(ENProtobufCoder);
  }

  return v3;
}

- (void)enqueueSubCoder:(id)a3
{
  v4 = a3;
  subCoders = self->_subCoders;
  v8 = v4;
  if (!subCoders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subCoders;
    self->_subCoders = v6;

    v4 = v8;
    subCoders = self->_subCoders;
  }

  [(NSMutableArray *)subCoders addObject:v4];
}

- (void)prepareForReuse
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  *&self->_readBase = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (BOOL)writeNSData:(id)a3 tag:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a3;
  v11 = [v10 bytes];
  v12 = [v10 length];

  return [(ENProtobufCoder *)self writeLengthDelimitedPtr:v11 length:v12 tag:a4 error:a5];
}

- (BOOL)writeNSString:(id)a3 tag:(unint64_t)a4 error:(id *)a5
{
  v9 = a3;
  v10 = [a3 UTF8String];
  v11 = strlen(v10);

  return [(ENProtobufCoder *)self writeLengthDelimitedPtr:v10 length:v11 tag:a4 error:a5];
}

- (BOOL)writeVarInt:(unint64_t)a3 error:(id *)a4
{
  while (a3 >= 0x80)
  {
    v9 = a3 | 0x80;
    a3 >>= 7;
    if (![(ENProtobufCoder *)self _writeBytes:&v9 length:1 error:a4])
    {
      return 0;
    }
  }

  v8 = a3;
  return [(ENProtobufCoder *)self _writeBytes:&v8 length:1 error:a4];
}

- (const)_readLength:(unint64_t)a3 eofOkay:(BOOL)a4 error:(id *)a5
{
  readSrc = self->_readSrc;
  if (readSrc)
  {
    if (self->_readEnd - readSrc < a3)
    {
      if (a5)
      {
        if (a4)
        {
          readSrc = 0;
          *a5 = 0;
          return readSrc;
        }

        v18 = *MEMORY[0x277CCA590];
        v19 = NSErrorF();
        *a5 = v19;
      }

      return 0;
    }

    self->_readSrc = &readSrc[a3];
    return readSrc;
  }

  fileHandle = self->_fileHandle;
  v10 = self->_readArchive;
  if (!(fileHandle | v10))
  {
    if (!a5)
    {
      goto LABEL_24;
    }

    v11 = *MEMORY[0x277CCA590];
    goto LABEL_14;
  }

  if (self->_bufferMaxSize < a3)
  {
    if (!a5)
    {
      goto LABEL_24;
    }

    v20 = *MEMORY[0x277CCA590];
LABEL_14:
    NSErrorF();
    *a5 = readSrc = 0;
    goto LABEL_25;
  }

  if (a3 <= 0x100)
  {
    readSrc = self->_staticBuffer;
    if (!fileHandle)
    {
      goto LABEL_8;
    }

LABEL_19:
    if (fread(readSrc, 1uLL, a3, fileHandle) != a3)
    {
      if (a5)
      {
        if (feof(fileHandle))
        {
          readSrc = 0;
          *a5 = 0;
          goto LABEL_25;
        }

        v15 = *MEMORY[0x277CCA590];
        v25 = *__error();
        v16 = NSErrorF();
        *a5 = v16;
      }

LABEL_24:
      readSrc = 0;
    }

LABEL_25:

    return readSrc;
  }

  v12 = self->_bufferData;
  if (v12)
  {
    v13 = v12;
    [(NSMutableData *)v12 setLength:a3];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:a3];
    bufferData = self->_bufferData;
    self->_bufferData = v13;
  }

  readSrc = [(NSMutableData *)v13 mutableBytes];

  if (fileHandle)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v10)
  {
    if (([v10 readDataIntoBuffer:readSrc length:a3 error:a5] & 1) == 0)
    {
      readSrc = 0;
    }

    goto LABEL_25;
  }

  v21 = FatalErrorF();
  return [(ENProtobufCoder *)v21 _skipLength:v22 error:v23, v24];
}

- (BOOL)_skipLength:(unint64_t)a3 error:(id *)a4
{
  readSrc = self->_readSrc;
  if (readSrc)
  {
    if (self->_readEnd - readSrc >= a3)
    {
      self->_readSrc = &readSrc[a3];
      return 1;
    }

    if (a4)
    {
      v13 = *MEMORY[0x277CCA590];
      goto LABEL_14;
    }

    return 0;
  }

  if (self->_fileHandle)
  {
    v7 = 1;
    if (fseeko(self->_fileHandle, a3, 1) && (!*__error() || *__error()))
    {
      if (a4)
      {
        v11 = *MEMORY[0x277CCA590];
LABEL_14:
        NSErrorF();
        *a4 = v7 = 0;
        return v7;
      }

      return 0;
    }
  }

  else
  {
    v9 = self->_readArchive;
    v10 = v9;
    if (v9)
    {
      v7 = [(ENArchive *)v9 skipBytes:a3 error:a4];
    }

    else if (a4)
    {
      v12 = *MEMORY[0x277CCA590];
      NSErrorF();
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_writeBytes:(const void *)a3 length:(unint64_t)a4 error:(id *)a5
{
  writeDst = self->_writeDst;
  if (writeDst)
  {
    if (self->_writeLim - writeDst < a4)
    {
      if (a5)
      {
        v15 = *MEMORY[0x277CCA590];
        NSErrorF();
        *a5 = v10 = 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      memcpy(self->_writeDst, a3, a4);
      self->_writeDst = &writeDst[a4];
      return 1;
    }

    return v10;
  }

  fileHandle = self->_fileHandle;
  if (!fileHandle)
  {
    v12 = self->_bufferData;
    v13 = v12;
    if (v12)
    {
      if (self->_bufferMaxSize - self->_bufferOffset >= a4)
      {
        [(NSMutableData *)v12 appendBytes:a3 length:a4];
        self->_bufferOffset += a4;
        v10 = 1;
LABEL_19:

        return v10;
      }

      if (a5)
      {
        v16 = *MEMORY[0x277CCA590];
        goto LABEL_12;
      }
    }

    else if (a5)
    {
      v14 = *MEMORY[0x277CCA590];
LABEL_12:
      NSErrorF();
      *a5 = v10 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    goto LABEL_19;
  }

  v10 = 1;
  if (fwrite(a3, 1uLL, a4, fileHandle) != a4)
  {
    [ENProtobufCoder _writeBytes:a5 length:&v18 error:?];
    return v18;
  }

  return v10;
}

- (BOOL)readType:(char *)a3 tag:(unint64_t *)a4 eofOkay:(BOOL)a5 error:(id *)a6
{
  OUTLINED_FUNCTION_2_2();
  v14 = 0;
  v11 = [v8 readVarInt:&v14 eofOkay:v9 error:v10];
  if (v11)
  {
    v12 = v14;
    *v7 = v14 >> 3;
    *v6 = v12 & 7;
  }

  return v11;
}

- (const)readLengthDelimited:(unint64_t *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_0_5();
  if (![v7 readVarInt:? eofOkay:? error:?])
  {
    return 0;
  }

  v8 = v6;
  OUTLINED_FUNCTION_4_3();
  result = [v9 _readLength:? eofOkay:? error:?];
  if (result)
  {
    *v4 = v11;
  }

  return result;
}

- (BOOL)writeLengthDelimitedPtr:(const void *)a3 length:(unint64_t)a4 tag:(unint64_t)a5 error:(id *)a6
{
  if (![(ENProtobufCoder *)self writeVarInt:(8 * a5) | 2 error:a6]|| ![(ENProtobufCoder *)self writeVarInt:a4 error:a6])
  {
    return 0;
  }

  return [(ENProtobufCoder *)self _writeBytes:a3 length:a4 error:a6];
}

- (BOOL)skipType:(unsigned __int8)a3 error:(id *)a4
{
  v5 = self;
  switch(a3)
  {
    case 0u:
      OUTLINED_FUNCTION_3_3();
      if ([v6 readVarInt:? eofOkay:? error:?])
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    case 1u:
      v9 = 8;
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_3_3();
      v8 = [v7 readVarInt:? eofOkay:? error:?];
      if (!v8)
      {
        return v8;
      }

      v9 = 0;
      self = v5;
LABEL_8:
      if ([(ENProtobufCoder *)self _skipLength:v9 error:a4])
      {
LABEL_9:
        LOBYTE(v8) = 1;
      }

      else
      {
LABEL_12:
        LOBYTE(v8) = 0;
      }

      break;
    case 5u:
      v9 = 4;
      goto LABEL_8;
    default:
      if (!a4)
      {
        goto LABEL_12;
      }

      v10 = *MEMORY[0x277CCA590];
      v11 = NSErrorF();
      LOBYTE(v8) = OUTLINED_FUNCTION_11_0();
      break;
  }

  return v8;
}

- (id)readNSDataAndReturnError:(id *)a3
{
  OUTLINED_FUNCTION_0_5();
  if (![v5 readVarInt:? eofOkay:? error:?])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_7;
  }

  if (v14 == -1)
  {
    if (a3)
    {
      v12 = *MEMORY[0x277CCA590];
      NSErrorF();
      *a3 = v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v6 = self;
  OUTLINED_FUNCTION_3_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 length:v14];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (a3)
    {
      v13 = *MEMORY[0x277CCA590];
      *a3 = NSErrorF();
    }
  }

LABEL_7:

  return v8;
}

- (id)readNSStringAndReturnError:(id *)a3
{
  OUTLINED_FUNCTION_0_5();
  if (![v5 readVarInt:? eofOkay:? error:?])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_7;
  }

  if (v14 == -1)
  {
    if (a3)
    {
      v12 = *MEMORY[0x277CCA590];
      NSErrorF();
      *a3 = v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v6 = self;
  OUTLINED_FUNCTION_3_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v8 length:v14 encoding:4];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (a3)
    {
      v13 = *MEMORY[0x277CCA590];
      *a3 = NSErrorF();
    }
  }

LABEL_7:

  return v8;
}

- (BOOL)readVarIntSInt32:(int *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *a3 = -(v8 & 1) ^ (v8 >> 1);
  }

  return v6;
}

- (BOOL)writeVarIntSInt32:(int)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readVarIntInt32:(int *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_0_5();
  v7 = [v6 readVarInt:? eofOkay:? error:?];
  if (v7)
  {
    if (v11 == v11)
    {
      *a3 = v11;
      LOBYTE(v7) = 1;
    }

    else if (a4)
    {
      v8 = *MEMORY[0x277CCA590];
      v9 = NSErrorF();
      LOBYTE(v7) = OUTLINED_FUNCTION_11_0();
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)readVarIntUInt32:(unsigned int *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_0_5();
  v7 = [v6 readVarInt:? eofOkay:? error:?];
  if (v7)
  {
    if (HIDWORD(v11))
    {
      if (a4)
      {
        v8 = *MEMORY[0x277CCA590];
        v9 = NSErrorF();
        LOBYTE(v7) = OUTLINED_FUNCTION_11_0();
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      *a3 = v11;
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (BOOL)writeVarIntUInt32:(unsigned int)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readVarIntSInt64:(int64_t *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *a3 = -(v8 & 1) ^ (v8 >> 1);
  }

  return v6;
}

- (BOOL)writeVarIntSInt64:(int64_t)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readVarIntUInt64:(unint64_t *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *a3 = v8;
  }

  return v6;
}

- (BOOL)writeVarIntUInt64:(unint64_t)a3 tag:(unint64_t)a4 error:(id *)a5
{
  v8 = OUTLINED_FUNCTION_9_0(self, a2, a3, a4, a5);
  if (v8)
  {

    LOBYTE(v8) = [(ENProtobufCoder *)self writeVarInt:a3 error:a5];
  }

  return v8;
}

- (BOOL)readVarIntBoolean:(BOOL *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *a3 = v8 != 0;
  }

  return v6;
}

- (BOOL)writeVarIntBoolean:(BOOL)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readFixedFloat:(float *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedFloat:(float)a3 tag:(unint64_t)a4 error:(id *)a5
{
  v5 = LOBYTE(a3);
  v6 = [(ENProtobufCoder *)self writeVarInt:(8 * a4) | 5 error:?];
  if (v6)
  {
    LOBYTE(v6) = OUTLINED_FUNCTION_6_0(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v5);
  }

  return v6;
}

- (BOOL)readFixedSInt32:(int *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedSInt32:(int)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v9 = [v7 writeVarInt:(8 * v6) | 5 error:v8];
  if (v9)
  {
    LOBYTE(v9) = OUTLINED_FUNCTION_6_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v5);
  }

  return v9;
}

- (BOOL)readFixedUInt32:(unsigned int *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedUInt32:(unsigned int)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v9 = [v7 writeVarInt:(8 * v6) | 5 error:v8];
  if (v9)
  {
    LOBYTE(v9) = OUTLINED_FUNCTION_6_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v5);
  }

  return v9;
}

- (BOOL)readFixedDouble:(double *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedDouble:(double)a3 tag:(unint64_t)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [(ENProtobufCoder *)self writeVarInt:(8 * a4) | 1 error:?];
  if (v6)
  {
    LOBYTE(v6) = OUTLINED_FUNCTION_5_2(v6, v7, v8, v9, v10, v11, v12, v13, *&a3);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)readFixedSInt64:(int64_t *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedSInt64:(int64_t)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v6 = *MEMORY[0x277D85DE8];
  v12 = OUTLINED_FUNCTION_12_0(v7, v8, v9, v10, v11);
  if (v12)
  {
    LOBYTE(v12) = OUTLINED_FUNCTION_5_2(v12, v13, v14, v15, v16, v17, v18, v19, v5);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)readFixedUInt64:(unint64_t *)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedUInt64:(unint64_t)a3 tag:(unint64_t)a4 error:(id *)a5
{
  OUTLINED_FUNCTION_1_3();
  v6 = *MEMORY[0x277D85DE8];
  v12 = OUTLINED_FUNCTION_12_0(v7, v8, v9, v10, v11);
  if (v12)
  {
    LOBYTE(v12) = OUTLINED_FUNCTION_5_2(v12, v13, v14, v15, v16, v17, v18, v19, v5);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)_writeBytes:(void *)result length:(_BYTE *)a2 error:.cold.1(void *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x277CCA590];
    v5 = *__error();
    result = NSErrorF();
    *v3 = result;
  }

  *a2 = 0;
  return result;
}

@end