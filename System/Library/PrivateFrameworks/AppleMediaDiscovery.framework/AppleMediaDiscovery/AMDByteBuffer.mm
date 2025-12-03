@interface AMDByteBuffer
- (AMDByteBuffer)initWithInputStream:(id)stream withFileSize:(unint64_t)size;
- (BOOL)hasRemaining;
- (id)getDataOfLength:(int)length error:(id *)error;
- (int)getIntWithError:(id *)error;
- (int64_t)getLongWithError:(id *)error;
- (signed)getShortWithError:(id *)error;
- (unsigned)getByteWithError:(id *)error;
- (void)copyDataOfLength:(unint64_t)length toFile:(id)file isCompressed:(BOOL)compressed error:(id *)error;
@end

@implementation AMDByteBuffer

- (AMDByteBuffer)initWithInputStream:(id)stream withFileSize:(unint64_t)size
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stream);
  sizeCopy = size;
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AMDByteBuffer;
  selfCopy = [(AMDByteBuffer *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  [(AMDByteBuffer *)selfCopy setInputStream:location[0]];
  [(AMDByteBuffer *)selfCopy setReadPosition:0];
  [(AMDByteBuffer *)selfCopy setFileSize:sizeCopy];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (BOOL)hasRemaining
{
  inputStream = [(AMDByteBuffer *)self inputStream];
  v5 = 0;
  if ([(NSInputStream *)inputStream hasBytesAvailable])
  {
    readPosition = [(AMDByteBuffer *)self readPosition];
    v5 = readPosition < [(AMDByteBuffer *)self fileSize];
  }

  MEMORY[0x277D82BD8](inputStream);
  return v5;
}

- (unsigned)getByteWithError:(id *)error
{
  selfCopy = self;
  v13 = a2;
  errorCopy = error;
  v10 = [(AMDByteBuffer *)self readPosition]+ 1;
  if (v10 <= [(AMDByteBuffer *)selfCopy fileSize])
  {
    inputStream = [(AMDByteBuffer *)selfCopy inputStream];
    v8 = [(NSInputStream *)inputStream read:&v11 maxLength:1];
    MEMORY[0x277D82BD8](inputStream);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)selfCopy setReadPosition:[(AMDByteBuffer *)selfCopy readPosition]+ 1];
      return v11;
    }

    else
    {
      v6 = [AMDError allocError:6 withMessage:@"insufficient data to read byte"];
      v4 = v6;
      *errorCopy = v6;
      return 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read byte"];
    v3 = v9;
    *errorCopy = v9;
    return 0;
  }
}

- (signed)getShortWithError:(id *)error
{
  selfCopy = self;
  v16 = a2;
  errorCopy = error;
  v10 = [(AMDByteBuffer *)self readPosition]+ 2;
  if (v10 <= [(AMDByteBuffer *)selfCopy fileSize])
  {
    inputStream = [(AMDByteBuffer *)selfCopy inputStream];
    v8 = [(NSInputStream *)inputStream read:v14 maxLength:2];
    MEMORY[0x277D82BD8](inputStream);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)selfCopy setReadPosition:[(AMDByteBuffer *)selfCopy readPosition]+ 2];
      v13 = 0;
      v12 = 8;
      for (i = 0; i != 2; ++i)
      {
        v13 |= v14[i] << v12;
        v12 -= 8;
      }

      return v13;
    }

    else
    {
      v6 = [AMDError allocError:6 withMessage:@"insufficient data to read short"];
      v4 = v6;
      *errorCopy = v6;
      return 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read short"];
    v3 = v9;
    *errorCopy = v9;
    return 0;
  }
}

- (int)getIntWithError:(id *)error
{
  selfCopy = self;
  v16 = a2;
  errorCopy = error;
  v10 = [(AMDByteBuffer *)self readPosition]+ 4;
  if (v10 <= [(AMDByteBuffer *)selfCopy fileSize])
  {
    inputStream = [(AMDByteBuffer *)selfCopy inputStream];
    v8 = [(NSInputStream *)inputStream read:v14 maxLength:4];
    MEMORY[0x277D82BD8](inputStream);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)selfCopy setReadPosition:[(AMDByteBuffer *)selfCopy readPosition]+ 4];
      v13 = 0;
      v12 = 24;
      for (i = 0; i != 4; ++i)
      {
        v13 |= v14[i] << v12;
        v12 -= 8;
      }

      return v13;
    }

    else
    {
      v6 = [AMDError allocError:6 withMessage:@"insufficient data to read int"];
      v4 = v6;
      *errorCopy = v6;
      return 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read int"];
    v3 = v9;
    *errorCopy = v9;
    return 0;
  }
}

- (int64_t)getLongWithError:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = [(AMDByteBuffer *)self readPosition]+ 8;
  if (v10 <= [(AMDByteBuffer *)self fileSize])
  {
    inputStream = [(AMDByteBuffer *)self inputStream];
    v8 = [(NSInputStream *)inputStream read:v17 maxLength:8];
    MEMORY[0x277D82BD8](inputStream);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)self setReadPosition:[(AMDByteBuffer *)self readPosition]+ 8];
      v13 = 0;
      v12 = 56;
      for (i = 0; i != 8; ++i)
      {
        v13 |= v17[i] << v12;
        v12 -= 8;
      }

      v16 = v13;
    }

    else
    {
      v6 = [AMDError allocError:6 withMessage:@"insufficient data to read long"];
      v4 = v6;
      *error = v6;
      v16 = 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read long"];
    v3 = v9;
    *error = v9;
    v16 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v16;
}

- (id)getDataOfLength:(int)length error:(id *)error
{
  selfCopy = self;
  v19 = a2;
  lengthCopy = length;
  errorCopy = error;
  v12 = [(AMDByteBuffer *)self readPosition]+ length;
  if (v12 <= [(AMDByteBuffer *)selfCopy fileSize])
  {
    v15 = malloc_type_malloc(lengthCopy, 0x319C9EC8uLL);
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:lengthCopy];
    inputStream = [(AMDByteBuffer *)selfCopy inputStream];
    v10 = [(NSInputStream *)inputStream read:v15 maxLength:lengthCopy];
    MEMORY[0x277D82BD8](inputStream);
    v13[1] = v10;
    if (v10 > 0)
    {
      [(AMDByteBuffer *)selfCopy setReadPosition:[(AMDByteBuffer *)selfCopy readPosition]+ lengthCopy];
      v21 = MEMORY[0x277D82BE0](v14);
    }

    else
    {
      v13[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"insufficient data to read %d bytes", lengthCopy];
      v8 = [AMDError allocError:6 withMessage:v13[0]];
      v5 = v8;
      *errorCopy = v8;
      v21 = 0;
      objc_storeStrong(v13, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    lengthCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"insufficient data to read %d bytes", lengthCopy];
    v11 = [AMDError allocError:6 withMessage:lengthCopy];
    v4 = v11;
    *errorCopy = v11;
    v21 = 0;
    objc_storeStrong(&lengthCopy, 0);
  }

  v6 = v21;

  return v6;
}

- (void)copyDataOfLength:(unint64_t)length toFile:(id)file isCompressed:(BOOL)compressed error:(id *)error
{
  selfCopy = self;
  v55 = a2;
  lengthCopy = length;
  location = 0;
  objc_storeStrong(&location, file);
  compressedCopy = compressed;
  errorCopy = error;
  readPosition = [(AMDByteBuffer *)selfCopy readPosition];
  v30 = readPosition + lengthCopy;
  if (v30 > [(AMDByteBuffer *)selfCopy fileSize])
  {
    lengthCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"insufficient data to read %lu bytes", lengthCopy];
    v27 = [AMDError allocError:6 withMessage:lengthCopy];
    v7 = v27;
    *errorCopy = v27;
    v49 = 1;
    objc_storeStrong(&lengthCopy, 0);
LABEL_40:
    objc_storeStrong(&location, 0);
    return;
  }

  v48 = lengthCopy;
  v47 = 0;
  memset(&__b, 0, sizeof(__b));
  v45 = 4096;
  v44 = 0x4000;
  v43 = malloc_type_malloc(0x1000uLL, 0xC99CB1B1uLL);
  memset(&v42[3] + 7, 0, 9);
  v26 = MEMORY[0x277CBEB78];
  path = [location path];
  v8 = [v26 outputStreamToFileAtPath:? append:?];
  v9 = v47;
  v47 = v8;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](path);
  if (v47)
  {
    [v47 open];
    if (!compressedCopy)
    {
      goto LABEL_9;
    }

    if (compression_stream_init(&__b, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
    {
      v23 = [AMDError allocError:4 withMessage:@"could not initialize the compression stream"];
      v11 = v23;
      *errorCopy = v23;
      v49 = 1;
    }

    else
    {
      v42[4] = malloc_type_malloc(0x4000uLL, 0xDD745758uLL);
LABEL_9:
      while (v48)
      {
        v41 = 4096;
        if (v48 < 0x1000)
        {
          v41 = v48;
        }

        inputStream = [(AMDByteBuffer *)selfCopy inputStream];
        v22 = [(NSInputStream *)inputStream read:v43 maxLength:v41];
        MEMORY[0x277D82BD8](inputStream);
        v40 = v22;
        if (v22 <= 0)
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"error while reading from stream, remaining %lu", v48];
          v20 = [AMDError allocError:8 withMessage:v39];
          v12 = v20;
          *errorCopy = v20;
          v49 = 1;
          objc_storeStrong(&v39, 0);
          goto LABEL_29;
        }

        v48 -= v40;
        [(AMDByteBuffer *)selfCopy setReadPosition:[(AMDByteBuffer *)selfCopy readPosition]+ v40];
        if (compressedCopy)
        {
          v38 = 0;
          v37 = v48 == 0;
          __b.src_ptr = v43;
          __b.src_size = v40;
          while ((v38 & 1) == 0)
          {
            __b.dst_ptr = v42[4];
            __b.dst_size = 0x4000;
            v36 = compression_stream_process(&__b, v37);
            if (v36 == COMPRESSION_STATUS_ERROR)
            {
              v19 = [AMDError allocError:5 withMessage:@"error while decompressing the stream"];
              v13 = v19;
              *errorCopy = v19;
              v49 = 1;
              goto LABEL_29;
            }

            v35 = 0x4000 - __b.dst_size;
            v34 = [v47 write:v42[4] maxLength:0x4000 - __b.dst_size];
            if (v34 <= 0)
            {
              location = [MEMORY[0x277CCACA8] stringWithFormat:@"error while writing to %@", location];
              v18 = [AMDError allocError:7 withMessage:location];
              v14 = v18;
              *errorCopy = v18;
              v49 = 1;
              objc_storeStrong(&location, 0);
              goto LABEL_29;
            }

            if (v48 || v36 == COMPRESSION_STATUS_END)
            {
              v38 = 1;
            }
          }
        }

        else
        {
          v32 = [v47 write:v43 maxLength:v40];
          if (v32 <= 0)
          {
            location2 = [MEMORY[0x277CCACA8] stringWithFormat:@"error while writing to %@", location];
            v17 = [AMDError allocError:7 withMessage:location2];
            v15 = v17;
            *errorCopy = v17;
            v49 = 1;
            objc_storeStrong(&location2, 0);
            goto LABEL_29;
          }
        }
      }

      v49 = 0;
    }
  }

  else
  {
    v42[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"could not open output stream to file %@", location];
    v24 = [AMDError allocError:7 withMessage:v42[0]];
    v10 = v24;
    *errorCopy = v24;
    v49 = 1;
    objc_storeStrong(v42, 0);
  }

LABEL_29:
  v16 = v49;
  free(v43);
  if (v47)
  {
    [v47 close];
  }

  if (compressedCopy)
  {
    free(v42[4]);
    compression_stream_destroy(&__b);
  }

  if (HIBYTE(v42[3]))
  {
    objc_exception_rethrow();
  }

  v49 = v16;
  if (!v16)
  {
    v49 = 0;
LABEL_39:
    objc_storeStrong(&v47, 0);
    goto LABEL_40;
  }

  if (v16 != 2)
  {
    goto LABEL_39;
  }

  __break(1u);
}

@end