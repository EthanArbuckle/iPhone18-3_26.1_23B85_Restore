@interface NSData
- (NSString)lib_digestMD5;
- (NSString)lib_shortDigestMD5;
- (id)lib_gzippedData;
- (void)lib_enumerateSubdataWithOffset:(unint64_t)a3 length:(unint64_t)a4 usingBlock:(id)a5;
@end

@implementation NSData

- (NSString)lib_digestMD5
{
  CC_MD5([(NSData *)self bytes], [(NSData *)self length], md);
  v2 = [NSMutableString stringWithCapacity:32];
  for (i = 0; i != 16; ++i)
  {
    [v2 appendFormat:@"%02x", md[i]];
  }

  v4 = [v2 copy];

  return v4;
}

- (NSString)lib_shortDigestMD5
{
  v2 = [(NSData *)self lib_digestMD5];
  if ([v2 length] <= 8)
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 substringToIndex:8];
  }

  v4 = v3;

  return v4;
}

- (void)lib_enumerateSubdataWithOffset:(unint64_t)a3 length:(unint64_t)a4 usingBlock:(id)a5
{
  v8 = a5;
  v14 = 0;
  if ([(NSData *)self length]> a3)
  {
    v9 = -a3;
    do
    {
      v10 = [(NSData *)self length]+ v9;
      v11 = objc_autoreleasePoolPush();
      if (v10 >= a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = v10;
      }

      v13 = [(NSData *)self subdataWithRange:a3, v12];
      v8[2](v8, v13, v10 < a4, &v14);

      objc_autoreleasePoolPop(v11);
      if (v14 == 1)
      {
        break;
      }

      a3 += a4;
      v9 -= a4;
    }

    while (a3 < [(NSData *)self length]);
  }
}

- (id)lib_gzippedData
{
  v3 = [(NSData *)self bytes];
  v4 = [(NSData *)self length];
  v5 = 0;
  if (v3)
  {
    v6 = v4;
    if (v4)
    {
      v7 = [[NSMutableData alloc] initWithLength:v4];
      memset(&v11.avail_in, 0, 104);
      v11.avail_in = v6;
      v11.avail_out = v6;
      v11.next_out = [v7 mutableBytes];
      if (v7 && !deflateInit2_(&v11, -1, 8, 31, 8, 0, "1.2.12", 112) && (v8 = deflate(&v11, 4), v9 = deflateEnd(&v11), v8 == 1))
      {
        v5 = 0;
        if (!v9 && v6 == v11.total_in)
        {
          [v7 setLength:v11.total_out];
          v5 = v7;
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

@end