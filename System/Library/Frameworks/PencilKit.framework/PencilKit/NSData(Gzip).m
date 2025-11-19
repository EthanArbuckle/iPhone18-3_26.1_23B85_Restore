@interface NSData(Gzip)
- (id)PK_gzipDeflate;
- (id)PK_gzipInflate;
@end

@implementation NSData(Gzip)

- (id)PK_gzipInflate
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a1 length])
  {
    v11 = a1;
    goto LABEL_18;
  }

  v2 = [a1 length];
  v3 = [a1 length];
  v4 = [MEMORY[0x1E695DF88] dataWithLength:v2 + (v3 >> 1)];
  memset(&strm.avail_in, 0, 104);
  strm.next_in = [a1 bytes];
  strm.avail_in = [a1 length];
  if (inflateInit2_(&strm, 47, "1.2.12", 112))
  {
    goto LABEL_16;
  }

  v5 = v3 >> 1;
  do
  {
    total_out = strm.total_out;
    if (total_out >= [v4 length])
    {
      [v4 increaseLengthBy:v5];
    }

    v7 = [v4 mutableBytes];
    strm.next_out = (v7 + strm.total_out);
    v8 = [v4 length];
    strm.avail_out = v8 - LODWORD(strm.total_out);
    v9 = inflate(&strm, 2);
  }

  while (!v9);
  v10 = v9;
  if (v9 != 1)
  {
    NSLog(&cfstr_ErrorInflateFa.isa, v9);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v15 = v10;
      _os_log_error_impl(&dword_1C7CCA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "inflate failed returned %d", buf, 8u);
    }

    if (!inflateEnd(&strm))
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (inflateEnd(&strm))
  {
LABEL_14:
    NSLog(&cfstr_ErrorInflateen.isa);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "inflateEnd failed", buf, 2u);
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  [v4 setLength:strm.total_out];
  v11 = [MEMORY[0x1E695DEF0] dataWithData:v4];
LABEL_17:

LABEL_18:

  return v11;
}

- (id)PK_gzipDeflate
{
  if ([a1 length])
  {
    memset(&v8.total_out, 0, 72);
    v8.avail_in = [a1 length];
    v2 = 0;
    if (!deflateInit2_(&v8, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v3 = [MEMORY[0x1E695DF88] dataWithLength:0x4000];
      do
      {
        total_out = v8.total_out;
        if (total_out >= [v3 length])
        {
          [v3 increaseLengthBy:0x4000];
        }

        v5 = [v3 mutableBytes];
        v8.next_out = (v5 + v8.total_out);
        v6 = [v3 length];
        v8.avail_out = v6 - LODWORD(v8.total_out);
        deflate(&v8, 4);
      }

      while (!v8.avail_out);
      deflateEnd(&v8);
      [v3 setLength:v8.total_out];
      v2 = [MEMORY[0x1E695DEF0] dataWithData:v3];
    }
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end