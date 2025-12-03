@interface NSData
- (id)hexString;
- (id)inflate;
- (int)getWindowSize;
@end

@implementation NSData

- (int)getWindowSize
{
  bytes = [(NSData *)self bytes];
  if ([(NSData *)self length]>= 3 && *bytes == 31 && bytes[1] == 139)
  {
    return 31;
  }

  else
  {
    return 47;
  }
}

- (id)inflate
{
  memset(&v10.avail_in, 0, 104);
  getWindowSize = [(NSData *)self getWindowSize];
  v10.avail_in = [(NSData *)self length];
  v4 = inflateInit2_(&v10, getWindowSize, "1.2.12", 112);
  v5 = 0;
  if (!v4)
  {
    v6 = [NSMutableData dataWithLength:1024];
    v7 = 0;
    while (1)
    {
      v10.next_out = &v7[[v6 mutableBytes]];
      v10.avail_out = [v6 length] - v7;
      v8 = inflate(&v10, 0);
      if (v8)
      {
        break;
      }

      v7 = [v6 length];
      [v6 setLength:{objc_msgSend(v6, "length") + (objc_msgSend(v6, "length") >> 1)}];
    }

    if (v8 == 1)
    {
      [v6 setLength:v10.total_out];
      inflateEnd(&v10);
      v5 = v6;
    }

    else
    {
      inflateEnd(&v10);
      v5 = 0;
    }
  }

  return v5;
}

- (id)hexString
{
  v3 = [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  bytes = [(NSData *)self bytes];
  if ([(NSData *)self length])
  {
    v5 = 0;
    do
    {
      [v3 appendFormat:@"%02lX", bytes[v5++]];
    }

    while (v5 < [(NSData *)self length]);
  }

  return v3;
}

@end