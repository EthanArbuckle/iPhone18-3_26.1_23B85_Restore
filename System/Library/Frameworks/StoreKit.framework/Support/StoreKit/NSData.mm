@interface NSData
- (NSString)lib_digestMD5;
- (NSString)lib_shortDigestMD5;
- (id)lib_gzippedData;
- (void)lib_enumerateSubdataWithOffset:(unint64_t)offset length:(unint64_t)length usingBlock:(id)block;
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
  lib_digestMD5 = [(NSData *)self lib_digestMD5];
  if ([lib_digestMD5 length] <= 8)
  {
    v3 = lib_digestMD5;
  }

  else
  {
    v3 = [lib_digestMD5 substringToIndex:8];
  }

  v4 = v3;

  return v4;
}

- (void)lib_enumerateSubdataWithOffset:(unint64_t)offset length:(unint64_t)length usingBlock:(id)block
{
  blockCopy = block;
  v14 = 0;
  if ([(NSData *)self length]> offset)
  {
    v9 = -offset;
    do
    {
      v10 = [(NSData *)self length]+ v9;
      v11 = objc_autoreleasePoolPush();
      if (v10 >= length)
      {
        lengthCopy = length;
      }

      else
      {
        lengthCopy = v10;
      }

      lengthCopy = [(NSData *)self subdataWithRange:offset, lengthCopy];
      blockCopy[2](blockCopy, lengthCopy, v10 < length, &v14);

      objc_autoreleasePoolPop(v11);
      if (v14 == 1)
      {
        break;
      }

      offset += length;
      v9 -= length;
    }

    while (offset < [(NSData *)self length]);
  }
}

- (id)lib_gzippedData
{
  bytes = [(NSData *)self bytes];
  v4 = [(NSData *)self length];
  v5 = 0;
  if (bytes)
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