@interface NSString
- (NSData)sk_sha1Hash;
- (NSNumber)lib_numberValue;
- (id)lib_accountDSIDValue;
- (id)lib_digestMD5;
- (id)lib_stringByAppendingPathComponents:(id)a3;
- (id)lib_stringByCopyingUTF8StringWithLength:(unint64_t)a3;
- (id)lib_stringByLimitingToLength:(unint64_t)a3 addElipsis:(BOOL)a4;
- (id)lib_stringSantiziedAndTruncatedToLength:(unint64_t)a3;
- (id)lib_volumePath;
- (unint64_t)tcr_unsignedLongLong;
@end

@implementation NSString

- (unint64_t)tcr_unsignedLongLong
{
  v4 = 0;
  v2 = [[NSScanner alloc] initWithString:self];
  [v2 scanUnsignedLongLong:&v4];

  return v4;
}

- (NSNumber)lib_numberValue
{
  v3 = objc_alloc_init(NSNumberFormatter);
  [v3 setNumberStyle:1];
  v4 = [v3 numberFromString:self];

  return v4;
}

- (id)lib_accountDSIDValue
{
  v2 = strtoull([(NSString *)self UTF8String], 0, 10);

  return [NSNumber numberWithUnsignedLongLong:v2];
}

- (id)lib_digestMD5
{
  v2 = [(NSString *)self dataUsingEncoding:4];
  v3 = [v2 lib_digestMD5];

  return v3;
}

- (id)lib_stringByAppendingPathComponents:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = objc_autoreleasePoolPush();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      v12 = v5;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5 = [(NSString *)v12 stringByAppendingPathComponent:*(*(&v14 + 1) + 8 * v11), v14];

        v11 = v11 + 1;
        v12 = v5;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);

  return v5;
}

- (id)lib_stringByCopyingUTF8StringWithLength:(unint64_t)a3
{
  v5 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
  if (v5)
  {
    v6 = v5;
    v9 = 0;
    if ([(NSString *)self getBytes:v5 maxLength:a3 usedLength:&v9 encoding:4 options:0 range:0 remainingRange:[(NSString *)self length], 0])
    {
      v6[v9] = 0;
      v7 = [[NSString alloc] initWithUTF8String:v6];
    }

    else
    {
      v7 = &stru_10039AA00;
    }

    free(v6);
  }

  else
  {
    v7 = &stru_10039AA00;
  }

  return v7;
}

- (id)lib_stringByLimitingToLength:(unint64_t)a3 addElipsis:(BOOL)a4
{
  v4 = a4;
  if ([(NSString *)self length]<= a3)
  {
    v9 = self;
  }

  else
  {
    if (v4)
    {
      v7 = [(NSString *)self substringToIndex:a3];
      v8 = [NSString stringWithFormat:@"%@...", v7];

      goto LABEL_7;
    }

    v9 = [(NSString *)self substringToIndex:a3];
  }

  v8 = v9;
LABEL_7:

  return v8;
}

- (id)lib_stringSantiziedAndTruncatedToLength:(unint64_t)a3
{
  v5 = +[NSMutableCharacterSet alphanumericCharacterSet];
  v6 = [NSCharacterSet characterSetWithCharactersInString:@".()-"];
  [v5 formUnionWithCharacterSet:v6];

  v7 = [v5 invertedSet];
  v8 = [(NSString *)self componentsSeparatedByCharactersInSet:v7];
  v9 = [v8 componentsJoinedByString:&stru_10039AA00];

  v10 = [v9 lib_stringByLimitingToLength:a3 addElipsis:1];

  return v10;
}

- (id)lib_volumePath
{
  if ([(NSString *)self isAbsolutePath])
  {
    v3 = +[NSFileManager defaultManager];
    v4 = self;
    if (![(NSString *)v4 isEqualToString:@"/"])
    {
      while (([v3 fileExistsAtPath:v4] & 1) == 0)
      {
        v5 = [(NSString *)v4 stringByDeletingLastPathComponent];

        v4 = v5;
        if ([(NSString *)v5 isEqualToString:@"/"])
        {
          goto LABEL_7;
        }
      }
    }

    v5 = v4;
LABEL_7:
    bzero(&v8, 0x878uLL);
    if (statfs([(NSString *)v5 fileSystemRepresentation], &v8))
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 stringWithFileSystemRepresentation:v8.f_mntonname length:strlen(v8.f_mntonname)];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)sk_sha1Hash
{
  v2 = self;
  v3 = sub_100128AA0();

  return v3;
}

@end