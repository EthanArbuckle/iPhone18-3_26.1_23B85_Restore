@interface ATMessageParser
- (ATMessageParser)initWithMessageClass:(Class)a3;
- (BOOL)_parseObjectFromData:(id)a3;
- (BOOL)_parseObjectLength:(const char *)a3 length:(unint64_t)a4 bytesConsumed:(unint64_t *)a5;
- (BOOL)processData:(const char *)a3 length:(int64_t)a4;
- (void)dealloc;
@end

@implementation ATMessageParser

- (BOOL)processData:(const char *)a3 length:(int64_t)a4
{
  if (a4 >= 1)
  {
    v5 = a4;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      curObjectLength = self->_curObjectLength;
      if (curObjectLength)
      {
        VarIntBuf = 1;
      }

      else
      {
        varIntDataLen = self->_varIntDataLen;
        if (10 - varIntDataLen >= v5 - v7)
        {
          v12 = v5 - v7;
        }

        else
        {
          v12 = 10 - varIntDataLen;
        }

        memcpy(&self->_varIntBuf[varIntDataLen], &a3[v7], v12);
        v13 = self->_varIntDataLen + v12;
        self->_varIntDataLen = v13;
        if (v13 == 10)
        {
          v33 = 0;
          v34 = 0;
          VarIntBuf = PBReaderReadVarIntBuf();
          if (VarIntBuf)
          {
            v14 = v34;
            self->_curObjectLength = v33;
            if (v14 >= varIntDataLen)
            {
              v7 = v7 - varIntDataLen + v14;
            }

            else
            {
              if (v7)
              {
                v26 = [MEMORY[0x277CCA890] currentHandler];
                [v26 handleFailureInMethod:a2 object:self file:@"ATMessageParser.m" lineNumber:115 description:{@"detected partial varIntBuffer but readOffset=%d (expected 0)", v7}];
              }

              v8 = malloc_type_malloc(varIntDataLen + v5, 0x46ACBAuLL);
              memcpy(v8, self->_varIntBuf, varIntDataLen);
              memcpy(&v8[varIntDataLen], a3, v5);
              v7 = v34;
              v5 += varIntDataLen;
              a3 = v8;
            }
          }

          else
          {
            v15 = [ATInternalError errorWithCode:1 format:@"Couldn't read the size of the next object from the server"];
            parserError = self->_parserError;
            self->_parserError = v15;

            v17 = _ATLogCategoryFramework();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_22392A000, v17, OS_LOG_TYPE_ERROR, "Couldn't read length from input stream", buf, 2u);
            }
          }

          self->_varIntDataLen = 0;
        }

        else
        {
          v7 += v12;
          VarIntBuf = 1;
        }

        curObjectLength = self->_curObjectLength;
        if (!curObjectLength)
        {
          goto LABEL_31;
        }
      }

      v18 = v5 - v7;
      objectDataBuffer = self->_objectDataBuffer;
      if (objectDataBuffer)
      {
        objectDataLen = self->_objectDataLen;
        if (v18 >= curObjectLength - objectDataLen)
        {
          v18 = curObjectLength - objectDataLen;
        }

        memcpy(&objectDataBuffer[objectDataLen], &a3[v7], v18);
        v21 = self->_objectDataLen + v18;
        self->_objectDataLen = v21;
        if (v21 == self->_curObjectLength)
        {
          v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:self->_objectDataBuffer length:? freeWhenDone:?];
          VarIntBuf = [(ATMessageParser *)self _parseObjectFromData:v22];
          free(self->_objectDataBuffer);
          self->_curObjectLength = 0;
          self->_objectDataBuffer = 0;
        }

        v7 += v18;
      }

      else if (v18 >= curObjectLength)
      {
        v24 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&a3[v7] length:? freeWhenDone:?];
        VarIntBuf = [(ATMessageParser *)self _parseObjectFromData:v24];
        v7 += self->_curObjectLength;
        self->_curObjectLength = 0;
      }

      else
      {
        v23 = malloc_type_malloc(curObjectLength, 0xCC521F64uLL);
        self->_objectDataBuffer = v23;
        if (!v23)
        {
          LOBYTE(VarIntBuf) = 0;
LABEL_40:
          if (v8)
          {
            free(v8);
          }

          return VarIntBuf;
        }

        memcpy(v23, &a3[v7], v5 - v7);
        self->_objectDataLen = v18;
        v7 = v5;
      }

LABEL_31:
      if (VarIntBuf)
      {
        v25 = v5 - 1 >= v7;
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        goto LABEL_40;
      }
    }
  }

  v27 = self->_objectDataBuffer;
  if (!v27)
  {
    LOBYTE(VarIntBuf) = 0;
    return VarIntBuf;
  }

  v28 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v27 length:self->_curObjectLength freeWhenDone:0];
  v29 = [(ATMessageParser *)self _parseObjectFromData:v28];
  self->_curObjectLength = 0;
  self->_objectDataBuffer = 0;

  return v29;
}

- (BOOL)_parseObjectLength:(const char *)a3 length:(unint64_t)a4 bytesConsumed:(unint64_t *)a5
{
  varIntDataLen = self->_varIntDataLen;
  if (10 - varIntDataLen >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = 10 - varIntDataLen;
  }

  memcpy(&self->_varIntBuf[varIntDataLen], a3, v8);
  v9 = self->_varIntDataLen + v8;
  self->_varIntDataLen = v9;
  if (v9 == 10)
  {
    VarIntBuf = PBReaderReadVarIntBuf();
    if (VarIntBuf)
    {
      *a5 = -varIntDataLen;
      self->_curObjectLength = 0;
    }

    self->_varIntDataLen = 0;
  }

  else
  {
    *a5 = v8;
    LOBYTE(VarIntBuf) = 1;
  }

  return VarIntBuf;
}

- (BOOL)_parseObjectFromData:(id)a3
{
  v5 = MEMORY[0x277D43170];
  v6 = a3;
  v7 = [[v5 alloc] initWithData:v6];

  if (![(ATMessageParser *)self messageClass])
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 handleFailureInMethod:a2 object:self file:@"ATMessageParser.m" lineNumber:40 description:{@"You can't use %@ without setting a message class", v15}];
  }

  v8 = objc_alloc_init([(ATMessageParser *)self messageClass]);
  v9 = [v8 readFrom:v7];
  if (v9)
  {
    objectParsedBlock = self->_objectParsedBlock;
    if (objectParsedBlock)
    {
      objectParsedBlock[2](objectParsedBlock, v8);
    }
  }

  else
  {
    v11 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22392A000, v11, OS_LOG_TYPE_ERROR, "Error parsing message", buf, 2u);
    }
  }

  return v9;
}

- (void)dealloc
{
  objectDataBuffer = self->_objectDataBuffer;
  if (objectDataBuffer)
  {
    free(objectDataBuffer);
  }

  v4.receiver = self;
  v4.super_class = ATMessageParser;
  [(ATMessageParser *)&v4 dealloc];
}

- (ATMessageParser)initWithMessageClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = ATMessageParser;
  v4 = [(ATMessageParser *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_messageClass, a3);
  }

  return v5;
}

@end