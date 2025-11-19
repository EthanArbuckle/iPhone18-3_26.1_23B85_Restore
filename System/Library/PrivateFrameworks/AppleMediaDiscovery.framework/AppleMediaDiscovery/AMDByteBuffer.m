@interface AMDByteBuffer
- (AMDByteBuffer)initWithInputStream:(id)a3 withFileSize:(unint64_t)a4;
- (BOOL)hasRemaining;
- (id)getDataOfLength:(int)a3 error:(id *)a4;
- (int)getIntWithError:(id *)a3;
- (int64_t)getLongWithError:(id *)a3;
- (signed)getShortWithError:(id *)a3;
- (unsigned)getByteWithError:(id *)a3;
- (void)copyDataOfLength:(unint64_t)a3 toFile:(id)a4 isCompressed:(BOOL)a5 error:(id *)a6;
@end

@implementation AMDByteBuffer

- (AMDByteBuffer)initWithInputStream:(id)a3 withFileSize:(unint64_t)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AMDByteBuffer;
  v11 = [(AMDByteBuffer *)&v8 init];
  objc_storeStrong(&v11, v11);
  [(AMDByteBuffer *)v11 setInputStream:location[0]];
  [(AMDByteBuffer *)v11 setReadPosition:0];
  [(AMDByteBuffer *)v11 setFileSize:v9];
  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (BOOL)hasRemaining
{
  v4 = [(AMDByteBuffer *)self inputStream];
  v5 = 0;
  if ([(NSInputStream *)v4 hasBytesAvailable])
  {
    v3 = [(AMDByteBuffer *)self readPosition];
    v5 = v3 < [(AMDByteBuffer *)self fileSize];
  }

  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (unsigned)getByteWithError:(id *)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v10 = [(AMDByteBuffer *)self readPosition]+ 1;
  if (v10 <= [(AMDByteBuffer *)v14 fileSize])
  {
    v7 = [(AMDByteBuffer *)v14 inputStream];
    v8 = [(NSInputStream *)v7 read:&v11 maxLength:1];
    MEMORY[0x277D82BD8](v7);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)v14 setReadPosition:[(AMDByteBuffer *)v14 readPosition]+ 1];
      return v11;
    }

    else
    {
      v6 = [AMDError allocError:6 withMessage:@"insufficient data to read byte"];
      v4 = v6;
      *v12 = v6;
      return 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read byte"];
    v3 = v9;
    *v12 = v9;
    return 0;
  }
}

- (signed)getShortWithError:(id *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v10 = [(AMDByteBuffer *)self readPosition]+ 2;
  if (v10 <= [(AMDByteBuffer *)v17 fileSize])
  {
    v7 = [(AMDByteBuffer *)v17 inputStream];
    v8 = [(NSInputStream *)v7 read:v14 maxLength:2];
    MEMORY[0x277D82BD8](v7);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)v17 setReadPosition:[(AMDByteBuffer *)v17 readPosition]+ 2];
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
      *v15 = v6;
      return 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read short"];
    v3 = v9;
    *v15 = v9;
    return 0;
  }
}

- (int)getIntWithError:(id *)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v10 = [(AMDByteBuffer *)self readPosition]+ 4;
  if (v10 <= [(AMDByteBuffer *)v17 fileSize])
  {
    v7 = [(AMDByteBuffer *)v17 inputStream];
    v8 = [(NSInputStream *)v7 read:v14 maxLength:4];
    MEMORY[0x277D82BD8](v7);
    if (v8 > 0)
    {
      [(AMDByteBuffer *)v17 setReadPosition:[(AMDByteBuffer *)v17 readPosition]+ 4];
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
      *v15 = v6;
      return 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read int"];
    v3 = v9;
    *v15 = v9;
    return 0;
  }
}

- (int64_t)getLongWithError:(id *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v10 = [(AMDByteBuffer *)self readPosition]+ 8;
  if (v10 <= [(AMDByteBuffer *)self fileSize])
  {
    v7 = [(AMDByteBuffer *)self inputStream];
    v8 = [(NSInputStream *)v7 read:v17 maxLength:8];
    MEMORY[0x277D82BD8](v7);
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
      *a3 = v6;
      v16 = 0;
    }
  }

  else
  {
    v9 = [AMDError allocError:6 withMessage:@"insufficient data to read long"];
    v3 = v9;
    *a3 = v9;
    v16 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v16;
}

- (id)getDataOfLength:(int)a3 error:(id *)a4
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v12 = [(AMDByteBuffer *)self readPosition]+ a3;
  if (v12 <= [(AMDByteBuffer *)v20 fileSize])
  {
    v15 = malloc_type_malloc(v18, 0x319C9EC8uLL);
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:v18];
    v9 = [(AMDByteBuffer *)v20 inputStream];
    v10 = [(NSInputStream *)v9 read:v15 maxLength:v18];
    MEMORY[0x277D82BD8](v9);
    v13[1] = v10;
    if (v10 > 0)
    {
      [(AMDByteBuffer *)v20 setReadPosition:[(AMDByteBuffer *)v20 readPosition]+ v18];
      v21 = MEMORY[0x277D82BE0](v14);
    }

    else
    {
      v13[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"insufficient data to read %d bytes", v18];
      v8 = [AMDError allocError:6 withMessage:v13[0]];
      v5 = v8;
      *v17 = v8;
      v21 = 0;
      objc_storeStrong(v13, 0);
    }

    objc_storeStrong(&v14, 0);
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"insufficient data to read %d bytes", v18];
    v11 = [AMDError allocError:6 withMessage:v16];
    v4 = v11;
    *v17 = v11;
    v21 = 0;
    objc_storeStrong(&v16, 0);
  }

  v6 = v21;

  return v6;
}

- (void)copyDataOfLength:(unint64_t)a3 toFile:(id)a4 isCompressed:(BOOL)a5 error:(id *)a6
{
  v56 = self;
  v55 = a2;
  v54 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v52 = a5;
  v51 = a6;
  v6 = [(AMDByteBuffer *)v56 readPosition];
  v30 = v6 + v54;
  if (v30 > [(AMDByteBuffer *)v56 fileSize])
  {
    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"insufficient data to read %lu bytes", v54];
    v27 = [AMDError allocError:6 withMessage:v50];
    v7 = v27;
    *v51 = v27;
    v49 = 1;
    objc_storeStrong(&v50, 0);
LABEL_40:
    objc_storeStrong(&location, 0);
    return;
  }

  v48 = v54;
  v47 = 0;
  memset(&__b, 0, sizeof(__b));
  v45 = 4096;
  v44 = 0x4000;
  v43 = malloc_type_malloc(0x1000uLL, 0xC99CB1B1uLL);
  memset(&v42[3] + 7, 0, 9);
  v26 = MEMORY[0x277CBEB78];
  v25 = [location path];
  v8 = [v26 outputStreamToFileAtPath:? append:?];
  v9 = v47;
  v47 = v8;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v25);
  if (v47)
  {
    [v47 open];
    if (!v52)
    {
      goto LABEL_9;
    }

    if (compression_stream_init(&__b, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB))
    {
      v23 = [AMDError allocError:4 withMessage:@"could not initialize the compression stream"];
      v11 = v23;
      *v51 = v23;
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

        v21 = [(AMDByteBuffer *)v56 inputStream];
        v22 = [(NSInputStream *)v21 read:v43 maxLength:v41];
        MEMORY[0x277D82BD8](v21);
        v40 = v22;
        if (v22 <= 0)
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"error while reading from stream, remaining %lu", v48];
          v20 = [AMDError allocError:8 withMessage:v39];
          v12 = v20;
          *v51 = v20;
          v49 = 1;
          objc_storeStrong(&v39, 0);
          goto LABEL_29;
        }

        v48 -= v40;
        [(AMDByteBuffer *)v56 setReadPosition:[(AMDByteBuffer *)v56 readPosition]+ v40];
        if (v52)
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
              *v51 = v19;
              v49 = 1;
              goto LABEL_29;
            }

            v35 = 0x4000 - __b.dst_size;
            v34 = [v47 write:v42[4] maxLength:0x4000 - __b.dst_size];
            if (v34 <= 0)
            {
              v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"error while writing to %@", location];
              v18 = [AMDError allocError:7 withMessage:v33];
              v14 = v18;
              *v51 = v18;
              v49 = 1;
              objc_storeStrong(&v33, 0);
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
            v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"error while writing to %@", location];
            v17 = [AMDError allocError:7 withMessage:v31];
            v15 = v17;
            *v51 = v17;
            v49 = 1;
            objc_storeStrong(&v31, 0);
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
    *v51 = v24;
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

  if (v52)
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